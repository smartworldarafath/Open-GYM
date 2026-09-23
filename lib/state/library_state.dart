part of 'fit_state.dart';

mixin LibraryState on FitCore {
  String exSearch = '';
  String? exMuscleFilter;
  String? exDifficultyFilter;
  String? exEquipmentFilter;
  String? activeExerciseId;
  int _customSeq = 0;
  List<Exercise> get allExercises => [...kExercises, ...customExercises];

  Exercise? exerciseById(String id) {
    for (final e in allExercises) {
      if (e.id == id) return e;
    }
    return null;
  }

  void openExercise(String id) {
    activeExerciseId = id;
    pushRoute('exercise-detail');
  }

  void closeExerciseDetail() => popRoute(fallback: 'exercises');

  void toggleFavorite(String id) {
    favorites[id] = !(favorites[id] ?? false);
    _persist();
    notifyListeners();
  }

  void setExSearch(String v) {
    exSearch = v;
    notifyListeners();
  }

  void clearExFilters() {
    exSearch = '';
    exMuscleFilter = null;
    exDifficultyFilter = null;
    exEquipmentFilter = null;
    exFavouritesOnly = false;
    notifyListeners();
  }

  void setMuscleFilter(String id) {
    exMuscleFilter = exMuscleFilter == id ? null : id;
    notifyListeners();
  }

  void setDifficultyFilter(String d) {
    exDifficultyFilter = exDifficultyFilter == d ? null : d;
    notifyListeners();
  }

  void setEquipmentFilter(String e) {
    exEquipmentFilter = exEquipmentFilter == e ? null : e;
    notifyListeners();
  }

  bool exFavouritesOnly = false;

  void toggleFavouritesFilter() {
    exFavouritesOnly = !exFavouritesOnly;
    notifyListeners();
  }

  int get favouriteCount => favorites.values.where((v) => v).length;

  List<Exercise> get exercisesFiltered => exercisesMatching(exSearch);

  List<Exercise> exercisesMatching(String query) {
    final matchesSearch = exerciseSearch(query);
    final list = allExercises.where((ex) {
      if (exFavouritesOnly && favorites[ex.id] != true) return false;
      if (!matchesSearch(ex)) return false;
      if (exMuscleFilter != null &&
          ex.primary != exMuscleFilter &&
          !ex.secondary.contains(exMuscleFilter)) {
        return false;
      }
      if (exDifficultyFilter != null && ex.difficulty != exDifficultyFilter) return false;
      if (exEquipmentFilter != null && ex.equipment != exEquipmentFilter) return false;
      return true;
    }).toList();
    final muscle = exMuscleFilter;
    if (muscle == null) return _groupedByMuscle(list);
    final primary = list.where((ex) => ex.primary == muscle);
    final secondary = _groupedByMuscle(list.where((ex) => ex.primary != muscle).toList());
    return [...primary, ...secondary];
  }

  List<Exercise> _groupedByMuscle(List<Exercise> list) {
    final order = {for (var i = 0; i < kMuscles.length; i++) kMuscles[i].id: i};
    final seats = [
      for (var i = 0; i < list.length; i++)
        (ex: list[i], muscle: order[list[i].primary] ?? kMuscles.length, seat: i),
    ]..sort((a, b) =>
        a.muscle == b.muscle ? a.seat.compareTo(b.seat) : a.muscle.compareTo(b.muscle));
    return [for (final s in seats) s.ex];
  }

  Exercise get activeExercise =>
      exerciseById(activeExerciseId ?? '') ?? kExercises.first;

  List<String> activeExerciseSteps(Exercise ex) => exerciseSteps(ex);

  List<Exercise> similarExercises(Exercise ex, int n) => allExercises
      .where((e) => e.id != ex.id && e.primary == ex.primary)
      .take(n)
      .toList();

  String addCustomExercise({
    required String name,
    required String primary,
    required String equipment,
    String difficulty = 'Beginner',
    List<String> steps = const [],
    String mode = '',
  }) {
    final id = 'c${DateTime.now().microsecondsSinceEpoch}-${_customSeq++}';
    customExercises.add(Exercise(
      id: id,
      name: name.trim(),
      primary: primary,
      secondary: const [],
      equipment: equipment,
      difficulty: difficulty,
      art: '',
      steps: _cleanSteps(steps),
      mode: kExerciseModeIds.contains(mode) ? mode : '',
    ));
    _persist();
    notifyListeners();
    return id;
  }

  void updateCustomExercise(
    String id, {
    required String name,
    required String primary,
    required String equipment,
    required String difficulty,
    required List<String> steps,
    required String mode,
  }) {
    final i = customExercises.indexWhere((e) => e.id == id);
    if (i < 0 || name.trim().isEmpty) return;
    customExercises[i] = customExercises[i].copyWith(
      name: name.trim(),
      primary: primary,
      equipment: equipment,
      difficulty: difficulty,
      steps: _cleanSteps(steps),
      mode: kExerciseModeIds.contains(mode) ? mode : '',
    );
    modeOverride.remove(id);
    _persist();
    notifyListeners();
  }

  static final _bullet = RegExp(r'^(\d+[.)]|[-•*])\s*');

  static List<String> _cleanSteps(List<String> raw) => [
        for (final s in raw.map((s) => s.trim().replaceFirst(_bullet, '')))
          if (s.isNotEmpty) s,
      ];

  String modeOf(String id) {
    final forced = modeOverride[id];
    if (forced != null) return forced == 'weight' ? '' : forced;
    for (final e in customExercises) {
      if (e.id == id) return e.mode;
    }
    return kExerciseModes[id] ?? '';
  }

  bool isCardio(String id) => modeOf(id) == 'cardio';

  bool isTimed(String id) => modeOf(id) == 'time';

  void setExerciseMode(String id, String mode) {
    final base = customExercises.where((e) => e.id == id).map((e) => e.mode).firstOrNull ??
        kExerciseModes[id] ??
        '';
    final wanted = mode == 'weight' ? '' : mode;
    if (wanted == base) {
      modeOverride.remove(id);
    } else {
      modeOverride[id] = mode.isEmpty ? 'weight' : mode;
    }
    _persist();
    notifyListeners();
  }

  void deleteCustomExercise(String id) {
    clearExerciseMedia(id);
    customExercises.removeWhere((e) => e.id == id);
    modeOverride.remove(id);
    for (final r in routines) {
      r.exerciseIds.remove(id);
    }
    favorites.remove(id);
    _persist();
    notifyListeners();
  }

  String mediaFor(String id) => exerciseMedia[id] ?? '';

  bool hasCustomMedia(String id) => mediaFor(id).isNotEmpty;

  Future<void> attachExerciseMedia(String id, String srcPath) async {
    final base = await MediaStore.importFor(id, srcPath);
    if (base == null) return;
    final old = mediaFor(id);
    if (old.isNotEmpty && old != base) await MediaStore.delete(old);
    exerciseMedia[id] = base;
    _persist();
    notifyListeners();
  }

  void clearExerciseMedia(String id) {
    final old = exerciseMedia.remove(id);
    if (old != null && old.isNotEmpty) MediaStore.delete(old);
    _persist();
    notifyListeners();
  }

  bool isRepsOnly(String id) {
    if (repsOnly.contains(id)) return true;
    if (repsOnlyOff.contains(id)) return false;
    if (exerciseById(id)?.equipment != 'Bodyweight') return false;
    return !_hasLoadedHistory(id);
  }

  bool _hasLoadedHistory(String id) {
    for (final s in sessions) {
      for (final e in s.exercises) {
        if (e.id == id && e.sets.any((st) => st.weight > 0)) return true;
      }
    }
    return false;
  }

  void toggleRepsOnly(String id) {
    if (isRepsOnly(id)) {
      repsOnly.remove(id);
      repsOnlyOff.add(id);
    } else {
      repsOnlyOff.remove(id);
      repsOnly.add(id);
    }
    _persist();
    notifyListeners();
  }

  bool isCustom(String id) => customExercises.any((e) => e.id == id);
}
