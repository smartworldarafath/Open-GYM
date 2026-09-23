import 'package:flutter_test/flutter_test.dart';
import 'package:gymmane/state/fit_state.dart';

void _reset() {
  fit.saveAndExit();
  fit.sessions.clear();
  fit.routines.clear();
}

void main() {
  setUp(_reset);
  tearDown(_reset);

  test('the lock only lives while a workout is on screen', () {
    final id = fit.createRoutine('Pull');
    fit.toggleRoutineExercise(id, 'EIeI8Vf');
    fit.startRoutine(fit.routines.first);
    expect(fit.sessionLocked, isFalse);

    fit.toggleSessionLock();
    expect(fit.sessionLocked, isTrue);

    fit.parkSession();
    expect(fit.sessionLocked, isFalse);
    expect(fit.route, 'home');

    fit.resumeSession();
    fit.toggleSessionLock();
    fit.finishSession();
    expect(fit.sessionLocked, isFalse);

    fit.saveAndExit();
    expect(fit.sessionLocked, isFalse);
  });

  test('finishing the last exercise goes back to the first one left', () async {
    final id = fit.createRoutine('Full');
    for (final e in fit.allExercises.take(3)) {
      fit.toggleRoutineExercise(id, e.id);
    }
    fit.startRoutine(fit.routines.first);
    fit.toggleSessionLock();
    final s = fit.session!;
    for (var j = 0; j < s.exercises[0].sets.length; j++) {
      fit.toggleSet(0, j);
    }
    fit.goToExercise(2);
    for (var j = 0; j < s.exercises[2].sets.length; j++) {
      fit.toggleSet(2, j);
    }
    expect(fit.pendingAfter(2), 1);

    await Future<void>.delayed(WorkoutState.advanceDelay + const Duration(milliseconds: 150));
    expect(s.currentIndex, 1);
  });

  test('the workout clock waits for the start countdown', () {
    final id = fit.createRoutine('Push');
    fit.toggleRoutineExercise(id, 'EIeI8Vf');
    expect(fit.startCountdown, isTrue);

    fit.startRoutine(fit.routines.first);
    expect(fit.countingDown, isTrue);
    expect(fit.sessionElapsed, 0);

    fit.endCountdown();
    expect(fit.countdownUntil, isNull);
    expect(fit.countingDown, isFalse);

    fit.toggleStartCountdown();
    fit.saveAndExit();
    fit.startRoutine(fit.routines.first);
    expect(fit.countdownUntil, isNull);
    fit.toggleStartCountdown();
  });

  test('keep-screen-on is a persisted preference that defaults to on', () {
    expect(fit.keepScreenOn, isTrue);
    fit.toggleKeepScreenOn();
    expect(fit.keepScreenOn, isFalse);
    expect(fit.toJson()['keepAwake'], isFalse);
    fit.toggleKeepScreenOn();
  });
}
