import 'package:flutter_test/flutter_test.dart';
import 'package:gymmane/models/workout.dart';
import 'package:gymmane/services/local_store.dart';
import 'package:gymmane/state/fit_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await Store.instance.init();
    fit.resetAllData();
    fit.setUnits('kg');
  });

  const bench = 'EIeI8Vf';

  LoggedSession logged(DateTime at, List<LoggedSet> sets, {String id = bench}) =>
      LoggedSession(at, 1800, [LoggedExercise(id, 'Barbell Bench Press', 'chest', sets)]);

  group('#138 una semana por columna', () {
    test('cada columna empieza el primer día de la semana y hoy cae en su fila', () {
      for (final start in [DateTime.monday, DateTime.sunday]) {
        fit.setWeekStart(start);
        final cells = fit.heatmapWeeks;
        expect(cells.length % 7, 0);
        expect(fit.heatmapWeekDate(0).weekday, start);
        final today = DateTime.now();
        final i = cells.length - 7 + fit.todayIndex;
        final d = fit.heatmapWeekDate(i);
        expect((d.year, d.month, d.day), (today.year, today.month, today.day));
        expect(cells.skip(i + 1).every((l) => l == -1), isTrue);
      }
    });

    test('un entreno de hoy se pinta en la casilla de hoy', () {
      fit.sessions.add(logged(DateTime.now(), [LoggedSet(8, 60)]));
      final cells = fit.heatmapWeeks;
      expect(cells[cells.length - 7 + fit.todayIndex], greaterThan(0));
    });

    test('los días y meses vienen encendidos y apagarlos se guarda', () {
      expect(fit.heatmapLabels, isTrue);
      fit.toggleHeatmapLabels();
      fit.persistNow();
      fit.loadFromStore();
      expect(fit.heatmapLabels, isFalse);
    });
  });

  group('#127 ideas de FitNotes', () {
    test('el objetivo mide el mejor peso y se guarda con su fecha', () {
      fit.sessions.add(logged(DateTime.now(), [LoggedSet(5, 100), LoggedSet(3, 110)]));
      final due = DateTime.now().add(const Duration(days: 30));
      fit.setExerciseGoal(bench, 140, due);
      expect(fit.goalBest(bench), 110);
      fit.persistNow();
      fit.loadFromStore();
      final g = fit.exerciseGoals[bench]!;
      expect(g.target, 140);
      expect((g.due!.year, g.due!.month, g.due!.day), (due.year, due.month, due.day));
      fit.clearExerciseGoal(bench);
      expect(fit.exerciseGoals, isEmpty);
    });

    test('el objetivo de un ejercicio sin peso va en repeticiones', () {
      fit.sessions.add(logged(DateTime.now(), [LoggedSet(12, 0)], id: 'I4hDWkc'));
      expect(fit.goalKind('I4hDWkc'), PrKind.reps);
      expect(fit.goalBest('I4hDWkc'), 12);
    });

    test('el entreno se copia como texto con sus series y totales', () {
      final s = logged(DateTime(2026, 9, 29, 18), [LoggedSet(8, 60), LoggedSet(6, 70)]);
      final text = fit.workoutText(s);
      expect(text, contains('60 kg × 8'));
      expect(text, contains('70 kg × 6'));
      expect(text, contains('30 min'));
      expect(text.split('\n').last, contains('14'));
    });

    test('el porcentaje del máximo da un peso que se puede cargar', () {
      fit.bumpRmWeight(100 - fit.rmWeight);
      fit.bumpRmReps(1 - fit.rmReps);
      fit.bumpRmPct(72 - fit.rmPct);
      final w = fit.rmAtPct;
      expect((w - 72.6).abs(), lessThan(2.6));
      expect(w % 1.25, closeTo(0, 1e-9));
    });
  });
}
