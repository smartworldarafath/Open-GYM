package com.gymmane.app

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.res.ColorStateList
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.RectF
import android.graphics.Typeface
import android.graphics.drawable.Icon
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.os.SystemClock
import android.view.View
import android.widget.RemoteViews
import androidx.annotation.RequiresApi
import io.flutter.plugin.common.MethodChannel
import java.io.ByteArrayOutputStream

object LiveNotifier {
    private const val ID = 1003
    private const val CHANNEL = "live_workout_v2"
    private const val ACTION = "com.gymmane.app.LIVE_ACTION"
    private const val FLASH_MS = 1600L

    var dart: MethodChannel? = null

    private val main = Handler(Looper.getMainLooper())
    private var app: Context? = null
    private var last: Map<*, *>? = null
    private var font: Typeface? = null
    private var flashId = -1
    private var flashUntil = 0L
    private val tick = Runnable { repost() }

    fun update(ctx: Context, a: Map<*, *>) {
        app = ctx.applicationContext
        val fid = (a["flashId"] as? Number)?.toInt() ?: -1
        if (fid != flashId) {
            if (a["flash"] != null) flashUntil = System.currentTimeMillis() + FLASH_MS
            flashId = fid
        }
        last = a
        repost()
    }

    private fun repost() {
        main.removeCallbacks(tick)
        val ctx = app ?: return
        val a = last ?: return
        val nm = ctx.getSystemService(NotificationManager::class.java) ?: return
        val now = System.currentTimeMillis()

        val name = a["title"] as? String ?: "GymMane"
        val detail = a["detail"] as? String ?: ""
        val restLabel = a["restLabel"] as? String ?: ""
        val next = a["next"] as? String
        val resting = a["resting"] as? Boolean ?: false
        val paused = a["paused"] as? Boolean ?: false
        val restEnd = (a["restEnd"] as? Number)?.toLong() ?: 0L
        val startedAt = (a["startedAt"] as? Number)?.toLong() ?: 0L
        val index = (a["index"] as? Number)?.toInt() ?: 0
        val total = (a["total"] as? Number)?.toInt() ?: 0
        val segments = (a["segments"] as? List<*>)?.mapNotNull { (it as? Number)?.toInt() } ?: emptyList()
        val done = (a["done"] as? List<*>)?.map { it == true } ?: emptyList()
        val progress = (a["progress"] as? Number)?.toInt() ?: 0
        val chip = a["chip"] as? String
        val flash = if (now < flashUntil) a["flash"] as? String else null
        val actions = (a["actions"] as? List<*>)?.mapNotNull { it as? Map<*, *> } ?: emptyList()
        val accent = ctx.getColor(if (paused) R.color.live_pause else R.color.live_accent)
        val green = ctx.getColor(R.color.live_done)
        val left = if (resting) ((restEnd - now + 999) / 1000).coerceAtLeast(0) else 0L
        val frozen = (a["elapsed"] as? Number)?.toLong() ?: 0L

        val open = PendingIntent.getActivity(
            ctx,
            0,
            Intent(ctx, MainActivity::class.java).addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP),
            PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT,
        )
        val b = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            ensureChannel(nm, a)
            Notification.Builder(ctx, CHANNEL)
        } else {
            @Suppress("DEPRECATION")
            Notification.Builder(ctx).setPriority(Notification.PRIORITY_LOW)
        }
        b.setSmallIcon(R.drawable.ic_stat_gymmane)
            .setSubText(if (total > 0) "${index + 1}/$total" else null)
            .setColor(accent)
            .setOngoing(true)
            .setOnlyAlertOnce(true)
            .setCategory(Notification.CATEGORY_WORKOUT)
            .setVisibility(Notification.VISIBILITY_PUBLIC)
            .setContentIntent(open)

        for ((i, act) in actions.withIndex()) {
            val id = act["id"] as? String ?: continue
            val label = act["label"] as? String ?: continue
            val pi = PendingIntent.getBroadcast(
                ctx,
                100 + i,
                Intent(ctx, LiveActionReceiver::class.java).setAction("$ACTION.$id").putExtra("id", id),
                PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT,
            )
            b.addAction(Notification.Action.Builder(Icon.createWithResource(ctx, R.drawable.ic_stat_gymmane), label, pi).build())
        }

        if (Build.VERSION.SDK_INT >= 36) {
            val countdown = resting && !paused
            val elapsed = if (paused || startedAt <= 0) frozen else ((now - startedAt) / 1000).coerceAtLeast(0)
            b.setContentTitle(name)
            b.setContentText(if (countdown && restLabel.isNotEmpty()) "$restLabel · $detail" else detail)
            b.setShowWhen(false)
            val (fill, ink) = when {
                flash != null -> R.color.live_done to R.color.live_on_done
                paused -> R.color.live_pause to R.color.live_on_pause
                countdown -> R.color.live_accent to R.color.live_on_accent
                else -> R.color.live_idle to R.color.live_ink
            }
            b.setLargeIcon(badge(ctx, flash ?: clock(if (countdown) left else elapsed), ctx.getColor(fill), ctx.getColor(ink)))
            val style = Notification.ProgressStyle()
                .setStyledByProgress(true)
                .setProgressTrackerIcon(Icon.createWithResource(ctx, R.drawable.ic_live_tracker))
            val segs = segments.withIndex().filter { it.value > 0 }
            if (segs.isNotEmpty()) {
                style.setProgressSegments(segs.map {
                    val finished = done.getOrElse(it.index) { false } && !paused
                    Notification.ProgressStyle.Segment(it.value).setColor(if (finished) green else accent)
                })
                style.setProgress(progress.coerceIn(0, segs.sumOf { it.value }))
            }
            b.setStyle(style)
            b.extras.putBoolean("android.requestPromotedOngoing", true)
            val shortText = flash ?: if (countdown) clock(left) else chip
            if (shortText != null) b.setShortCriticalText(shortText)
        } else {
            val clockAt = if (resting) restEnd else startedAt
            val shown = if (flash != null) "$flash · $detail" else detail
            b.setContentTitle(name).setContentText(shown)
            b.setStyle(Notification.DecoratedCustomViewStyle())
            b.setCustomContentView(views(ctx, R.layout.live_small, name, shown, null, resting, paused, clockAt, segments, progress, accent))
            b.setCustomBigContentView(views(ctx, R.layout.live_big, name, shown, next, resting, paused, clockAt, segments, progress, accent))
        }

        nm.notify(ID, b.build())

        var wait = Long.MAX_VALUE
        if (Build.VERSION.SDK_INT >= 36 && !paused) {
            if (resting && left > 0) {
                wait = ((restEnd - now) % 1000L).let { if (it <= 0L) 1000L else it } + 15L
            } else if (!resting && startedAt > 0) {
                wait = 1000L - (now - startedAt).mod(1000L) + 15L
            }
        }
        if (flashUntil > now) wait = minOf(wait, flashUntil - now + 15)
        if (wait != Long.MAX_VALUE) main.postDelayed(tick, wait)
    }

    @RequiresApi(Build.VERSION_CODES.O)
    private fun badge(ctx: Context, text: String, fill: Int, ink: Int): Icon {
        val w = 320
        val h = 180
        val bmp = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888)
        val c = Canvas(bmp)
        val p = Paint(Paint.ANTI_ALIAS_FLAG)
        val inset = 8f
        val r = (h - inset * 2) / 2f
        p.color = fill
        c.drawRoundRect(RectF(inset, inset, w - inset, h - inset), r, r, p)
        p.color = ink
        p.typeface = font ?: runCatching { ctx.resources.getFont(R.font.nunito_extrabold) }.getOrNull().also { font = it }
        p.textSize = h * 0.56f
        val digit = (0..9).maxOf { p.measureText(it.toString()) }
        fun width(ch: Char) = if (ch.isDigit()) digit else p.measureText(ch.toString())
        var total = text.sumOf { width(it).toDouble() }.toFloat()
        val room = (w - inset * 2) * 0.8f
        if (total > room) {
            val k = room / total
            p.textSize *= k
            total *= k
        }
        val cell = if (text.any { it.isDigit() }) (0..9).maxOf { p.measureText(it.toString()) } else 0f
        val fm = p.fontMetrics
        val y = h / 2f - (fm.ascent + fm.descent) / 2f
        var x = (w - total) / 2f
        p.textAlign = Paint.Align.CENTER
        for (ch in text) {
            val cw = if (ch.isDigit()) cell else p.measureText(ch.toString())
            c.drawText(ch.toString(), x + cw / 2f, y, p)
            x += cw
        }
        val out = ByteArrayOutputStream()
        bmp.compress(Bitmap.CompressFormat.PNG, 100, out)
        bmp.recycle()
        val bytes = out.toByteArray()
        return Icon.createWithData(bytes, 0, bytes.size)
    }

    private fun clock(seconds: Long): String {
        val m = seconds / 60
        val s = seconds % 60
        return if (m >= 60) "${m / 60}:${(m % 60).toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}"
        else "$m:${s.toString().padStart(2, '0')}"
    }

    private fun views(
        ctx: Context,
        layout: Int,
        title: String,
        detail: String,
        next: String?,
        resting: Boolean,
        paused: Boolean,
        clockAt: Long,
        segments: List<Int>,
        progress: Int,
        accent: Int,
    ): RemoteViews {
        val v = RemoteViews(ctx.packageName, layout)
        v.setTextViewText(R.id.live_title, title)
        v.setTextViewText(R.id.live_detail, detail)
        v.setTextColor(R.id.live_clock, accent)
        if (!paused && clockAt > 0) {
            val base = SystemClock.elapsedRealtime() + (clockAt - System.currentTimeMillis())
            v.setViewVisibility(R.id.live_clock, View.VISIBLE)
            v.setChronometer(R.id.live_clock, base, null, true)
            v.setChronometerCountDown(R.id.live_clock, resting)
        } else {
            v.setViewVisibility(R.id.live_clock, View.GONE)
        }
        if (layout == R.layout.live_big) {
            val max = segments.sum()
            v.setViewVisibility(R.id.live_progress, if (max > 0) View.VISIBLE else View.GONE)
            v.setProgressBar(R.id.live_progress, maxOf(max, 1), progress.coerceIn(0, maxOf(max, 1)), false)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                v.setColorStateList(R.id.live_progress, "setProgressTintList", ColorStateList.valueOf(accent))
            }
            v.setViewVisibility(R.id.live_next, if (next.isNullOrEmpty()) View.GONE else View.VISIBLE)
            v.setTextViewText(R.id.live_next, next ?: "")
        }
        return v
    }

    @RequiresApi(Build.VERSION_CODES.O)
    private fun ensureChannel(nm: NotificationManager, a: Map<*, *>) {
        if (nm.getNotificationChannel(CHANNEL) != null) return
        nm.deleteNotificationChannel("live_workout")
        val ch = NotificationChannel(
            CHANNEL,
            a["channel"] as? String ?: "Workout",
            NotificationManager.IMPORTANCE_DEFAULT,
        ).apply {
            description = a["channelWhy"] as? String
            setSound(null, null)
            enableVibration(false)
            setShowBadge(false)
            lockscreenVisibility = Notification.VISIBILITY_PUBLIC
        }
        nm.createNotificationChannel(ch)
    }

    fun cancel(ctx: Context) {
        main.removeCallbacks(tick)
        last = null
        ctx.getSystemService(NotificationManager::class.java)?.cancel(ID)
    }
}

class LiveActionReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        val id = intent.getStringExtra("id") ?: return
        val dart = LiveNotifier.dart
        if (dart == null) {
            LiveNotifier.cancel(context)
            return
        }
        dart.invokeMethod("action", id)
    }
}
