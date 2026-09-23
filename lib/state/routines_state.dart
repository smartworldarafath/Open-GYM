part of 'fit_state.dart';

const int kDefaultRoutineSets = 3;

mixin RoutinesState on FitCore, LibraryState {
  String? activeRoutineId;
  int _routineSeq = 0;

  void goRoutines() => pushRoute('routines');

  void goAiPlan() => pushRoute('ai-plan');

  void backFromAiPlan() => popRoute(fallback: 'routines');

  void backFromRoutines() => popRoute();

  Routine? _routine(String id) {
    for (final r in routines) {
      if (r.id == id) return r;
    }
    return null;
  }

  Routine? get activeRoutine => activeRoutineId == null ? null : _routine(activeRoutineId!);

  List<Exercise> routineExercises(Routine r) {
    final out = <Exercise>[];
    for (final id in r.exerciseIds) {
      final e = exerciseById(id);
      if (e != null) out.add(e);
    }
    return out;
  }

  Routine? get todayRoutine => routineOn(DateTime.now());

  Routine? routineOn(DateTime day) {
    final id = weeklyPlan[day.weekday];
    return id == null ? null : _routine(id);
  }

  String createRoutine([String name = '']) {
    final id = 'r${DateTime.now().microsecondsSinceEpoch}-${_routineSeq++}';
    routines.add(Routine(id, name.trim(), []));
    refreshAwards();
    _persist();
    notifyListeners();
    return id;
  }

  void renameRoutine(String id, String name) {
    final r = _routine(id);
    if (r == null) return;
    r.name = name.trim();
    _persist();
    notifyListeners();
  }

  List<String> get routineGroups {
    final out = <String>[];
    for (final r in routines) {
      if (r.group.isNotEmpty && !out.contains(r.group)) out.add(r.group);
    }
    return out;
  }

  List<Routine> routinesInGroup(String group) =>
      routines.where((r) => r.group == group).toList();

  void setRoutineGroup(String id, String group) {
    final r = _routine(id);
    if (r == null) return;
    r.group = group.trim();
    _persist();
    notifyListeners();
  }

  void setRoutineColor(String id, int color) {
    final r = _routine(id);
    if (r == null) return;
    r.color = color;
    _persist();
    notifyListeners();
  }

  String duplicateRoutine(String id) {
    final source = _routine(id);
    if (source == null) return '';
    final copy = createRoutine(t.copySuffix(routineTitle(source)));
    final made = _routine(copy)!;
    made.exerciseIds.addAll(source.exerciseIds);
    made.sets.addAll(source.sets);
    made.chained.addAll(source.chained);
    made.plan.addAll({for (final e in source.plan.entries) e.key: [...e.value]});
    made.group = source.group;
    made.color = source.color;
    _persist();
    notifyListeners();
    return copy;
  }

  void deleteRoutine(String id) {
    routines.removeWhere((r) => r.id == id);
    weeklyPlan.removeWhere((_, v) => v == id);
    if (activeRoutineId == id) activeRoutineId = null;
    _persist();
    notifyListeners();
  }

  void toggleRoutineExercise(String routineId, String exId) {
    final r = _routine(routineId);
    if (r == null) return;
    if (r.exerciseIds.remove(exId)) {
      r.sets.remove(exId);
      r.plan.remove(exId);
      r.chained.remove(exId);
    } else {
      r.exerciseIds.add(exId);
    }
    _persist();
    notifyListeners();
  }

  VoidCallback? removeRoutineExercise(String routineId, String exId) {
    final r = _routine(routineId);
    if (r == null) return null;
    final at = r.exerciseIds.indexOf(exId);
    if (at < 0) return null;
    final sets = r.sets[exId];
    final plan = r.plan[exId];
    final chained = r.chained.contains(exId);
    toggleRoutineExercise(routineId, exId);
    return () {
      final back = _routine(routineId);
      if (back == null || back.exerciseIds.contains(exId)) return;
      back.exerciseIds.insert(at.clamp(0, back.exerciseIds.length), exId);
      if (sets != null) back.sets[exId] = sets;
      if (plan != null) back.plan[exId] = plan;
      if (chained) back.chained.add(exId);
      _persist();
      notifyListeners();
    };
  }

  int routineSets(Routine r, String exId) {
    final planned = r.plan[exId];
    if (planned != null && planned.isNotEmpty) {
      final working = planned.where((p) => p.kind != SetKind.warmup).length;
      return working == 0 ? planned.length : working;
    }
    return r.sets[exId] ?? (modeOf(exId) == 'cardio' ? 1 : kDefaultRoutineSets);
  }

  List<PlannedSet> plannedSets(Routine r, String exId) => r.plan[exId] ?? const [];

  void setRoutineSetCount(String routineId, String exId, int n) {
    final r = _routine(routineId);
    if (r == null || !r.exerciseIds.contains(exId)) return;
    r.sets[exId] = n.clamp(1, 12);
    _persist();
    notifyListeners();
  }

  bool hasPlan(Routine r, String exId) => r.plan[exId]?.isNotEmpty ?? false;

  void setPlannedSets(String routineId, String exId, List<PlannedSet> sets) {
    final r = _routine(routineId);
    if (r == null || !r.exerciseIds.contains(exId)) return;
    if (sets.isEmpty) {
      r.plan.remove(exId);
    } else {
      r.plan[exId] = List.unmodifiable(sets.take(20));
      r.sets[exId] = sets.where((p) => p.kind != SetKind.warmup).length.clamp(1, 20);
    }
    _persist();
    notifyListeners();
  }

  bool chainsToNext(Routine r, String exId) {
    final i = r.exerciseIds.indexOf(exId);
    return i >= 0 && i < r.exerciseIds.length - 1 && r.chained.contains(exId);
  }

  void toggleChain(String routineId, String exId) {
    final r = _routine(routineId);
    if (r == null) return;
    if (!r.chained.remove(exId)) r.chained.add(exId);
    _persist();
    notifyListeners();
  }

  void bumpRoutineSets(String routineId, String exId, int delta) {
    final r = _routine(routineId);
    if (r == null || !r.exerciseIds.contains(exId)) return;
    final planned = r.plan[exId];
    if (planned != null && planned.isNotEmpty) {
      final next = [...planned];
      if (delta > 0) {
        for (var i = 0; i < delta && next.length < 20; i++) {
          next.add(next
              .lastWhere((s) => s.kind != SetKind.warmup, orElse: () => const PlannedSet())
              .copyWith(kind: SetKind.normal));
        }
      } else {
        for (var i = 0; i < -delta; i++) {
          final last = next.lastIndexWhere((s) => s.kind != SetKind.warmup);
          if (last < 0 || next.where((s) => s.kind != SetKind.warmup).length <= 1) break;
          next.removeAt(last);
        }
      }
      setPlannedSets(routineId, exId, next);
      return;
    }
    r.sets[exId] = (routineSets(r, exId) + delta).clamp(1, 12);
    _persist();
    notifyListeners();
  }

  bool routineHas(String routineId, String exId) => _routine(routineId)?.exerciseIds.contains(exId) ?? false;

  void reorderRoutineExercise(String routineId, int from, int to) {
    final ids = _routine(routineId)?.exerciseIds;
    if (ids == null || from < 0 || from >= ids.length) return;
    if (to > from) to -= 1;
    ids.insert(to.clamp(0, ids.length), ids.removeAt(from));
    persistNow();
    notifyListeners();
  }

  void assignRoutineToDay(int weekday, String? routineId) {
    if (routineId == null) {
      weeklyPlan.remove(weekday);
    } else {
      weeklyPlan[weekday] = routineId;
    }
    _persist();
    syncTrainReminder();
    notifyListeners();
  }

  void openRoutine(String id) {
    activeRoutineId = id;
    route = 'routine-edit';
    notifyListeners();
  }

  String routineTitle(Routine r) => r.name.isEmpty ? t.newRoutineName : r.name;

  void closeRoutineEdit() {
    route = 'routines';
    notifyListeners();
  }
}
