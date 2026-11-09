package com.opengym.app

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import android.content.res.Configuration
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.RectF
import android.graphics.Typeface
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.os.SystemClock
import android.os.VibrationEffect
import android.os.Vibrator
import android.os.VibratorManager
import android.widget.RemoteViews
import es.antonborri.home_widget.HomeWidgetPlugin
import java.util.Calendar
import java.util.Locale
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt

const val OPEN_EXTRA = "gymmane_open"

fun nutritionIntent(context: Context, code: Int): PendingIntent = PendingIntent.getActivity(
    context,
    code,
    Intent(context, MainActivity::class.java)
        .putExtra(OPEN_EXTRA, "nutrition")
        .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_SINGLE_TOP),
    PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
)

abstract class VesselWidgetProvider(private val prefix: String, private val preview: Int) : DayWidgetProvider() {
    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action == ACTION_ADD) {
            val result = goAsync()
            add(context) { result.finish() }
            return
        }
        super.onReceive(context, intent)
    }

    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
        widgetData: SharedPreferences
    ) {
        val state = State(widgetData)
        val shown = widgetData.getInt("${prefix}_shown", -1)
        val now = current(widgetData)
        if (anims[prefix] != null && state.ready) {
            animate(context, appWidgetIds, state, now, now) {}
        } else if (shown in 0 until now && state.ready) {
            animate(context, appWidgetIds, state, shown, now) {}
        } else {
            draw(context, appWidgetManager, appWidgetIds, state, level(state, now), now)
        }
        widgetData.edit().putInt("${prefix}_shown", now).apply()
        scheduleNewDay(context)
    }

    private inner class State(val data: SharedPreferences) {
        val on = data.getString("nutri_on", "0") == "1"
        val goal = data.getString("${prefix}_goal", null)?.toIntOrNull() ?: 0
        val step = data.getString("${prefix}_step", null)?.toIntOrNull() ?: 0
        val mode = data.getString("${prefix}_mode", null) ?: "g"
        val dec = data.getString("nutri_dec", null) ?: "."
        val frames = data.getString("${prefix}_frames", null)
        val count = data.getString("${prefix}_frames_n", null)?.toIntOrNull() ?: 0
        val geo = data.getString("nutri_geo", null)?.split(',')?.mapNotNull { it.toFloatOrNull() } ?: emptyList()
        val ready = on && frames != null && count > 0 && geo.size >= 9
        val base = decode(data.getString("${prefix}_base", null))
        val baseNight = decode(data.getString("${prefix}_base_night", null)) ?: base
        private val cache = HashMap<Int, Bitmap?>()
        private val small = HashMap<Boolean, Bitmap?>()

        fun frame(i: Int): Bitmap? = cache.getOrPut(i) { decode("$frames$i.png") }

        fun light(night: Boolean): Bitmap? = small.getOrPut(night) {
            (if (night) baseNight else base)?.let {
                Bitmap.createScaledBitmap(it, (it.width * LIGHT).roundToInt(), (it.height * LIGHT).roundToInt(), true)
            }
        }

        fun color(key: String, night: Boolean, fallback: Int): Int {
            val raw = data.getString(if (night) "${key}_night" else key, null) ?: data.getString(key, null)
            return runCatching { Color.parseColor(raw) }.getOrDefault(fallback)
        }
    }

    private fun decode(path: String?): Bitmap? = path?.let { runCatching { BitmapFactory.decodeFile(it) }.getOrNull() }

    private fun current(data: SharedPreferences): Int {
        val today = dayStamp(Calendar.getInstance())
        val saved = if (data.getString("nutri_day", null) == today) {
            data.getString("${prefix}_value", null)?.toIntOrNull() ?: 0
        } else {
            0
        }
        val step = data.getString("${prefix}_step", null)?.toIntOrNull() ?: 0
        val kind = if (prefix == "water") "w" else "s"
        var extra = 0
        for (item in data.getString(PENDING, null).orEmpty().split(';')) {
            val p = item.split(',')
            if (p.size != 3 || p[0] != kind) continue
            val ms = p[1].toLongOrNull() ?: continue
            if (dayStamp(Calendar.getInstance().apply { timeInMillis = ms }) != today) continue
            extra += if (kind == "w") p[2].toIntOrNull() ?: 0 else step
        }
        return saved + extra
    }

    private fun level(state: State, value: Int): Float =
        if (state.goal <= 0) 0f else (value.toFloat() / state.goal).coerceIn(0f, 1f)

    private fun label(state: State, value: Int): String = when (state.mode) {
        "L" -> {
            val tenths = (value / 100.0).roundToInt()
            if (tenths % 10 == 0) "${tenths / 10}" else String.format(Locale.ROOT, "%.1f", tenths / 10.0).replace(".", state.dec)
        }
        "oz" -> "${(value / 29.5735).roundToInt()}"
        else -> "$value"
    }

    private fun compose(context: Context, state: State, night: Boolean, level: Float, value: Int, quick: Boolean = false): Bitmap? {
        val base = (if (quick) state.light(night) else if (night) state.baseNight else state.base) ?: return null
        if (!state.ready) return base
        val out = base.copy(Bitmap.Config.ARGB_8888, true)
        val canvas = Canvas(out)
        val w = out.width.toFloat()
        val h = out.height.toFloat()
        val g = state.geo
        val paint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG)
        state.frame((level * state.count).roundToInt().coerceIn(0, state.count))?.let { frame ->
            val top = g[1] * h
            val height = g[2] * h
            val width = height * frame.width / frame.height
            canvas.drawBitmap(frame, null, RectF(g[0] * w, top, g[0] * w + width, top + height), paint)
        }
        val done = state.goal in 1..value
        val tone = state.color("${prefix}_tone", night, Color.WHITE)
        val doneTone = state.color("nutri_done", night, tone)
        val text = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            typeface = font(context)
            color = if (done) doneTone else state.color("nutri_text", night, Color.WHITE)
            textSize = g[5] * h
        }
        val shown = label(state, value)
        val room = g[6] * w
        val wide = text.measureText(shown)
        if (wide > room) text.textSize *= room / wide
        canvas.drawText(shown, g[3] * w, g[4] * h, text)
        val barX = g[3] * w
        val barY = g[7] * h
        val barH = g[8] * h
        val fill = room * level
        if (fill > 0.5f) {
            val bar = Paint(Paint.ANTI_ALIAS_FLAG).apply { color = if (done) doneTone else tone }
            canvas.drawRoundRect(RectF(barX, barY, barX + max(fill, barH), barY + barH), barH / 2, barH / 2, bar)
        }
        return out
    }

    private fun views(context: Context, state: State, day: Bitmap?, night: Bitmap?): RemoteViews {
        val target = javaClass
        return RemoteViews(context.packageName, R.layout.widget_vessel).apply {
            if (day == null && night == null) {
                setImageViewResource(R.id.widget_image, preview)
                setImageViewResource(R.id.widget_image_night, preview)
            } else {
                setImageViewBitmap(R.id.widget_image, day ?: night)
                setImageViewBitmap(R.id.widget_image_night, night ?: day)
            }
            val open = nutritionIntent(context, prefix.hashCode())
            val add = if (state.ready && state.step > 0) {
                PendingIntent.getBroadcast(
                    context,
                    prefix.hashCode() + 1,
                    Intent(context, target).setAction(ACTION_ADD),
                    PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
                )
            } else {
                open
            }
            setOnClickPendingIntent(R.id.zone_open, open)
            setOnClickPendingIntent(R.id.zone_add, add)
            setOnClickPendingIntent(R.id.zone_add_low, add)
        }
    }

    private fun draw(context: Context, manager: AppWidgetManager, ids: IntArray, state: State, level: Float, value: Int) {
        val day = compose(context, state, false, level, value)
        val night = compose(context, state, true, level, value)
        val views = views(context, state, day, night)
        ids.forEach { manager.updateAppWidget(it, views) }
    }

    private fun drawQuick(context: Context, manager: AppWidgetManager, ids: IntArray, state: State, level: Float, value: Int) {
        val night = context.resources.configuration.uiMode and Configuration.UI_MODE_NIGHT_MASK == Configuration.UI_MODE_NIGHT_YES
        val shown = compose(context, state, night, level, value, quick = true)
        val views = views(context, state, shown, shown)
        ids.forEach { manager.updateAppWidget(it, views) }
    }

    private fun add(context: Context, finish: () -> Unit) {
        val data = HomeWidgetPlugin.getData(context)
        val state = State(data)
        if (!state.ready || state.step <= 0) {
            finish()
            return
        }
        val before = current(data)
        val entry = if (prefix == "water") {
            "w,${System.currentTimeMillis()},${state.step}"
        } else {
            "s,${System.currentTimeMillis()},${data.getString("${prefix}_food", null).orEmpty()}"
        }
        val pending = data.getString(PENDING, null).orEmpty()
        data.edit()
            .putString(PENDING, if (pending.isEmpty()) entry else "$pending;$entry")
            .putInt("${prefix}_shown", before + state.step)
            .commit()
        tick(context)
        val ids = AppWidgetManager.getInstance(context).getAppWidgetIds(ComponentName(context, javaClass))
        animate(context, ids, state, before, before + state.step, finish)
    }

    private fun animate(context: Context, ids: IntArray, state: State, from: Int, to: Int, finish: () -> Unit) {
        val manager = AppWidgetManager.getInstance(context.applicationContext)
        val running = anims[prefix]
        if (running != null) {
            running.retarget(level(state, to), to)
            running.finishes += finish
            running.step = { level, value, last -> paint(context, manager, ids, state, level, value, last) }
            return
        }
        if (abs(level(state, to) - level(state, from)) < 0.0005f && from == to) {
            draw(context, manager, ids, state, level(state, to), to)
            finish()
            return
        }
        val anim = Anim(level(state, from), from, level(state, to), to)
        anim.finishes += finish
        anim.step = { level, value, last -> paint(context, manager, ids, state, level, value, last) }
        anims[prefix] = anim
        fun frame() {
            val done = anim.advance()
            if (!done) {
                main.postDelayed({ frame() }, FRAME_MS)
            } else {
                anims.remove(prefix)
                anim.finishes.forEach { it() }
            }
        }
        frame()
    }

    private fun paint(context: Context, manager: AppWidgetManager, ids: IntArray, state: State, level: Float, value: Int, last: Boolean) {
        if (last) draw(context, manager, ids, state, level, value) else drawQuick(context, manager, ids, state, level, value)
    }

    private class Anim(var fromLevel: Float, var fromValue: Int, var toLevel: Float, var toValue: Int) {
        var start = SystemClock.uptimeMillis()
        var level = fromLevel
        var value = fromValue
        val finishes = mutableListOf<() -> Unit>()
        var step: (Float, Int, Boolean) -> Unit = { _, _, _ -> }

        fun retarget(level: Float, value: Int) {
            fromLevel = this.level
            fromValue = this.value
            toLevel = level
            toValue = value
            start = SystemClock.uptimeMillis()
        }

        fun advance(): Boolean {
            val t = ((SystemClock.uptimeMillis() - start).toFloat() / DURATION).coerceIn(0f, 1f)
            val ease = 1 + 2.2f * (t - 1) * (t - 1) * (t - 1) + 1.2f * (t - 1) * (t - 1)
            level = (fromLevel + (toLevel - fromLevel) * ease).coerceIn(0f, 1f)
            value = if (t >= 1f) toValue else fromValue + ((toValue - fromValue) * min(1f, t * 1.6f)).roundToInt()
            step(level, value, t >= 1f)
            return t >= 1f
        }
    }

    @Suppress("DEPRECATION")
    private fun tick(context: Context) {
        runCatching {
            val vibrator = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                (context.getSystemService(Context.VIBRATOR_MANAGER_SERVICE) as VibratorManager).defaultVibrator
            } else {
                context.getSystemService(Context.VIBRATOR_SERVICE) as Vibrator
            }
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                vibrator.vibrate(VibrationEffect.createPredefined(VibrationEffect.EFFECT_TICK))
            } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                vibrator.vibrate(VibrationEffect.createOneShot(12, 80))
            } else {
                vibrator.vibrate(12)
            }
        }
    }

    companion object {
        private const val ACTION_ADD = "com.gymmane.app.NUTRI_ADD"
        private const val PENDING = "nutri_pending"
        private const val DURATION = 720L
        private const val FRAME_MS = 40L
        private const val LIGHT = 0.6f
        private val anims = HashMap<String, Anim>()
        private val main = Handler(Looper.getMainLooper())
        private var typeface: Typeface? = null

        private fun font(context: Context): Typeface {
            typeface?.let { return it }
            val loaded = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                runCatching { context.resources.getFont(R.font.nunito_extrabold) }.getOrNull()
            } else {
                null
            }
            return (loaded ?: Typeface.create(Typeface.DEFAULT, Typeface.BOLD)).also { typeface = it }
        }
    }
}

class WaterWidgetProvider : VesselWidgetProvider("water", R.drawable.preview_water)

class ProteinWidgetProvider : VesselWidgetProvider("protein", R.drawable.preview_protein)

class KcalWidgetProvider : DayWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
        widgetData: SharedPreferences
    ) {
        val today = dayStamp(Calendar.getInstance())
        val key = if (widgetData.getString("nutri_day", null) == today) "kcal_img" else "kcal_fresh_img"
        appWidgetIds.forEach { widgetId ->
            val views = RemoteViews(context.packageName, R.layout.widget_kcal).apply {
                val day = widgetData.getString(key, null)?.let { BitmapFactory.decodeFile(it) }
                val night = widgetData.getString("${key}_night", null)?.let { BitmapFactory.decodeFile(it) } ?: day
                if (day == null) {
                    setImageViewResource(R.id.widget_image, R.drawable.preview_kcal)
                    setImageViewResource(R.id.widget_image_night, R.drawable.preview_kcal)
                } else {
                    setImageViewBitmap(R.id.widget_image, day)
                    setImageViewBitmap(R.id.widget_image_night, night ?: day)
                }
                val open = nutritionIntent(context, 7301)
                setOnClickPendingIntent(R.id.widget_image, open)
                setOnClickPendingIntent(R.id.widget_image_night, open)
            }
            appWidgetManager.updateAppWidget(widgetId, views)
        }
        scheduleNewDay(context)
    }
}
