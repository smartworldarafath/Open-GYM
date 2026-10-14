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
  });

  String routineIn(String name, String group) {
    final id = fit.createRoutine(name);
    fit.setRoutineGroup(id, group);
    return id;
  }

  test('cambiar el nombre mueve todas las rutinas del grupo', () {
    routineIn('A', '5x5');
    routineIn('B', '5x5');
    routineIn('C', 'PPL');
    fit.renameGroup('5x5', 'Fuerza');
    expect(fit.routineGroups, ['Fuerza', 'PPL']);
    expect(fit.routinesInGroup('Fuerza').map((r) => r.name), ['A', 'B']);
  });

  test('quitar el grupo deja las rutinas sin grupo', () {
    routineIn('A', '5x5');
    routineIn('B', '5x5');
    fit.renameGroup('5x5', '');
    expect(fit.routineGroups, isEmpty);
    expect(fit.routines.length, 2);
  });

  test('borrar el grupo borra sus rutinas, su plan y nada más', () {
    final a = routineIn('A', '5x5');
    routineIn('B', '5x5');
    final c = routineIn('C', 'PPL');
    fit.weeklyPlan[1] = a;
    fit.weeklyPlan[3] = c;
    fit.sessions.add(LoggedSession(DateTime.now(), 600, []));
    fit.deleteGroup('5x5');
    expect(fit.routines.map((r) => r.name), ['C']);
    expect(fit.weeklyPlan[1], isNull);
    expect(fit.weeklyPlan[3], c);
    expect(fit.sessions.length, 1);
  });
}
