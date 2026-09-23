package com.gymmane.app

import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.SharedPreferences
import android.widget.RemoteViews
import java.util.Calendar

class TodayWidgetProvider : DayWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
        widgetData: SharedPreferences
    ) {
        val now = Calendar.getInstance()
        val saved = widgetData.getString("today_stamp", null)
        val key = when {
            saved == null || saved == dayStamp(now) -> "today_img"
            widgetData.getString("today_week", null)?.getOrNull(weekdayIndex(now)) == '1' -> "today_plan_img"
            else -> "today_idle_img"
        }
        val shown = if (widgetData.getString(key, null) == null) "today_img" else key
        appWidgetIds.forEach { widgetId ->
            val views = RemoteViews(context.packageName, R.layout.widget_today).apply {
                bindThemedImage(context, widgetData, shown)
            }
            appWidgetManager.updateAppWidget(widgetId, views)
        }
        scheduleNewDay(context)
    }
}
