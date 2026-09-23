import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:home_widget/home_widget.dart';

import '../state/fit_state.dart';
import '../theme/app_colors.dart';
import '../widgets/home_widget_views.dart';

class HomeWidgetBridge {
  HomeWidgetBridge._();

  static const _pkg = 'com.gymmane.app';
  static const appGroup = 'group.com.gymmane.app';
  static const heatmapKey = 'heatmap_img';
  static const statsKey = 'stats_img';
  static const bodyKey = 'body_img';
  static const todayKey = 'today_img';
  static const todayIdleKey = 'today_idle_img';
  static const todayPlanKey = 'today_plan_img';
  static const weekKey = 'week_img';
  static const weekFreshKey = 'week_fresh_img';
  static const darkKey = 'widget_dark';
  static const themeKey = 'widget_theme';
  static const bodyDays = 7;
  static bool get _ios => !kIsWeb && Platform.isIOS;
  static bool get _supported => !kIsWeb && (Platform.isAndroid || Platform.isIOS);
  static bool _groupReady = false;

  static Future<void> update() async {
    if (!_supported) return;
    try {
      if (_ios && !_groupReady) {
        await HomeWidget.setAppGroupId(appGroup);
        _groupReady = true;
      }
      final pref = fit.themePref;
      final day = pref == 'dark' ? GymColors.dark : GymColors.light;
      final night = pref == 'light' ? GymColors.light : GymColors.dark;
      final framed = !_ios;
      const heatmapSize = Size(320, 150);
      const statsSize = Size(155, 155);
      final bodySize = _ios ? const Size(320, 336) : const Size(320, 220);
      final todaySize = _ios ? const Size(155, 155) : const Size(120, 120);
      const weekSize = Size(320, 150);
      final week = [for (var i = 0; i < 7; i++) fit.isDayDone(i)];
      final levels = fit.heatmapLevelsFor(182);
      final heat = fit.muscleHeatOver(bodyDays);

      final views = <(String, Size, Widget Function(GymColors))>[
        (
          heatmapKey,
          heatmapSize,
          (gc) => HeatmapWidgetView(
                gc: gc,
                levels: levels,
                streak: fit.currentStreak,
                size: heatmapSize,
                framed: framed,
              ),
        ),
        (
          statsKey,
          statsSize,
          (gc) => StatsWidgetView(
                gc: gc,
                streak: fit.currentStreak,
                sessionsThisWeek: fit.sessionsThisWeek,
                goalPct: fit.goalPct,
                size: statsSize,
                framed: framed,
              ),
        ),
        (
          bodyKey,
          bodySize,
          (gc) => BodyWidgetView(
                gc: gc,
                intensity: heat,
                days: bodyDays,
                size: bodySize,
                framed: framed,
              ),
        ),
        (
          todayKey,
          todaySize,
          (gc) => TodayWidgetView(
                gc: gc,
                done: fit.isDayDone(fit.todayIndex),
                planned: fit.todayRoutine != null,
                streak: fit.currentStreak,
                size: todaySize,
                framed: framed,
              ),
        ),
        for (final planned in [false, true])
          (
            planned ? todayPlanKey : todayIdleKey,
            todaySize,
            (gc) => TodayWidgetView(
                  gc: gc,
                  done: false,
                  planned: planned,
                  streak: 0,
                  size: todaySize,
                  framed: framed,
                ),
          ),
        (
          weekKey,
          weekSize,
          (gc) => WeekWidgetView(gc: gc, done: week, goal: fit.weeklyTarget, size: weekSize, framed: framed),
        ),
        (
          weekFreshKey,
          weekSize,
          (gc) => WeekWidgetView(
                gc: gc,
                done: List.filled(7, false),
                goal: fit.weeklyTarget,
                size: weekSize,
                framed: framed,
              ),
        ),
      ];
      for (final (key, size, build) in views) {
        await _render(build(day), key, size);
        if (!identical(day, night)) {
          await _render(build(night), '${key}_night', size);
        } else {
          final path = await HomeWidget.getWidgetData<String>(key);
          if (path != null) await HomeWidget.saveWidgetData<String>('${key}_night', path);
        }
      }
      final now = DateTime.now();
      await HomeWidget.saveWidgetData<String>('today_stamp', _stamp(now));
      final plan = [
        for (var d = 1; d <= 7; d++) fit.routineOn(now.add(Duration(days: d - now.weekday))) != null ? '1' : '0',
      ];
      await HomeWidget.saveWidgetData<String>('today_week', plan.join());
      await HomeWidget.saveWidgetData<String>('week_start', _stamp(fit.weekStartDate));
      await HomeWidget.saveWidgetData<String>('week_done', [for (final d in week) d ? '1' : '0'].join());
      await HomeWidget.saveWidgetData<String>(
          'week_geo', WeekWidgetView.geometry(weekSize, framed: framed).map((v) => v.toStringAsFixed(5)).join(','));
      await HomeWidget.saveWidgetData<String>('week_ring', _hex(day.ember));
      await HomeWidget.saveWidgetData<String>('week_ring_night', _hex(night.ember));
      if (_ios) {
        await HomeWidget.saveWidgetData<bool>(darkKey, fit.dark);
        await HomeWidget.saveWidgetData<String>(themeKey, pref);
      }

      await _reload('HeatmapWidgetProvider', 'HeatmapWidget');
      await _reload('BodyWidgetProvider', 'BodyWidget');
      await _reload('TodayWidgetProvider', 'TodayWidget');
      await _reload('StatsWidgetProvider', 'StatsWidget');
      await _reload('WeekWidgetProvider', 'WeekWidget');
    } catch (e) {
      debugPrint('HomeWidgetBridge.update falló: $e');
    }
  }

  static String _stamp(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

  static String _hex(Color c) => '#${c.toARGB32().toRadixString(16).padLeft(8, '0').toUpperCase()}';

  static Future<void> _render(Widget view, String key, Size size) =>
      HomeWidget.renderFlutterWidget(view, key: key, logicalSize: size, pixelRatio: 3);

  static Future<void> _reload(String android, String ios) => HomeWidget.updateWidget(
        qualifiedAndroidName: '$_pkg.$android',
        iOSName: ios,
      );
}
