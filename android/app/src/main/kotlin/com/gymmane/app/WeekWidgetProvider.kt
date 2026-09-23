package com.gymmane.app

import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.SharedPreferences
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.widget.RemoteViews
import java.util.Calendar

class WeekWidgetProvider : DayWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
        widgetData: SharedPreferences
    ) {
        val now = Calendar.getInstance()
        val monday = (now.clone() as Calendar).apply { add(Calendar.DAY_OF_YEAR, -weekdayIndex(now)) }
        val saved = widgetData.getString("week_start", null)
        val fresh = saved != null && saved != dayStamp(monday)
        val key = if (fresh && widgetData.getString("week_fresh_img", null) != null) "week_fresh_img" else "week_img"
        val today = weekdayIndex(now)
        val doneToday = !fresh && widgetData.getString("week_done", null)?.getOrNull(today) == '1'
        val geo = widgetData.getString("week_geo", null)?.split(',')?.mapNotNull { it.toFloatOrNull() }

        fun image(suffix: String, ring: String?): Bitmap? {
            val base = widgetData.getString("$key$suffix", null)?.let { BitmapFactory.decodeFile(it) } ?: return null
            if (doneToday || geo == null || geo.size < 5) return base
            val out = base.copy(Bitmap.Config.ARGB_8888, true)
            val w = out.width.toFloat()
            val paint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
                style = Paint.Style.STROKE
                strokeWidth = geo[4] * w
                color = runCatching { Color.parseColor(ring) }.getOrDefault(Color.WHITE)
            }
            Canvas(out).drawCircle((geo[0] + geo[1] * today) * w, geo[2] * out.height, geo[3] * w, paint)
            return out
        }

        val day = image("", widgetData.getString("week_ring", null))
        val night = image("_night", widgetData.getString("week_ring_night", null))
        appWidgetIds.forEach { widgetId ->
            val views = RemoteViews(context.packageName, R.layout.widget_week).apply {
                bindThemedBitmaps(context, day, night)
            }
            appWidgetManager.updateAppWidget(widgetId, views)
        }
        scheduleNewDay(context)
    }
}
