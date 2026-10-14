import 'package:flutter_test/flutter_test.dart';
import 'package:gymmane/services/local_store.dart';
import 'package:gymmane/state/fit_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('un número roto no impide guardar lo demás', () async {
    SharedPreferences.setMockInitialValues({});
    await Store.instance.init();
    fit.resetAllData();
    fit.profile.weightKg = double.nan;
    final id = fit.addCustomExercise(name: 'Mi press', primary: 'chest', equipment: 'Dumbbell');
    await Store.instance.save(fit.toJson());

    fit.customExercises.clear();
    fit.loadFromStore();
    expect(fit.customExercises.map((e) => e.id), [id]);
  });
}
