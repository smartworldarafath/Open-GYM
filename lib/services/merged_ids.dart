import '../catalog/merged_exercises.dart';

Map<String, dynamic> withMergedExercises(Map<String, dynamic> data) =>
    kMergedExercises.isEmpty ? data : _remap(data) as Map<String, dynamic>;

Object? _remap(Object? v) {
  if (v is String) return kMergedExercises[v] ?? v;
  if (v is List) {
    final out = <dynamic>[];
    for (final x in v) {
      final y = _remap(x);
      if (x is String && y != x && (v.contains(y) || out.contains(y))) continue;
      out.add(y);
    }
    return out;
  }
  if (v is Map) {
    final out = <String, dynamic>{};
    for (final e in v.entries) {
      final key = e.key.toString();
      final moved = kMergedExercises[key];
      if (moved != null && (v.containsKey(moved) || out.containsKey(moved))) continue;
      out[moved ?? key] = _remap(e.value);
    }
    return out;
  }
  return v;
}
