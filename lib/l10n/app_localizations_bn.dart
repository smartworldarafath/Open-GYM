// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali (n).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get languageName => 'à¦¬à¦¾à¦‚à¦²à¦¾';

  @override
  String vsLastMonthLabel(String pct) {
    return 'à¦—à¦¤ à¦®à¦¾à¦¸à§‡à¦° à¦¤à§à¦²à¦¨à¦¾à§Ÿ $pct%';
  }

  @override
  String levelStreakLabel(int level, String streak) {
    return 'à¦²à§‡à¦­à§‡à¦² $level Â· $streak';
  }

  @override
  String get save => 'à¦¸à¦‚à¦°à¦•à§à¦·à¦£';

  @override
  String get cancel => 'à¦¬à¦¾à¦¤à¦¿à¦²';

  @override
  String get cancelCaps => 'à¦¬à¦¾à¦¤à¦¿à¦²';

  @override
  String get deleteCaps => 'à¦®à§à¦›à§à¦¨';

  @override
  String get done => 'à¦¸à¦®à§à¦ªà¦¨à§à¦¨';

  @override
  String get set => 'à¦¸à§‡à¦Ÿ';

  @override
  String get home => 'à¦¹à§‹à¦®';

  @override
  String get progress => 'à¦‰à¦¨à§à¦¨à¦¤à¦¿';

  @override
  String get exercises => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®';

  @override
  String get settings => 'à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸';

  @override
  String get today => 'à¦†à¦œ';

  @override
  String get thisWeek => 'à¦à¦‡ à¦¸à¦ªà§à¦¤à¦¾à¦¹';

  @override
  String get recommended => 'à¦¸à§à¦ªà¦¾à¦°à¦¿à¦¶à¦•à§ƒà¦¤';

  @override
  String get goal => 'à¦²à¦•à§à¦·à§à¦¯';

  @override
  String get volume => 'à¦­à¦²à¦¿à¦‰à¦®';

  @override
  String get setsToday => 'à¦†à¦œà¦•à§‡à¦° à¦¸à§‡à¦Ÿ';

  @override
  String get prs => 'à¦°à§‡à¦•à¦°à§à¦¡ (PR)';

  @override
  String get todaysFocus => 'à¦†à¦œà¦•à§‡à¦° à¦«à§‹à¦•à¦¾à¦¸';

  @override
  String get todaysRoutine => 'à¦†à¦œà¦•à§‡à¦° à¦°à§à¦Ÿà¦¿à¦¨';

  @override
  String get startWorkout => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¶à§à¦°à§ à¦•à¦°à§à¦¨';

  @override
  String get routines => 'à¦°à§à¦Ÿà¦¿à¦¨';

  @override
  String get tools => 'à¦Ÿà§à¦²à¦¸';

  @override
  String get firstSessionHint => 'à¦ªà§‡à¦¶à§€ à¦¬à§‡à¦›à§‡ à¦¨à¦¿à§Ÿà§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦ªà§à¦°à¦¥à¦® à¦¸à§‡à¦¶à¦¨ à¦²à¦— à¦•à¦°à§à¦¨';

  @override
  String exerciseCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '{n', one: '{n');
    return '$_temp0';
  }

  @override
  String get pushDay => 'à¦ªà§à¦¶ à¦¡à§‡';

  @override
  String get pullDay => 'à¦ªà§à¦² à¦¡à§‡';

  @override
  String get legDay => 'à¦²à§‡à¦— à¦¡à§‡';

  @override
  String get pushFocus => 'à¦¬à§à¦• Â· à¦•à¦¾à¦à¦§ Â· à¦Ÿà§à¦°à¦¾à¦‡à¦¸à§‡à¦ªà§à¦¸';

  @override
  String get pullFocus => 'à¦ªà¦¿à¦  Â· à¦¬à¦¾à¦‡à¦¸à§‡à¦ªà§à¦¸ Â· à¦Ÿà§à¦°à§à¦¯à¦¾à¦ªà¦¸';

  @override
  String get legFocus => 'à¦•à§‹à¦¯à¦¼à¦¾à¦¡à¦¸ Â· à¦¹à§à¦¯à¦¾à¦®à¦¸à§à¦Ÿà§à¦°à¦¿à¦‚à¦¸ Â· à¦—à§à¦²à§à¦Ÿà¦¸';

  @override
  String get train => 'à¦Ÿà§à¦°à§‡à¦¨';

  @override
  String get step1 => 'à¦§à¦¾à¦ª à§§ / à§¨';

  @override
  String get step2 => 'à¦§à¦¾à¦ª à§¨ / à§¨';

  @override
  String get chooseFocus => 'à¦«à§‹à¦•à¦¾à¦¸ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨';

  @override
  String get buildSession => 'à¦¸à§‡à¦¶à¦¨ à¦¸à¦¾à¦œà¦¾à¦¨';

  @override
  String get tapMuscles => 'à¦¯à§‡ à¦ªà§‡à¦¶à§€à¦—à§à¦²à§‹ à¦Ÿà§à¦°à§‡à¦¨ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ à¦¸à§à¦ªà¦°à§à¦¶ à¦•à¦°à§à¦¨ â€” à¦¸à¦¾à¦®à¦¨à§‡ à¦à¦¬à¦‚ à¦ªà¦¿à¦›à¦¨à§‡à¥¤';

  @override
  String get noMusclesYet => 'à¦à¦–à¦¨à¦“ à¦•à§‹à¦¨à§‹ à¦ªà§‡à¦¶à§€ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¿à¦¤ à¦¹à§Ÿà¦¨à¦¿ â€” à¦¶à§à¦°à§ à¦•à¦°à¦¤à§‡ à¦¶à¦°à§€à¦°à§‡ à¦¸à§à¦ªà¦°à§à¦¶ à¦•à¦°à§à¦¨à¥¤';

  @override
  String get continueBtn => 'à¦šà¦¾à¦²à¦¿à¦¯à¦¼à§‡ à¦¯à¦¾à¦¨';

  @override
  String get nothingForFocus => 'à¦à¦‡ à¦«à§‹à¦•à¦¾à¦¸à§‡ à¦à¦–à¦¨à¦“ à¦•à¦¿à¦›à§ à¦¨à§‡à¦‡';

  @override
  String get goBackPick => 'à¦«à¦¿à¦°à§‡ à¦¯à¦¾à¦¨ à¦à¦¬à¦‚ à¦²à¦¾à¦‡à¦¬à§à¦°à§‡à¦°à¦¿à¦° à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à¦¯à§à¦•à§à¦¤ à¦ªà§‡à¦¶à§€ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨à¥¤';

  @override
  String pickedHint(int n) {
    return 'à¦†à¦®à¦°à¦¾ à¦†à¦ªà¦¨à¦¾à¦° à¦œà¦¨à§à¦¯ à¦à¦•à¦Ÿà¦¿ à¦¸à§‡à¦¶à¦¨ à¦¬à§‡à¦›à§‡ à¦¨à¦¿à§Ÿà§‡à¦›à¦¿ â€” $nà¦Ÿà¦¿ à¦¥à§‡à¦•à§‡ à¦¯à§‡à¦•à§‹à¦¨à§‹à¦Ÿà¦¿ à¦¯à§‹à¦— à¦¬à¦¾ à¦¬à¦¾à¦¦ à¦¦à¦¿à¦¨à¥¤';
  }

  @override
  String get pickAnExercise => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¬à§‡à¦›à§‡ à¦¨à¦¿à¦¨';

  @override
  String get searchAllExercises => 'à¦¯à§‡à¦•à§‹à¦¨à§‹ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦–à§à¦à¦œà§à¦¨â€¦';

  @override
  String get noExercisesMatch => 'à¦•à§‹à¦¨à§‹ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦®à§‡à¦²à§‡à¦¨à¦¿';

  @override
  String get createItInstead => 'à¦¤à¦¾à¦° à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à§‡ à¦¨à¦¿à¦œà§‡à¦° à¦®à¦¤à§‹ à¦¨à¦¤à§à¦¨ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨';

  @override
  String startCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '{n', one: '{n');
    return '$_temp0';
  }

  @override
  String get inProgress => 'à¦šà¦²à¦®à¦¾à¦¨';

  @override
  String get paused => 'à¦¸à§à¦¥à¦—à¦¿à¦¤';

  @override
  String get last => 'à¦¸à¦°à§à¦¬à¦¶à§‡à¦·';

  @override
  String get rest => 'à¦¬à¦¿à¦¶à§à¦°à¦¾à¦®';

  @override
  String get skip => 'à¦à¦¡à¦¼à¦¿à¦¯à¦¼à§‡ à¦¯à¦¾à¦¨';

  @override
  String get addSet => '+ à¦¸à§‡à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get finishSession => 'à¦¸à§‡à¦¶à¦¨ à¦¸à¦®à¦¾à¦ªà§à¦¤ à¦•à¦°à§à¦¨';

  @override
  String get setDone => 'à¦¸à§‡à¦Ÿ à¦¸à¦®à§à¦ªà¦¨à§à¦¨';

  @override
  String get nextExercise => 'à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®';

  @override
  String get skipExercise => 'à¦à¦‡ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à¦Ÿà¦¿ à¦à¦¡à¦¼à¦¿à¦¯à¦¼à§‡ à¦¯à¦¾à¦¬à§‡à¦¨?';

  @override
  String skipExerciseBody(String name) {
    return 'à¦†à¦ªà¦¨à¦¿ à¦•à§‹à¦¨à§‹ à¦¸à§‡à¦Ÿ à¦¸à¦®à§à¦ªà¦¨à§à¦¨ à¦•à¦°à§‡à¦¨à¦¨à¦¿, à¦¤à¦¾à¦‡ "$name"-à¦à¦° à¦œà¦¨à§à¦¯ à¦•à¦¿à¦›à§à¦‡ à¦¸à¦‚à¦°à¦•à§à¦·à¦¿à¦¤ à¦¹à¦¬à§‡ à¦¨à¦¾à¥¤';
  }

  @override
  String get dropExerciseAction => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¬à¦¾à¦¦ à¦¦à¦¿à¦¨';

  @override
  String get restOff => 'à¦¬à¦¨à§à¦§';

  @override
  String get setCol => '#';

  @override
  String get repsCol => 'à¦°à§‡à¦ªà¦¸';

  @override
  String weightCol(String unit) {
    return 'à¦“à¦œà¦¨ ($unit)';
  }

  @override
  String get repsTitle => 'à¦°à§‡à¦ªà¦¸';

  @override
  String weightTitle(String unit) {
    return 'à¦“à¦œà¦¨ ($unit)';
  }

  @override
  String get sessionComplete => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¸à¦®à§à¦ªà¦¨à§à¦¨';

  @override
  String get finishHeadlinePr => 'à¦¨à¦¤à§à¦¨ à¦¬à§à¦¯à¦•à§à¦¤à¦¿à¦—à¦¤ à¦°à§‡à¦•à¦°à§à¦¡';

  @override
  String get finishHeadlineGoal => 'à¦¸à¦¾à¦ªà§à¦¤à¦¾à¦¹à¦¿à¦• à¦²à¦•à§à¦·à§à¦¯ à¦…à¦°à§à¦œà¦¿à¦¤';

  @override
  String get finishHeadlineStreak => 'à¦§à¦¾à¦°à¦¾à¦¬à¦¾à¦¹à¦¿à¦•à¦¤à¦¾ à¦¬à¦œà¦¾à¦¯à¦¼ à¦°à¦¯à¦¼à§‡à¦›à§‡';

  @override
  String get finishHeadlineDefault => 'à¦†à¦°à§‡à¦•à¦Ÿà¦¿ à¦¸à§‡à¦¶à¦¨ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦¶à§‡à¦·';

  @override
  String finishBodyPr(int prs) {
    String _temp0 = intl.Intl.pluralLogic(prs, locale: localeName, other: '{prs', one: 'à¦à¦•à¦Ÿà¦¿ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à§‡');
    return '$_temp0';
  }

  @override
  String get finishBodyGoal => 'à¦†à¦ªà¦¨à¦¿ à¦à¦‡ à¦¸à¦ªà§à¦¤à¦¾à¦¹à§‡à¦° à¦¨à¦¿à¦°à§à¦§à¦¾à¦°à¦¿à¦¤ à¦¸à§‡à¦¶à¦¨ à¦²à¦•à§à¦·à§à¦¯ à¦ªà§‚à¦°à¦£ à¦•à¦°à§‡à¦›à§‡à¦¨à¥¤';

  @override
  String finishBodyStreak(int streak) {
    return 'à¦Ÿà¦¾à¦¨à¦¾ $streak à¦¦à¦¿à¦¨à¥¤ à¦¸à¦¬à¦šà§‡à¦¯à¦¼à§‡ à¦—à§à¦°à§à¦¤à§à¦¬à¦ªà§‚à¦°à§à¦£ à¦¹à¦²à§‹ à¦¥à¦®à¦•à§‡ à¦¨à¦¾ à¦¯à¦¾à¦“à§Ÿà¦¾à¥¤';
  }

  @override
  String get finishBodyDefault => 'à¦²à¦— à¦“ à¦—à¦£à¦¨à¦¾ à¦¸à¦®à§à¦ªà¦¨à§à¦¨à¥¤ à¦§à¦¾à¦°à¦¾à¦¬à¦¾à¦¹à¦¿à¦•à¦¤à¦¾à¦‡ à¦†à¦¸à¦² à¦…à¦—à§à¦°à¦—à¦¤à¦¿à¥¤';

  @override
  String get vsLastTime => 'à¦—à¦¤à¦¬à¦¾à¦°à§‡à¦° à¦¤à§à¦²à¦¨à¦¾à§Ÿ';

  @override
  String get firstTime => 'à¦ªà§à¦°à¦¥à¦®à¦¬à¦¾à¦° à¦²à¦— à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡';

  @override
  String prCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '{n', one: '{n');
    return '$_temp0';
  }

  @override
  String get saveAndExit => 'à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à§‡ à¦ªà§à¦°à¦¸à§à¦¥à¦¾à¦¨ à¦•à¦°à§à¦¨';

  @override
  String get duration => 'à¦¸à¦®à¦¯à¦¼à¦•à¦¾à¦²';

  @override
  String get setsCaps => 'à¦¸à§‡à¦Ÿ';

  @override
  String exerciseXofY(int i, int n) {
    return 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® $i / $n';
  }

  @override
  String get decrease => 'à¦•à¦®à¦¾à¦¨';

  @override
  String get increase => 'à¦¬à¦¾à¦¡à¦¼à¦¾à¦¨';

  @override
  String markSet(int n) {
    return 'à¦¸à§‡à¦Ÿ $n à¦¸à¦®à§à¦ªà¦¨à§à¦¨ à¦šà¦¿à¦¹à§à¦¨à¦¿à¦¤ à¦•à¦°à§à¦¨';
  }

  @override
  String get pauseWorkout => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¸à§à¦¥à¦—à¦¿à¦¤ à¦•à¦°à§à¦¨';

  @override
  String get resumeWorkout => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦ªà§à¦¨à¦°à¦¾à¦¯à¦¼ à¦¶à§à¦°à§ à¦•à¦°à§à¦¨';

  @override
  String get discardTitle => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¬à¦¾à¦¤à¦¿à¦² à¦•à¦°à¦¬à§‡à¦¨?';

  @override
  String get discardBody => 'à¦à¦‡ à¦¸à§‡à¦¶à¦¨à§‡à¦° à¦¸à¦®à¦¸à§à¦¤ à¦¸à§‡à¦Ÿ à¦®à§à¦›à§‡ à¦¯à¦¾à¦¬à§‡à¥¤';

  @override
  String get keepTraining => 'à¦Ÿà§à¦°à§‡à¦¨à¦¿à¦‚ à¦šà¦¾à¦²à¦¿à¦¯à¦¼à§‡ à¦¯à¦¾à¦¨';

  @override
  String get discard => 'à¦¬à¦¾à¦¤à¦¿à¦² à¦•à¦°à§à¦¨';

  @override
  String get notifRestChannel => 'à¦¬à¦¿à¦¶à§à¦°à¦¾à¦®à§‡à¦° à¦Ÿà¦¾à¦‡à¦®à¦¾à¦°';

  @override
  String get notifRestChannelWhy => 'à¦¸à§‡à¦Ÿà§‡à¦° à¦®à¦¾à¦à§‡ à¦¬à¦¿à¦¶à§à¦°à¦¾à¦® à¦¶à§‡à¦· à¦¹à¦²à§‡ à¦†à¦ªà¦¨à¦¾à¦•à§‡ à¦œà¦¾à¦¨à¦¾à¦¯à¦¼';

  @override
  String get notifAlertChannel => 'à¦¬à¦¿à¦¶à§à¦°à¦¾à¦®à§‡à¦° à¦Ÿà¦¾à¦‡à¦®à¦¾à¦° (à¦…à§à¦¯à¦¾à¦²à¦¾à¦°à§à¦Ÿ)';

  @override
  String get notifAlertChannelWhy => 'à¦¬à¦¿à¦¶à§à¦°à¦¾à¦® à¦¶à§‡à¦· à¦¹à¦“à§Ÿà¦¾à¦° à¦¸à¦¾à¦¥à§‡ à¦¸à¦¾à¦¥à§‡ à¦¬à§à¦¯à¦¾à¦¨à¦¾à¦° à¦ªà§à¦°à¦¦à¦°à§à¦¶à¦¨ à¦•à¦°à§‡';

  @override
  String get restOverTitle => 'à¦¬à¦¿à¦¶à§à¦°à¦¾à¦® à¦¶à§‡à¦·';

  @override
  String get restOverBody => 'à¦•à¦¾à¦œà§‡ à¦«à¦¿à¦°à§‡ à¦†à¦¸à§à¦¨ â€” à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦¸à§‡à¦Ÿ à¦…à¦ªà§‡à¦•à§à¦·à¦¾ à¦•à¦°à¦›à§‡à¥¤';

  @override
  String get totalVolume30d => 'à¦®à§‹à¦Ÿ à¦­à¦²à¦¿à¦‰à¦® Â· à§©à§¦ à¦¦à¦¿à¦¨';

  @override
  String get volumeCumulative => 'à¦†à¦ªà¦¨à¦¾à¦° à¦‰à¦¤à§à¦¤à§‹à¦²à¦¨ à¦•à¦°à¦¾ à¦ªà§à¦°à¦¤à¦¿ à¦•à§‡à¦œà¦¿à¦° à¦®à§‹à¦Ÿ à¦¯à§‹à¦—à¦«à¦²';

  @override
  String get volumeChartEmpty => 'à¦à¦•à¦Ÿà¦¿ à¦¸à§‡à¦¶à¦¨ à¦²à¦— à¦•à¦°à§à¦¨ à¦à¦¬à¦‚ à¦šà¦¾à¦°à§à¦Ÿ à¦à¦–à¦¾à¦¨à§‡ à¦¶à§à¦°à§ à¦¹à¦¬à§‡';

  @override
  String get weekRhythm => 'à¦¸à¦¾à¦ªà§à¦¤à¦¾à¦¹à¦¿à¦• à¦›à¦¨à§à¦¦';

  @override
  String get weekRhythmHint => 'à¦¸à¦ªà§à¦¤à¦¾à¦¹à§‡à¦° à¦•à§‹à¦¨ à¦¦à¦¿à¦¨à¦—à§à¦²à§‹à¦¤à§‡ à¦†à¦ªà¦¨à¦¿ à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤ à¦¥à¦¾à¦•à§‡à¦¨à¥¤';

  @override
  String weekRhythmBest(String day) {
    return '$day à¦†à¦ªà¦¨à¦¾à¦° à¦¸à§‡à¦°à¦¾ à¦¦à¦¿à¦¨';
  }

  @override
  String get weekRhythmEmpty => 'à¦¸à§‡à¦¶à¦¨ à¦²à¦— à¦•à¦°à§à¦¨ à¦à¦¬à¦‚ à¦†à¦ªà¦¨à¦¾à¦° à¦¸à¦ªà§à¦¤à¦¾à¦¹à§‡à¦° à¦°à§à¦Ÿà¦¿à¦¨ à¦à¦–à¦¾à¦¨à§‡ à¦°à§‚à¦ª à¦¨à§‡à¦¬à§‡à¥¤';

  @override
  String get allTime => 'à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ';

  @override
  String get allTimeSessions => 'à¦¸à§‡à¦¶à¦¨';

  @override
  String get allTimeTime => 'à¦¸à¦®à¦¯à¦¼';

  @override
  String get allTimeVolume => 'à¦‰à¦¤à§à¦¤à§‹à¦²à¦¿à¦¤';

  @override
  String get allTimeSets => 'à¦¸à§‡à¦Ÿ';

  @override
  String allTimeAvg(String time) {
    return 'à¦—à¦¡à¦¼à§‡ à¦ªà§à¦°à¦¤à¦¿ à¦¸à§‡à¦¶à¦¨à§‡ $time';
  }

  @override
  String hoursShort(int n) {
    return '$nà¦˜à¦£à§à¦Ÿà¦¾';
  }

  @override
  String get consistency => 'à¦§à¦¾à¦°à¦¾à¦¬à¦¾à¦¹à¦¿à¦•à¦¤à¦¾';

  @override
  String sessionsLogged(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '{n', one: '{n');
    return '$_temp0';
  }

  @override
  String streakDays(int n) {
    return '$n à¦¦à¦¿à¦¨à§‡à¦° à¦§à¦¾à¦°à¦¾à¦¬à¦¾à¦¹à¦¿à¦•à¦¤à¦¾';
  }

  @override
  String get bodyweight => 'à¦¶à¦°à§€à¦°à§‡à¦° à¦“à¦œà¦¨';

  @override
  String get notLoggedYet => 'à¦à¦–à¦¨à¦“ à¦²à¦— à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à¦¨à¦¿';

  @override
  String get logShort => '+ à¦²à¦—';

  @override
  String get logBodyweight => 'à¦¶à¦°à§€à¦°à§‡à¦° à¦“à¦œà¦¨ à¦²à¦— à¦•à¦°à§à¦¨';

  @override
  String get trackWeight => 'à¦¸à¦®à¦¯à¦¼à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦“à¦œà¦¨à§‡à¦° à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨ à¦Ÿà§à¦°à§à¦¯à¦¾à¦• à¦•à¦°à§à¦¨';

  @override
  String get muscleMap => 'à¦ªà§‡à¦¶à§€à¦° à¦®à¦¾à¦¨à¦šà¦¿à¦¤à§à¦°';

  @override
  String get days7 => 'à§­ à¦¦à¦¿à¦¨';

  @override
  String get days30 => 'à§©à§¦ à¦¦à¦¿à¦¨';

  @override
  String get heatLow => 'à¦…à¦¬à§à¦¯à¦¬à¦¹à§ƒà¦¤';

  @override
  String get heatHigh => 'à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à¦­à¦²à¦¿à¦‰à¦®';

  @override
  String get muscleMapEmpty => 'à¦à¦•à¦Ÿà¦¿ à¦¸à§‡à¦¶à¦¨ à¦²à¦— à¦•à¦°à§à¦¨ à¦à¦¬à¦‚ à¦¶à¦°à§€à¦° à¦à¦–à¦¾à¦¨à§‡ à¦¸à¦•à§à¦°à¦¿à¦¯à¦¼ à¦¹à¦¯à¦¼à§‡ à¦‰à¦ à¦¬à§‡à¥¤';

  @override
  String get muscleMapHint => 'à¦ªà§‡à¦¶à§€à¦¤à§‡ à¦Ÿà§à¦¯à¦¾à¦ª à¦•à¦°à§‡ à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦¿à¦¤ à¦¦à§‡à¦–à§à¦¨à¥¤';

  @override
  String muscleMapBehind(String names) {
    return 'à¦ªà¦¿à¦›à¦¿à¦¯à¦¼à§‡ à¦°à¦¯à¦¼à§‡à¦›à§‡: $names';
  }

  @override
  String ofTarget(int pct) {
    return 'à¦²à¦•à§à¦·à§à¦¯à§‡à¦° $pct%';
  }

  @override
  String get muscleSplit => 'à¦ªà§‡à¦¶à§€à¦° à¦¬à¦¿à¦­à¦¾à¦œà¦¨';

  @override
  String get splitEmpty => 'à¦ªà§‡à¦¶à§€à¦­à¦¿à¦¤à§à¦¤à¦¿à¦• à¦­à¦²à¦¿à¦‰à¦® à¦­à¦¾à¦— à¦¦à§‡à¦–à¦¤à§‡ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦•à¦°à§à¦¨à¥¤';

  @override
  String get personalRecords => 'à¦¬à§à¦¯à¦•à§à¦¤à¦¿à¦—à¦¤ à¦°à§‡à¦•à¦°à§à¦¡';

  @override
  String get prEmpty => 'à¦¸à§‡à¦Ÿ à¦²à¦— à¦•à¦°à¦¾à¦° à¦¸à¦¾à¦¥à§‡ à¦¸à¦¾à¦¥à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦°à§‡à¦•à¦°à§à¦¡ à¦à¦–à¦¾à¦¨à§‡ à¦ªà§à¦°à¦¦à¦°à§à¦¶à¦¿à¦¤ à¦¹à¦¬à§‡à¥¤';

  @override
  String get strength1rm => 'à¦¶à¦•à§à¦¤à¦¿ Â· à¦†à¦¨à§à¦®à¦¾à¦¨à¦¿à¦• 1RM';

  @override
  String get strengthEmpty => 'à¦¯à§‡à¦•à§‹à¦¨à§‹ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¦à§à¦‡à¦¬à¦¾à¦° à¦²à¦— à¦•à¦°à¦²à§‡ à¦¤à¦¾à¦° à¦¶à¦•à§à¦¤à¦¿à¦° à¦—à§à¦°à¦¾à¦« à¦à¦–à¦¾à¦¨à§‡ à¦¦à§‡à¦–à¦¾ à¦¯à¦¾à¦¬à§‡à¥¤';

  @override
  String oneRmEst(String w) {
    return 'à¦†à¦¨à§à¦®à¦¾à¦¨à¦¿à¦• 1RM $w';
  }

  @override
  String get restDayShort => 'à¦¬à¦¿à¦¶à§à¦°à¦¾à¦®à§‡à¦° à¦¦à¦¿à¦¨';

  @override
  String get restDay => 'à¦¬à¦¿à¦¶à§à¦°à¦¾à¦®à§‡à¦° à¦¦à¦¿à¦¨ â€” à¦•à¦¿à¦›à§à¦‡ à¦²à¦— à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à¦¨à¦¿à¥¤';

  @override
  String get delete => 'à¦®à§à¦›à§à¦¨';

  @override
  String get deleteEntry => 'à¦à¦‡ à¦à¦¨à§à¦Ÿà§à¦°à¦¿ à¦®à§à¦›à§‡ à¦«à§‡à¦²à¦¬à§‡à¦¨?';

  @override
  String deleteEntryBody(String name) {
    return '"$name" à¦†à¦œà¦•à§‡à¦° à¦¦à¦¿à¦¨, à¦°à§‡à¦•à¦°à§à¦¡ à¦à¦¬à¦‚ à¦šà¦¾à¦°à§à¦Ÿ à¦¥à§‡à¦•à§‡ à¦®à§à¦›à§‡ à¦«à§‡à¦²à¦¾ à¦¹à¦¬à§‡à¥¤';
  }

  @override
  String get bodyweightHistory => 'à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸';

  @override
  String get noBodyweightYet => 'à¦à¦–à¦¨à¦“ à¦•à¦¿à¦›à§ à¦²à¦— à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à¦¨à¦¿à¥¤';

  @override
  String get exercisesCaps => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®';

  @override
  String get timeCaps => 'à¦¸à¦®à¦¯à¦¼';

  @override
  String libraryCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'à¦²à¦¾à¦‡à¦¬à§à¦°à§‡à¦°à¦¿à¦¤à§‡ {n', one: 'à¦²à¦¾à¦‡à¦¬à§à¦°à§‡à¦°à¦¿à¦¤à§‡ {n');
    return '$_temp0';
  }

  @override
  String get searchExercises => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦–à§à¦à¦œà§à¦¨';

  @override
  String get muscleFilter => 'à¦ªà§‡à¦¶à§€';

  @override
  String get levelFilter => 'à¦²à§‡à¦­à§‡à¦²';

  @override
  String get newExercise => 'à¦¨à¦¤à§à¦¨ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®';

  @override
  String get exerciseName => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à§‡à¦° à¦¨à¦¾à¦®';

  @override
  String get equipmentLabel => 'à¦¸à¦°à¦žà§à¦œà¦¾à¦®';

  @override
  String get addExercise => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get advanced => 'à¦‰à¦¨à§à¦¨à¦¤';

  @override
  String get demoMedia => 'à¦¡à§‡à¦®à§‹';

  @override
  String get addMedia => 'à¦®à¦¿à¦¡à¦¿à¦¯à¦¼à¦¾ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get mediaHint => 'à¦›à¦¬à¦¿, à¦œà¦¿à¦†à¦‡à¦à¦« à¦¬à¦¾ à¦­à¦¿à¦¡à¦¿à¦“';

  @override
  String get changeMedia => 'à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨';

  @override
  String get videoSelected => 'à¦­à¦¿à¦¡à¦¿à¦“ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¿à¦¤';

  @override
  String get favouritesOnly => 'à¦ªà§à¦°à¦¿à¦¯à¦¼à¦—à§à¦²à§‹';

  @override
  String get noFavouritesYet => 'à¦à¦–à¦¨à¦“ à¦•à§‹à¦¨à§‹ à¦ªà§à¦°à¦¿à¦¯à¦¼ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¨à§‡à¦‡';

  @override
  String get noFavouritesHint => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à§‡ à¦¤à¦¾à¦°à¦¾ à¦šà¦¿à¦¹à§à¦¨à§‡ à¦Ÿà§à¦¯à¦¾à¦ª à¦•à¦°à§‡ à¦à¦–à¦¾à¦¨à§‡ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨à¥¤';

  @override
  String get clearFilters => 'à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦®à§à¦›à§à¦¨';

  @override
  String get noExercisesFound => 'à¦•à§‹à¦¨à§‹ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦ªà¦¾à¦“à¦¯à¦¼à¦¾ à¦¯à¦¾à¦¯à¦¼à¦¨à¦¿';

  @override
  String get noExercisesHint => 'à¦­à¦¿à¦¨à§à¦¨ à¦…à¦¨à§à¦¸à¦¨à§à¦§à¦¾à¦¨ à¦•à¦°à§à¦¨ à¦¬à¦¾ à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦¸à¦¾à¦« à¦•à¦°à§à¦¨à¥¤';

  @override
  String get personalRecord => 'à¦¬à§à¦¯à¦•à§à¦¤à¦¿à¦—à¦¤ à¦°à§‡à¦•à¦°à§à¦¡';

  @override
  String get history => 'à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸';

  @override
  String get noHistory => 'à¦à¦–à¦¨à¦“ à¦•à§‹à¦¨à§‹ à¦¸à§‡à¦¶à¦¨ à¦¨à§‡à¦‡à¥¤ à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸ à¦—à§œà¦¤à§‡ à¦à¦‡ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à¦Ÿà¦¿ à¦•à¦°à§à¦¨à¥¤';

  @override
  String get notes => 'à¦¨à§‹à¦Ÿ';

  @override
  String get notePlaceholder => 'à¦ªà¦¯à¦¼à§‡à¦¨à§à¦Ÿ, à¦¸à§‡à¦Ÿà¦†à¦ª, à¦•à§‡à¦®à¦¨ à¦…à¦¨à§à¦­à¦¬ à¦¹à§Ÿà§‡à¦›à§‡â€¦';

  @override
  String showAllNotes(int n) {
    return 'à¦¸à¦¬ $nà¦Ÿà¦¿ à¦¨à§‹à¦Ÿ à¦¦à§‡à¦–à§à¦¨';
  }

  @override
  String notHere(String gear, String place) {
    return '$place-à¦ à¦•à§‹à¦¨à§‹ $gear à¦¨à§‡à¦‡';
  }

  @override
  String get notHereWhy => 'à¦†à¦œ à¦¯à¦¾ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à¦¬à§‡à¦¨ à¦¤à¦¾ à¦¦à¦¿à§Ÿà§‡ à¦¬à¦¦à¦²à§‡ à¦¨à¦¿à¦¨à¥¤';

  @override
  String get altHere => 'à¦à¦–à¦¾à¦¨à§‡ à¦¯à¦¾ à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨';

  @override
  String get places => 'à¦†à¦®à¦¾à¦° à¦¸à§à¦¥à¦¾à¦¨à¦¸à¦®à§‚à¦¹';

  @override
  String get placesShort => 'à¦¸à§à¦¥à¦¾à¦¨à¦¸à¦®à§‚à¦¹';

  @override
  String get placesHint => 'à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦¸à§à¦¥à¦¾à¦¨à§‡ à¦•à§€ à¦¸à¦°à¦žà§à¦œà¦¾à¦® à¦†à¦›à§‡ à¦œà¦¾à¦¨à¦¾à¦¨, à¦²à¦¾à¦‡à¦¬à§à¦°à§‡à¦°à¦¿à¦¤à§‡ à¦¶à§à¦§à§ à¦¸à§‡à¦—à§à¦²à§‹à¦‡ à¦¦à§‡à¦–à¦¾à¦¬à§‡à¥¤';

  @override
  String get placeAll => 'à¦¯à§‡à¦•à§‹à¦¨à§‹ à¦¸à§à¦¥à¦¾à¦¨';

  @override
  String get placeNew => 'à¦¨à¦¤à§à¦¨ à¦¸à§à¦¥à¦¾à¦¨';

  @override
  String get placeNameLabel => 'à¦¨à¦¾à¦®';

  @override
  String get placeNamePlaceholder => 'à¦¬à¦¾à¦¡à¦¼à¦¿, à¦œà¦¿à¦®, à¦ªà¦¾à¦°à§à¦•â€¦';

  @override
  String get placeGearLabel => 'à¦à¦–à¦¾à¦¨à§‡ à¦•à§€ à¦†à¦›à§‡';

  @override
  String placeGearCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '{n', one: 'à§§ à¦§à¦°à¦£à§‡à¦° à¦¸à¦°à¦žà§à¦œà¦¾à¦®', zero: 'à¦•à¦¿à¦›à§à¦‡ à¦šà¦¿à¦¹à§à¦¨à¦¿à¦¤ à¦¨à§‡à¦‡');
    return '$_temp0';
  }

  @override
  String placeExercises(int n) {
    return 'à¦à¦–à¦¾à¦¨à§‡ $nà¦Ÿà¦¿ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦°à§Ÿà§‡à¦›à§‡';
  }

  @override
  String get placeEmptyTitle => 'à¦¯à§‡à¦–à¦¾à¦¨à§‡à¦‡ à¦¥à¦¾à¦•à§à¦¨ à¦…à¦¨à§à¦¶à§€à¦²à¦¨ à¦•à¦°à§à¦¨';

  @override
  String get placeEmptyBody => 'à¦¸à§à¦¥à¦¾à¦¨ à¦¹à¦²à§‹ à¦¸à¦°à¦žà§à¦œà¦¾à¦®à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾à¥¤ à¦¶à§à¦°à§ à¦•à¦°à¦¤à§‡ à¦à¦•à¦Ÿà¦¿ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨à¥¤';

  @override
  String get placeDeleteTitle => 'à¦¸à§à¦¥à¦¾à¦¨ à¦®à§à¦›à§à¦¨';

  @override
  String get placeDeleteBody => 'à¦•à§‡à¦¬à¦² à¦¸à§à¦¥à¦¾à¦¨à¦Ÿà¦¿ à¦®à§à¦›à§‡ à¦¯à¦¾à¦¬à§‡ â€” à¦†à¦ªà¦¨à¦¾à¦° à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦à¦¬à¦‚ à¦¸à§‡à¦¶à¦¨ à¦…à¦•à§à¦·à¦¤ à¦¥à¦¾à¦•à¦¬à§‡à¥¤';

  @override
  String get placeGym => 'à¦œà¦¿à¦®';

  @override
  String get placeHome => 'à¦¬à¦¾à¦¡à¦¼à¦¿';

  @override
  String get placeOutdoors => 'à¦–à§‹à¦²à¦¾ à¦®à¦¾à¦ ';

  @override
  String get placeFilterLabel => 'à¦¸à§à¦¥à¦¾à¦¨';

  @override
  String get noGearOnly => 'à¦¸à¦°à¦žà§à¦œà¦¾à¦® à¦›à¦¾à§œà¦¾';

  @override
  String placeActive(String name) {
    return '$name-à¦ à¦Ÿà§à¦°à§‡à¦¨à¦¿à¦‚';
  }

  @override
  String get journal => 'à¦œà¦¾à¦°à§à¦¨à¦¾à¦²';

  @override
  String noteCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '{n', one: 'à§§à¦Ÿà¦¿ à¦¨à§‹à¦Ÿ', zero: 'à¦•à§‹à¦¨à§‹ à¦¨à§‹à¦Ÿ à¦¨à§‡à¦‡');
    return '$_temp0';
  }

  @override
  String get noteKindNote => 'à¦¨à§‹à¦Ÿ';

  @override
  String get noteKindPlan => 'à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾';

  @override
  String get noteKindDone => 'à¦¸à¦¾à¦«à¦²à§à¦¯';

  @override
  String get noteKindPain => 'à¦¬à§à¦¯à¦¥à¦¾';

  @override
  String get noteFilterAll => 'à¦¸à¦•à¦²';

  @override
  String get newNote => 'à¦¨à¦¤à§à¦¨ à¦¨à§‹à¦Ÿ';

  @override
  String get editNote => 'à¦¨à§‹à¦Ÿ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾';

  @override
  String get addNote => 'à¦¨à§‹à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get noteEmptyTitle => 'à¦†à¦ªà¦¨à¦¾à¦° à¦šà¦¿à¦¨à§à¦¤à¦¾à¦­à¦¾à¦¬à¦¨à¦¾ à¦²à¦¿à¦–à§à¦¨';

  @override
  String get noteEmptyBody => 'à¦†à¦ªà¦¨à¦¾à¦° à¦Ÿà§à¦°à§‡à¦¨à¦¿à¦‚à§Ÿà§‡à¦° à¦¨à§‹à¦Ÿ, à¦…à¦¨à§à¦­à§‚à¦¤à¦¿ à¦“ à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾ à¦à¦–à¦¾à¦¨à§‡ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à§à¦¨à¥¤';

  @override
  String get noteNoneForExercise => 'à¦à¦‡ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à§‡à¦° à¦œà¦¨à§à¦¯ à¦•à§‹à¦¨à§‹ à¦¨à§‹à¦Ÿ à¦¨à§‡à¦‡';

  @override
  String get noteKindLabel => 'à¦§à¦°à¦¨';

  @override
  String get noteTextLabel => 'à¦¨à§‹à¦Ÿ';

  @override
  String get noteDateLabel => 'à¦¤à¦¾à¦°à¦¿à¦–';

  @override
  String get noteExerciseLabel => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® (à¦à¦šà§à¦›à¦¿à¦•)';

  @override
  String get noteMediaLabel => 'à¦›à¦¬à¦¿ à¦¬à¦¾ à¦­à¦¿à¦¡à¦¿à¦“';

  @override
  String get noteGeneral => 'à¦¸à¦¾à¦§à¦¾à¦°à¦£ à¦¨à§‹à¦Ÿ';

  @override
  String get noteAttach => 'à¦¸à¦‚à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨';

  @override
  String get noteRemoveMedia => 'à¦®à¦¿à¦¡à¦¿à¦¯à¦¼à¦¾ à¦¸à¦°à¦¾à¦¨';

  @override
  String get deleteNoteTitle => 'à¦¨à§‹à¦Ÿ à¦®à§à¦›à¦¬à§‡à¦¨?';

  @override
  String get deleteNoteBody => 'à¦à¦‡ à¦¨à§‹à¦Ÿà¦Ÿà¦¿ à¦šà¦¿à¦°à¦¤à¦°à§‡ à¦®à§à¦›à§‡ à¦«à§‡à¦²à¦¾ à¦¹à¦¬à§‡à¥¤';

  @override
  String get noteToday => 'à¦†à¦œ';

  @override
  String get noteYesterday => 'à¦—à¦¤à¦•à¦¾à¦²';

  @override
  String get noteAllNotes => 'à¦¸à¦•à¦² à¦¨à§‹à¦Ÿ';

  @override
  String get noteCalendar => 'à¦•à§à¦¯à¦¾à¦²à§‡à¦¨à§à¦¡à¦¾à¦°';

  @override
  String get noteNoneOnDay => 'à¦à¦‡ à¦¦à¦¿à¦¨à§‡ à¦•à§‹à¦¨à§‹ à¦¨à§‹à¦Ÿ à¦¨à§‡à¦‡';

  @override
  String get noteAddOnDay => 'à¦à¦‡ à¦¦à¦¿à¦¨à§‡ à¦¨à§‹à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get notePrevMonth => 'à¦ªà§‚à¦°à§à¦¬à¦¬à¦°à§à¦¤à§€ à¦®à¦¾à¦¸';

  @override
  String get noteNextMonth => 'à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦®à¦¾à¦¸';

  @override
  String noteMonthCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '{n', one: '{n');
    return '$_temp0';
  }

  @override
  String get measures => 'à¦ªà¦°à¦¿à¦®à¦¾à¦ª';

  @override
  String get measuresHint => 'à¦¶à¦°à§€à¦°à§‡à¦° à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦…à¦‚à¦¶à§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦ª à¦Ÿà§à¦°à§à¦¯à¦¾à¦• à¦•à¦°à§à¦¨';

  @override
  String measureCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '{n', one: '{n');
    return '$_temp0';
  }

  @override
  String get measureNoneYet => 'à¦à¦–à¦¨à¦“ à¦•à§‹à¦¨à§‹ à¦ªà¦°à¦¿à¦®à¦¾à¦ª à¦¨à§‡à¦‡';

  @override
  String get measureHistory => 'à¦ªà¦°à¦¿à¦®à¦¾à¦ªà§‡à¦° à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸';

  @override
  String get measureNeck => 'à¦˜à¦¾à§œ';

  @override
  String get measureShoulders => 'à¦•à¦¾à¦à¦§';

  @override
  String get measureChest => 'à¦¬à§à¦•';

  @override
  String get measureArm => 'à¦¬à¦¾à¦¹à§';

  @override
  String get measureForearm => 'à¦…à¦—à§à¦°à¦¬à¦¾à¦¹à§';

  @override
  String get measureWaist => 'à¦•à§‹à¦®à¦°';

  @override
  String get measureHips => 'à¦¨à¦¿à¦¤à¦®à§à¦¬';

  @override
  String get measureThigh => 'à¦‰à¦°à§à¦° à¦®à¦¾à¦ª';

  @override
  String get measureCalf => 'à¦•à¦¾à¦«';

  @override
  String get measureBodyfat => 'à¦¶à¦°à§€à¦°à§‡à¦° à¦šà¦°à§à¦¬à¦¿';

  @override
  String get timeline => 'à¦Ÿà¦¾à¦‡à¦®à¦²à¦¾à¦‡à¦¨';

  @override
  String get timelineHint => 'à¦¶à¦°à§€à¦°à§‡à¦° à¦°à§‚à¦ªà¦¾à¦¨à§à¦¤à¦°à§‡à¦° à¦›à¦¬à¦¿';

  @override
  String get timelineEmptyTitle => 'à¦†à¦ªà¦¨à¦¾à¦° à¦°à§‚à¦ªà¦¾à¦¨à§à¦¤à¦° à¦ªà¦°à§à¦¯à¦¬à§‡à¦•à§à¦·à¦£ à¦•à¦°à§à¦¨';

  @override
  String photoCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '{n', one: '{n');
    return '$_temp0';
  }

  @override
  String get poseFront => 'à¦¸à¦¾à¦®à¦¨à§‡';

  @override
  String get poseSide => 'à¦ªà¦¾à¦¶ à¦¥à§‡à¦•à§‡';

  @override
  String get poseBack => 'à¦ªà¦¿à¦›à¦¨à§‡';

  @override
  String get photoEvery => 'à¦›à¦¬à¦¿ à¦¤à§‹à¦²à¦¾à¦° à¦¬à§à¦¯à¦¬à¦§à¦¾à¦¨';

  @override
  String photoEveryDays(int n) {
    return 'à¦ªà§à¦°à¦¤à¦¿ $n à¦¦à¦¿à¦¨ à¦…à¦¨à§à¦¤à¦°';
  }

  @override
  String get photoEveryOff => 'à¦¬à¦¨à§à¦§';

  @override
  String get timelineEvery => 'à¦ªà§à¦°à¦¤à¦¿ {n} à¦¦à¦¿à¦¨';

  @override
  String get custom => 'à¦•à¦¾à¦¸à§à¦Ÿà¦®';

  @override
  String photoNextIn(int n) {
    return 'à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦›à¦¬à¦¿ $n à¦¦à¦¿à¦¨ à¦ªà¦°';
  }

  @override
  String get photoDueNow => 'à¦†à¦œ à¦›à¦¬à¦¿ à¦¤à§‹à¦²à¦¾à¦° à¦¸à¦®à¦¯à¦¼ à¦¹à§Ÿà§‡à¦›à§‡';

  @override
  String get addTodayPhotos => 'à¦†à¦œà¦•à§‡à¦° à¦›à¦¬à¦¿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String posePhoto(String pose) {
    return '$pose à¦ªà§‹à¦œà§‡à¦° à¦›à¦¬à¦¿';
  }

  @override
  String get compare => 'à¦¤à§à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨';

  @override
  String get compareNeedTwo => 'à¦¤à§à¦²à¦¨à¦¾ à¦•à¦°à¦¾à¦° à¦œà¦¨à§à¦¯ à¦…à¦¨à§à¦¤à¦¤ à§¨à¦Ÿà¦¿ à¦›à¦¬à¦¿ à¦ªà§à¦°à¦¯à¦¼à§‹à¦œà¦¨';

  @override
  String dayNumber(int n) {
    return '$nà¦¤à¦® à¦¦à¦¿à¦¨';
  }

  @override
  String daysApart(int n) {
    return '$n à¦¦à¦¿à¦¨à§‡à¦° à¦¬à§à¦¯à¦¬à¦§à¦¾à¦¨';
  }

  @override
  String get deleteEntryTitle => 'à¦à¦¨à§à¦Ÿà§à¦°à¦¿ à¦®à§à¦›à¦¬à§‡à¦¨?';

  @override
  String get deleteDayBody => 'à¦à¦‡ à¦¦à¦¿à¦¨à§‡à¦° à¦¸à¦®à¦¸à§à¦¤ à¦›à¦¬à¦¿ à¦®à§à¦›à§‡ à¦¯à¦¾à¦¬à§‡à¥¤';

  @override
  String get timelinePhotos => 'à¦›à¦¬à¦¿';

  @override
  String get timelineBody => 'à¦¶à¦¾à¦°à§€à¦°à¦¿à¦• à¦°à§‚à¦ªà¦¾à¦¨à§à¦¤à¦°';

  @override
  String get timelineBodyEmpty => 'à¦›à¦¬à¦¿ à¦¯à§‹à¦— à¦•à¦°à§‡ à¦°à§‚à¦ªà¦¾à¦¨à§à¦¤à¦°à§‡à¦° à¦—à¦¤à¦¿à¦§à¦¾à¦°à¦¾ à¦¦à§‡à¦–à§à¦¨à¥¤';

  @override
  String get timelineBodyHint => 'à¦¨à¦¿à¦¯à¦¼à¦®à¦¿à¦¤ à¦›à¦¬à¦¿ à¦¤à§à¦²à¦²à§‡ à¦…à¦—à§à¦°à¦—à¦¤à¦¿ à¦¸à¦¹à¦œà§‡ à¦¬à§‹à¦à¦¾ à¦¯à¦¾à¦¯à¦¼à¥¤';

  @override
  String timelineWindow(String from, String to) {
    return 'à¦¸à¦®à¦¯à¦¼à¦•à¦¾à¦²';
  }

  @override
  String sessionCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '{n', one: '{n');
    return '$_temp0';
  }

  @override
  String get notifPhotoChannel => 'à¦…à¦—à§à¦°à¦—à¦¤à¦¿à¦° à¦›à¦¬à¦¿ à¦…à¦¨à§à¦¸à§à¦®à¦¾à¦°à¦•';

  @override
  String get notifPhotoChannelWhy => 'à¦¨à¦¤à§à¦¨ à¦…à¦—à§à¦°à¦—à¦¤à¦¿ à¦›à¦¬à¦¿ à¦¤à§‹à¦²à¦¾à¦° à¦¸à¦®à¦¯à¦¼ à¦¹à¦²à§‡ à¦®à¦¨à§‡ à¦•à¦°à¦¿à¦¯à¦¼à§‡ à¦¦à§‡à¦¯à¦¼';

  @override
  String get notifPhotoTitle => 'à¦…à¦—à§à¦°à¦—à¦¤à¦¿à¦° à¦›à¦¬à¦¿ à¦¤à§‹à¦²à¦¾à¦° à¦¸à¦®à¦¯à¦¼';

  @override
  String notifPhotoBody(int n) {
    return 'à¦¶à¦°à§€à¦°à§‡à¦° à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨à§‡à¦° à¦›à¦¬à¦¿ à¦¤à§‹à¦²à¦¾à¦° à¦¸à¦®à¦¯à¦¼ à¦¹à¦¯à¦¼à§‡à¦›à§‡à¥¤';
  }

  @override
  String get share => 'à¦¶à§‡à¦¯à¦¼à¦¾à¦°';

  @override
  String get sharePick => 'à¦¶à§‡à¦¯à¦¼à¦¾à¦° à¦•à¦°à¦¾à¦° à¦…à¦‚à¦¶ à¦¬à§‡à¦›à§‡ à¦¨à¦¿à¦¨';

  @override
  String get shareSession => 'à¦¸à§‡à¦¶à¦¨ à¦¶à§‡à¦¯à¦¼à¦¾à¦° à¦•à¦°à§à¦¨';

  @override
  String get shareStreak => 'à¦§à¦¾à¦°à¦¾à¦¬à¦¾à¦¹à¦¿à¦•à¦¤à¦¾ à¦¶à§‡à¦¯à¦¼à¦¾à¦° à¦•à¦°à§à¦¨';

  @override
  String get shareBody => 'à¦…à¦—à§à¦°à¦—à¦¤à¦¿ à¦¶à§‡à¦¯à¦¼à¦¾à¦° à¦•à¦°à§à¦¨';

  @override
  String get shareCompare => 'à¦¤à§à¦²à¦¨à¦¾à¦®à§‚à¦²à¦• à¦›à¦¬à¦¿ à¦¶à§‡à¦¯à¦¼à¦¾à¦° à¦•à¦°à§à¦¨';

  @override
  String get shareHint => 'à¦•à¦¾à¦°à§à¦¡ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¶à§‡à¦¯à¦¼à¦¾à¦° à¦•à¦°à§à¦¨';

  @override
  String get shareFailed => 'à¦¶à§‡à¦¯à¦¼à¦¾à¦° à¦•à¦°à¦¾ à¦¸à¦®à§à¦­à¦¬ à¦¹à§Ÿà¦¨à¦¿';

  @override
  String get shareWeekOf => '{date}-à¦à¦° à¦¸à¦ªà§à¦¤à¦¾à¦¹';

  @override
  String get shareStreakLabel => 'à¦Ÿà¦¾à¦¨à¦¾ à¦¦à¦¿à¦¨';

  @override
  String get shareSessionsLabel => 'à¦¸à§‡à¦¶à¦¨';

  @override
  String get shareVolumeLabel => 'à¦®à§‹à¦Ÿ à¦‰à¦¤à§à¦¤à§‹à¦²à¦¿à¦¤';

  @override
  String get shareSetsLabel => 'à¦¸à§‡à¦Ÿ';

  @override
  String get shareNothing => 'à¦¶à§‡à¦¯à¦¼à¦¾à¦° à¦•à¦°à¦¾à¦° à¦®à¦¤à§‹ à¦¤à¦¥à§à¦¯ à¦¨à§‡à¦‡';

  @override
  String get restForExercise => 'à¦à¦‡ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à§‡à¦° à¦¬à¦¿à¦¶à§à¦°à¦¾à¦®';

  @override
  String get restUsingDefault => 'à¦¡à¦¿à¦«à¦²à§à¦Ÿ à¦¬à¦¿à¦¶à§à¦°à¦¾à¦® à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à¦¾ à¦¹à¦šà§à¦›à§‡';

  @override
  String get restCustom => 'à¦•à¦¾à¦¸à§à¦Ÿà¦® à¦¬à¦¿à¦¶à§à¦°à¦¾à¦®';

  @override
  String get setType => 'à¦¸à§‡à¦Ÿà§‡à¦° à¦§à¦°à¦¨';

  @override
  String get setTypeNormal => 'à¦¸à¦¾à¦§à¦¾à¦°à¦£ à¦¸à§‡à¦Ÿ';

  @override
  String get setTypeWarmup => 'à¦“à¦¯à¦¼à¦¾à¦°à§à¦®à¦†à¦ª à¦¸à§‡à¦Ÿ';

  @override
  String get setTypeDrop => 'à¦¡à§à¦°à¦ª à¦¸à§‡à¦Ÿ';

  @override
  String get setTypeFailure => 'à¦¬à§à¦¯à¦°à§à¦¥à¦¤à¦¾ à¦ªà¦°à§à¦¯à¦¨à§à¦¤ (Failure)';

  @override
  String get setTypeHint => 'à¦¸à§‡à¦Ÿà§‡à¦° à¦¤à§€à¦¬à§à¦°à¦¤à¦¾ à¦à¦¬à¦‚ à¦‰à¦¦à§à¦¦à§‡à¦¶à§à¦¯ à¦šà¦¿à¦¹à§à¦¨à¦¿à¦¤ à¦•à¦°à§à¦¨';

  @override
  String get addWarmup => '+ à¦“à¦¯à¦¼à¦¾à¦°à§à¦®à¦†à¦ª à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String platesPerSide(String plates) {
    return 'à¦ªà§à¦°à¦¤à¦¿ à¦ªà¦¾à¦¶à§‡à¦° à¦ªà§à¦²à§‡à¦Ÿ';
  }

  @override
  String get howTo => 'à¦•à§€à¦­à¦¾à¦¬à§‡ à¦•à¦°à¦¬à§‡à¦¨';

  @override
  String get similar => 'à¦…à¦¨à§à¦°à§‚à¦ª à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®';

  @override
  String get primaryLabel => 'à¦ªà§à¦°à¦§à¦¾à¦¨';

  @override
  String get secondaryLabel => 'à¦¸à¦¹à¦¾à¦¯à¦¼à¦•';

  @override
  String get none => 'à¦•à¦¿à¦›à§à¦‡ à¦¨à¦¯à¦¼';

  @override
  String setCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '{n', one: '{n');
    return '$_temp0';
  }

  @override
  String volumeSuffix(String v) {
    return 'à¦­à¦²à¦¿à¦‰à¦®';
  }

  @override
  String get weeklyPlan => 'à¦¸à¦¾à¦ªà§à¦¤à¦¾à¦¹à¦¿à¦• à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾';

  @override
  String get yourRoutines => 'à¦†à¦ªà¦¨à¦¾à¦° à¦°à§à¦Ÿà¦¿à¦¨à¦¸à¦®à§‚à¦¹';

  @override
  String get noRoutines => 'à¦à¦–à¦¨à¦“ à¦•à§‹à¦¨à§‹ à¦°à§à¦Ÿà¦¿à¦¨ à¦¨à§‡à¦‡';

  @override
  String get newRoutine => 'à¦¨à¦¤à§à¦¨ à¦°à§à¦Ÿà¦¿à¦¨';

  @override
  String get routineName => 'à¦°à§à¦Ÿà¦¿à¦¨à§‡à¦° à¦¨à¦¾à¦®';

  @override
  String get schedule => 'à¦¸à¦®à¦¯à¦¼à¦¸à§‚à¦šà§€';

  @override
  String get addFromList => 'à¦¤à¦¾à¦²à¦¿à¦•à¦¾ à¦¥à§‡à¦•à§‡ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get addExercises => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get deleteRoutine => 'à¦°à§à¦Ÿà¦¿à¦¨ à¦®à§à¦›à§à¦¨';

  @override
  String exercisesWithCount(int n) {
    return '$nà¦Ÿà¦¿ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®';
  }

  @override
  String setDay(String day) {
    return 'à¦¦à¦¿à¦¨ à¦¨à¦¿à¦°à§à¦§à¦¾à¦°à¦£ à¦•à¦°à§à¦¨';
  }

  @override
  String get newRoutineName => 'à¦¨à¦¤à§à¦¨ à¦°à§à¦Ÿà¦¿à¦¨';

  @override
  String get dragToReorder => 'à¦•à§à¦°à¦® à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨ à¦•à¦°à¦¤à§‡ à¦Ÿà¦¾à¦¨à§à¦¨';

  @override
  String reorderHandle(String name) {
    return 'à¦ªà§à¦¨à¦ƒà¦•à§à¦°à¦® à¦¹à§à¦¯à¦¾à¦¨à§à¦¡à§‡à¦²';
  }

  @override
  String get removeFromRoutine => 'à¦°à§à¦Ÿà¦¿à¦¨ à¦¥à§‡à¦•à§‡ à¦¸à¦°à¦¾à¦¨';

  @override
  String get dropExercise => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¬à¦¾à¦¦ à¦¦à§‡à¦¬à§‡à¦¨?';

  @override
  String dropExerciseBody(String name) {
    return 'à¦à¦Ÿà¦¿ à¦à¦‡ à¦°à§à¦Ÿà¦¿à¦¨ à¦¥à§‡à¦•à§‡ à¦¸à¦°à¦¿à¦¯à¦¼à§‡ à¦¦à§‡à¦“à¦¯à¦¼à¦¾ à¦¹à¦¬à§‡à¥¤';
  }

  @override
  String get drop => 'à¦¬à¦¾à¦¦ à¦¦à¦¿à¦¨';

  @override
  String get addToWorkout => 'à¦“à¦¯à¦¼à¦¾à¦°à§à¦•à¦†à¦‰à¦Ÿà§‡ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get resetData => 'à¦¸à¦¬ à¦¡à§‡à¦Ÿà¦¾ à¦°à¦¿à¦¸à§‡à¦Ÿ à¦•à¦°à§à¦¨';

  @override
  String get resetTitle => 'à¦¸à¦®à¦¸à§à¦¤ à¦¡à§‡à¦Ÿà¦¾ à¦°à¦¿à¦¸à§‡à¦Ÿ à¦•à¦°à¦¬à§‡à¦¨?';

  @override
  String get resetBody => 'à¦†à¦ªà¦¨à¦¾à¦° à¦¸à¦®à¦¸à§à¦¤ à¦¸à§‡à¦¶à¦¨, à¦°à§à¦Ÿà¦¿à¦¨ à¦à¦¬à¦‚ à¦…à¦—à§à¦°à¦—à¦¤à¦¿ à¦®à§à¦›à§‡ à¦¯à¦¾à¦¬à§‡à¥¤ à¦à¦‡ à¦ªà¦¦à¦•à§à¦·à§‡à¦ªà¦Ÿà¦¿ à¦«à¦¿à¦°à¦¿à¦¯à¦¼à§‡ à¦¨à§‡à¦“à¦¯à¦¼à¦¾ à¦¯à¦¾à¦¬à§‡ à¦¨à¦¾à¥¤';

  @override
  String get resetConfirm => 'à¦¸à¦¬ à¦®à§à¦›à§‡ à¦«à§‡à¦²à§à¦¨';

  @override
  String get resetDone => 'à¦¡à§‡à¦Ÿà¦¾ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦°à¦¿à¦¸à§‡à¦Ÿ à¦¹à¦¯à¦¼à§‡à¦›à§‡';

  @override
  String get support => 'à¦¸à¦¹à¦¾à¦¯à¦¼à¦¤à¦¾';

  @override
  String get reportBug => 'à¦¸à¦®à¦¸à§à¦¯à¦¾à¦° à¦•à¦¥à¦¾ à¦œà¦¾à¦¨à¦¾à¦¨';

  @override
  String get requestFeature => 'à¦¨à¦¤à§à¦¨ à¦«à¦¿à¦šà¦¾à¦°à§‡à¦° à¦…à¦¨à§à¦°à§‹à¦§ à¦•à¦°à§à¦¨';

  @override
  String get starOnGithub => 'à¦—à¦¿à¦Ÿà¦¹à¦¾à¦¬à§‡ à¦¸à§à¦Ÿà¦¾à¦° à¦¦à¦¿à¦¨';

  @override
  String get buyCoffee => 'à¦à¦•à¦Ÿà¦¿ à¦•à¦«à¦¿ à¦–à¦¾à¦“à§Ÿà¦¾à¦¨';

  @override
  String get cantOpenLink => 'à¦²à¦¿à¦™à§à¦•à¦Ÿà¦¿ à¦–à§‹à¦²à¦¾ à¦¯à¦¾à¦¯à¦¼à¦¨à¦¿';

  @override
  String get preferences => 'à¦ªà¦›à¦¨à§à¦¦à¦¸à¦®à§‚à¦¹';

  @override
  String get theme => 'à¦¥à¦¿à¦®';

  @override
  String get darkTheme => 'à¦¡à¦¾à¦°à§à¦•';

  @override
  String get lightTheme => 'à¦²à¦¾à¦‡à¦Ÿ';

  @override
  String get languageLabel => 'à¦­à¦¾à¦·à¦¾';

  @override
  String get unitsLabel => 'à¦à¦•à¦•';

  @override
  String get restTimer => 'à¦¬à¦¿à¦¶à§à¦°à¦¾à¦®à§‡à¦° à¦Ÿà¦¾à¦‡à¦®à¦¾à¦°';

  @override
  String get alarmBlockedTitle => 'à¦…à§à¦¯à¦¾à¦²à¦¾à¦°à§à¦® à¦¬à¦¨à§à¦§ à¦°à§Ÿà§‡à¦›à§‡';

  @override
  String get alarmBlockedBody => 'à¦¬à¦¿à¦¶à§à¦°à¦¾à¦®à§‡à¦° à¦…à§à¦¯à¦¾à¦²à¦¾à¦°à§à¦® à¦¬à¦¾à¦œà¦¾à¦¨à§‹à¦° à¦œà¦¨à§à¦¯ à¦¨à§‹à¦Ÿà¦¿à¦«à¦¿à¦•à§‡à¦¶à¦¨à§‡à¦° à¦…à¦¨à§à¦®à¦¤à¦¿ à¦ªà§à¦°à¦¯à¦¼à§‹à¦œà¦¨à¥¤';

  @override
  String get alarmBlockedAction => 'à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸à§‡ à¦¯à¦¾à¦¨';

  @override
  String get alarmSound => 'à¦…à§à¦¯à¦¾à¦²à¦¾à¦°à§à¦®à§‡à¦° à¦¶à¦¬à§à¦¦';

  @override
  String get alarmDefaultName => 'à¦¡à¦¿à¦«à¦²à§à¦Ÿ à¦¬à¦¿à¦ª';

  @override
  String get alarmSoundHint => 'à¦¸à§‡à¦Ÿ à¦¶à§‡à¦·à§‡à¦° à¦¶à¦¬à§à¦¦ à¦¨à¦¿à¦°à§à¦§à¦¾à¦°à¦£ à¦•à¦°à§à¦¨';

  @override
  String get alarmChoose => 'à¦•à¦¾à¦¸à§à¦Ÿà¦® à¦…à¦¡à¦¿à¦“ à¦¬à§‡à¦›à§‡ à¦¨à¦¿à¦¨';

  @override
  String get alarmPreview => 'à¦¶à¦¬à§à¦¦ à¦¶à§à¦¨à§à¦¨';

  @override
  String get alarmReset => 'à¦¡à¦¿à¦«à¦²à§à¦Ÿà§‡ à¦«à§‡à¦°à¦¤ à¦¯à¦¾à¦¨';

  @override
  String get alarmTooLong => 'à¦…à¦¡à¦¿à¦“à¦Ÿà¦¿ à¦–à§à¦¬ à¦¬à¦¡à¦¼';

  @override
  String get alarmInvalid => 'à¦…à¦•à¦¾à¦°à§à¦¯à¦•à¦° à¦…à¦¡à¦¿à¦“ à¦«à¦¾à¦‡à¦²';

  @override
  String alarmChanged(String name) {
    return 'à¦…à§à¦¯à¦¾à¦²à¦¾à¦°à§à¦® à¦¶à¦¬à§à¦¦ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦¹à¦¯à¦¼à§‡à¦›à§‡';
  }

  @override
  String get alarmChangedDefault => 'à¦¡à¦¿à¦«à¦²à§à¦Ÿ à¦¶à¦¬à§à¦¦à§‡ à¦«à§‡à¦°à¦¤ à¦à¦¸à§‡à¦›à§‡';

  @override
  String get homeWidgets => 'à¦¹à§‹à¦® à¦‰à¦‡à¦œà§‡à¦Ÿ';

  @override
  String get addActivityWidget => 'à¦…à§à¦¯à¦¾à¦•à§à¦Ÿà¦¿à¦­à¦¿à¦Ÿà¦¿ à¦‰à¦‡à¦œà§‡à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get addStatsWidget => 'à¦ªà¦°à¦¿à¦¸à¦‚à¦–à§à¦¯à¦¾à¦¨ à¦‰à¦‡à¦œà§‡à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get pinUnsupported => 'à¦¡à¦¿à¦­à¦¾à¦‡à¦¸à§‡ à¦‰à¦‡à¦œà§‡à¦Ÿ à¦ªà¦¿à¦¨ à¦¸à¦®à¦°à§à¦¥à¦¿à¦¤ à¦¨à¦¯à¦¼';

  @override
  String get background => 'à¦ªà¦Ÿà¦­à§‚à¦®à¦¿';

  @override
  String get bgNone => 'à¦¸à¦¾à¦¦à¦¾à¦®à¦¾à¦Ÿà¦¾';

  @override
  String get bgDots => 'à¦¡à¦Ÿ à¦ªà§à¦¯à¦¾à¦Ÿà¦¾à¦°à§à¦¨';

  @override
  String get bgGrid => 'à¦—à§à¦°à¦¿à¦¡ à¦ªà§à¦¯à¦¾à¦Ÿà¦¾à¦°à§à¦¨';

  @override
  String get data => 'à¦¡à§‡à¦Ÿà¦¾';

  @override
  String get exportCsv => 'CSV à¦à¦•à§à¦¸à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à§à¦¨';

  @override
  String get exportBackup => 'à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª à¦à¦•à§à¦¸à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à§à¦¨';

  @override
  String get importBackup => 'à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª à¦‡à¦®à§à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à§à¦¨';

  @override
  String get importHint => 'à¦œà¦¿à¦ª à¦¬à¦¾ à¦œà§‡à¦¸à¦¨ à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª à¦«à¦¾à¦‡à¦² à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨';

  @override
  String get import => 'à¦‡à¦®à§à¦ªà§‹à¦°à§à¦Ÿ';

  @override
  String get chooseFile => 'à¦«à¦¾à¦‡à¦² à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨';

  @override
  String get importFromApp => 'à¦…à¦¨à§à¦¯ à¦…à§à¦¯à¦¾à¦ª à¦¥à§‡à¦•à§‡ à¦‡à¦®à§à¦ªà§‹à¦°à§à¦Ÿ';

  @override
  String get importUnknownFormat => 'à¦…à¦œà¦¾à¦¨à¦¾ à¦«à¦¾à¦‡à¦² à¦«à¦°à¦®à§à¦¯à¦¾à¦Ÿ';

  @override
  String get importZipNoWeights => 'à¦œà¦¿à¦ª à¦«à¦¾à¦‡à¦²à§‡ à¦•à§‹à¦¨à§‹ à¦“à¦œà¦¨ à¦¡à§‡à¦Ÿà¦¾ à¦¨à§‡à¦‡';

  @override
  String importWeights(int n) {
    return 'à¦“à¦œà¦¨ à¦‡à¦®à§à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à§à¦¨';
  }

  @override
  String get importReadFailed => 'à¦«à¦¾à¦‡à¦² à¦ªà§œà¦¾ à¦¸à¦®à§à¦­à¦¬ à¦¹à§Ÿà¦¨à¦¿';

  @override
  String get importUnitTitle => 'à¦“à¦œà¦¨à§‡à¦° à¦à¦•à¦• à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨';

  @override
  String get importUnitBody => 'à¦‡à¦®à§à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à¦¾ à¦¡à§‡à¦Ÿà¦¾ à¦•à§‹à¦¨ à¦à¦•à¦•à§‡ à¦¸à¦‚à¦°à¦•à§à¦·à¦¿à¦¤?';

  @override
  String get importNothing => 'à¦‡à¦®à§à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à¦¾à¦° à¦®à¦¤à§‹ à¦¡à§‡à¦Ÿà¦¾ à¦ªà¦¾à¦“à¦¯à¦¼à¦¾ à¦¯à¦¾à¦¯à¦¼à¦¨à¦¿';

  @override
  String importDone(int n) {
    return 'à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦‡à¦®à§à¦ªà§‹à¦°à§à¦Ÿ à¦¹à¦¯à¦¼à§‡à¦›à§‡';
  }

  @override
  String get aboutGymmane => 'Open GYM à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡';

  @override
  String get yourProfile => 'à¦†à¦ªà¦¨à¦¾à¦° à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦²';

  @override
  String get autofills => 'à¦•à§à¦¯à¦¾à¦²à¦•à§à¦²à§‡à¦Ÿà¦°à§‡ à¦¸à§à¦¬à¦¯à¦¼à¦‚à¦•à§à¦°à¦¿à¦¯à¦¼ à¦ªà§‚à¦°à¦£';

  @override
  String get nameLabel => 'à¦¨à¦¾à¦®';

  @override
  String get sexLabel => 'à¦²à¦¿à¦™à§à¦—';

  @override
  String get macroProtein => 'à¦ªà§à¦°à§‹à¦Ÿà¦¿à¦¨';

  @override
  String get macroCarbs => 'à¦•à¦¾à¦°à§à¦¬à¦¸';

  @override
  String get macroFat => 'à¦«à§à¦¯à¦¾à¦Ÿ';

  @override
  String get male => 'à¦ªà§à¦°à§à¦·';

  @override
  String get female => 'à¦®à¦¹à¦¿à¦²à¦¾';

  @override
  String get ageLabel => 'à¦¬à¦¯à¦¼à¦¸';

  @override
  String get heightLabel => 'à¦‰à¦šà§à¦šà¦¤à¦¾';

  @override
  String get weightLabel => 'à¦“à¦œà¦¨';

  @override
  String get weeklyGoal => 'à¦¸à¦¾à¦ªà§à¦¤à¦¾à¦¹à¦¿à¦• à¦²à¦•à§à¦·à§à¦¯';

  @override
  String get activityLabel => 'à¦¦à§ˆà¦¨à¦¿à¦• à¦•à¦¾à¦°à§à¦¯à¦•à§à¦·à¦®à¦¤à¦¾';

  @override
  String get addPhoto => 'à¦›à¦¬à¦¿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get removePhoto => 'à¦›à¦¬à¦¿ à¦¸à¦°à¦¾à¦¨';

  @override
  String get takePhoto => 'à¦›à¦¬à¦¿ à¦¤à§à¦²à§à¦¨';

  @override
  String get chooseGallery => 'à¦—à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦¥à§‡à¦•à§‡ à¦¬à§‡à¦›à§‡ à¦¨à¦¿à¦¨';

  @override
  String get backupCopied => 'à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª à¦•à§à¦²à¦¿à¦ªà¦¬à§‹à¦°à§à¦¡à§‡ à¦•à¦ªà¦¿ à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à§‡à¦›à§‡';

  @override
  String get backupImported => 'à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦ªà§à¦¨à¦°à§à¦¦à§à¦§à¦¾à¦° à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à§‡à¦›à§‡';

  @override
  String get backupFailed => 'à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª à¦¬à§à¦¯à¦°à§à¦¥ à¦¹à¦¯à¦¼à§‡à¦›à§‡';

  @override
  String get nothingToExport => 'à¦à¦•à§à¦¸à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à¦¾à¦° à¦œà¦¨à§à¦¯ à¦•à§‹à¦¨à§‹ à¦¡à§‡à¦Ÿà¦¾ à¦¨à§‡à¦‡';

  @override
  String get athlete => 'à¦…à§à¦¯à¦¾à¦¥à¦²à¦¿à¦Ÿ';

  @override
  String calculatorsCount(int n) {
    return '$nà¦Ÿà¦¿ à¦•à§à¦¯à¦¾à¦²à¦•à§à¦²à§‡à¦Ÿà¦°';
  }

  @override
  String get result => 'à¦«à¦²à¦¾à¦«à¦²';

  @override
  String get weightLifted => 'à¦‰à¦¤à§à¦¤à§‹à¦²à¦¿à¦¤ à¦“à¦œà¦¨';

  @override
  String get repsPerformed => 'à¦¸à¦®à§à¦ªà¦¨à§à¦¨ à¦°à§‡à¦ªà¦¸';

  @override
  String get neck => 'à¦˜à¦¾à§œ';

  @override
  String get waist => 'à¦•à§‹à¦®à¦°';

  @override
  String get hip => 'à¦¨à¦¿à¦¤à¦®à§à¦¬';

  @override
  String get targetWeight => 'à¦•à¦¾à¦™à§à¦•à§à¦·à¦¿à¦¤ à¦“à¦œà¦¨';

  @override
  String get workingWeight => 'à¦“à¦¯à¦¼à¦¾à¦°à§à¦•à¦¿à¦‚ à¦“à¦œà¦¨';

  @override
  String get activityLevel => 'à¦¶à¦¾à¦°à§€à¦°à¦¿à¦• à¦¸à¦•à§à¦°à¦¿à¦¯à¦¼à¦¤à¦¾';

  @override
  String get barWeight => 'à¦°à¦¡/à¦¬à¦¾à¦°à§‡à¦° à¦“à¦œà¦¨';

  @override
  String get perSide => 'à¦ªà§à¦°à¦¤à¦¿ à¦ªà¦¾à¦¶à§‡';

  @override
  String get justTheBar => 'à¦¶à§à¦§à§à¦®à¦¾à¦¤à§à¦° à¦¬à¦¾à¦°';

  @override
  String perSideCount(int n) {
    return 'à¦ªà§à¦°à¦¤à¦¿ à¦ªà¦¾à¦¶à§‡ $n';
  }

  @override
  String rampSet(String pct, int reps) {
    return 'à¦°â€à§à¦¯à¦¾à¦®à§à¦ª à¦¸à§‡à¦Ÿ';
  }

  @override
  String get toolNameRm => 'à¦“à§Ÿà¦¾à¦¨-à¦°à§‡à¦ª à¦®à§à¦¯à¦¾à¦•à§à¦¸';

  @override
  String get toolNameBmi => 'à¦¬à¦¿à¦à¦®à¦†à¦‡ à¦•à§à¦¯à¦¾à¦²à¦•à§à¦²à§‡à¦Ÿà¦°';

  @override
  String get toolNameCal => 'à¦•à§à¦¯à¦¾à¦²à§‹à¦°à¦¿ à¦•à§à¦¯à¦¾à¦²à¦•à§à¦²à§‡à¦Ÿà¦°';

  @override
  String get toolNameBf => 'à¦¬à¦¡à¦¿ à¦«à§à¦¯à¦¾à¦Ÿ à¦•à§à¦¯à¦¾à¦²à¦•à§à¦²à§‡à¦Ÿà¦°';

  @override
  String get toolNamePlate => 'à¦ªà§à¦²à§‡à¦Ÿ à¦•à§à¦¯à¦¾à¦²à¦•à§à¦²à§‡à¦Ÿà¦°';

  @override
  String get toolNameWarmup => 'à¦“à¦¯à¦¼à¦¾à¦°à§à¦®à¦†à¦ª à¦•à§à¦¯à¦¾à¦²à¦•à§à¦²à§‡à¦Ÿà¦°';

  @override
  String get toolTitleRm => 'à¦“à¦¯à¦¼à¦¾à¦¨-à¦°à§‡à¦ª à¦®à§à¦¯à¦¾à¦•à§à¦¸';

  @override
  String get toolTitleBmi => 'à¦¬à¦¡à¦¿ à¦®à§à¦¯à¦¾à¦¸ à¦‡à¦¨à¦¡à§‡à¦•à§à¦¸';

  @override
  String get toolTitleCal => 'à¦¦à§ˆà¦¨à¦¿à¦• à¦•à§à¦¯à¦¾à¦²à§‹à¦°à¦¿ à¦ªà§à¦°à¦¯à¦¼à§‹à¦œà¦¨';

  @override
  String get toolTitleBf => 'à¦¶à¦°à§€à¦°à§‡à¦° à¦šà¦°à§à¦¬à¦¿à¦° à¦¶à¦¤à¦•à¦°à¦¾ à¦¹à¦¾à¦°';

  @override
  String get toolTitlePlate => 'à¦ªà§à¦²à§‡à¦Ÿà§‡à¦° à¦¹à¦¿à¦¸à¦¾à¦¬';

  @override
  String get toolTitleWarmup => 'à¦“à¦¯à¦¼à¦¾à¦°à§à¦®à¦†à¦ª à¦°à§à¦Ÿà¦¿à¦¨';

  @override
  String get toolHintRm => 'à¦¯à§‡à¦•à§‹à¦¨à§‹ à¦“à¦œà¦¨à§‡à¦° à¦°à§‡à¦ªà¦¸ à¦¥à§‡à¦•à§‡ à¦¸à¦°à§à¦¬à¦¾à¦§à¦¿à¦• à¦‰à¦¤à§à¦¤à§‹à¦²à¦¨ à¦¹à¦¿à¦¸à¦¾à¦¬ à¦•à¦°à§à¦¨';

  @override
  String get toolHintCal => 'à¦¬à¦œà¦¾à¦¯à¦¼ à¦°à¦¾à¦–à¦¾, à¦•à¦®à¦¾à¦¨à§‹ à¦¬à¦¾ à¦¬à¦¾à§œà¦¾à¦¨à§‹à¦° à¦•à§à¦¯à¦¾à¦²à§‹à¦°à¦¿ à¦¹à¦¿à¦¸à¦¾à¦¬';

  @override
  String get toolHintBf => 'à¦‡à¦‰à¦à¦¸ à¦¨à§‡à¦­à¦¿ à¦ªà¦¦à§à¦§à¦¤à¦¿à¦¤à§‡ à¦¶à¦¾à¦°à§€à¦°à¦¿à¦• à¦šà¦°à§à¦¬à¦¿à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦ª';

  @override
  String get toolHintPlate => 'à¦¬à¦¾à¦°à§‡ à¦•à§‹à¦¨ à¦ªà§à¦²à§‡à¦Ÿà¦—à§à¦²à§‹ à¦¸à¦¾à¦œà¦¾à¦¤à§‡ à¦¹à¦¬à§‡ à¦¤à¦¾ à¦¦à§‡à¦–à§à¦¨';

  @override
  String get toolHintWarmup => 'à¦­à¦¾à¦°à§€ à¦¸à§‡à¦Ÿà§‡à¦° à¦†à¦—à§‡ à¦¨à¦¿à¦°à¦¾à¦ªà¦¦ à¦“à¦¯à¦¼à¦¾à¦°à§à¦®à¦†à¦ª à¦¸à§‡à¦Ÿ à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤ à¦•à¦°à§à¦¨';

  @override
  String get toolDescRm => 'à¦†à¦ªà¦¨à¦¾à¦° à¦¸à¦°à§à¦¬à¦¾à¦§à¦¿à¦• à¦¸à¦•à§à¦·à¦®à¦¤à¦¾ à¦†à¦¨à§à¦®à¦¾à¦¨ à¦•à¦°à§à¦¨à¥¤';

  @override
  String get toolDescBmi => 'à¦‰à¦šà§à¦šà¦¤à¦¾ à¦à¦¬à¦‚ à¦“à¦œà¦¨à§‡à¦° à¦¸à§à¦·à¦® à¦…à¦¨à§à¦ªà¦¾à¦¤ à¦œà¦¾à¦¨à§à¦¨à¥¤';

  @override
  String get toolDescCal => 'à¦†à¦ªà¦¨à¦¾à¦° à¦²à¦•à§à¦·à§à¦¯à§‡à¦° à¦œà¦¨à§à¦¯ à¦‰à¦ªà¦¯à§à¦•à§à¦¤ à¦–à¦¾à¦¦à§à¦¯ à¦ªà¦°à¦¿à¦®à¦¾à¦ª à¦•à¦°à§à¦¨à¥¤';

  @override
  String get toolDescBf => 'à¦¶à¦°à§€à¦°à§‡à¦° à¦šà¦°à§à¦¬à¦¿à¦° à¦†à¦¨à§à¦®à¦¾à¦¨à¦¿à¦• à¦¶à¦¤à¦¾à¦‚à¦¶ à¦œà¦¾à¦¨à§à¦¨à¥¤';

  @override
  String get toolDescPlate => 'à¦¬à¦¾à¦°à§‡ à¦ªà§à¦²à§‡à¦Ÿ à¦¸à¦¾à¦œà¦¾à¦¨à§‹à¦° à¦¸à¦ à¦¿à¦• à¦¨à¦¿à¦°à§à¦¦à§‡à¦¶à¦¿à¦•à¦¾à¥¤';

  @override
  String get toolDescWarmup => 'à¦†à¦˜à¦¾à¦¤ à¦à¦¡à¦¼à¦¿à¦¯à¦¼à§‡ à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à¦•à¦¾à¦°à§à¦¯à¦•à§à¦·à¦®à¦¤à¦¾à¦° à¦œà¦¨à§à¦¯ à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤à¦¿ à¦¨à¦¿à¦¨à¥¤';

  @override
  String get bmiUnderweight => 'à¦•à¦® à¦“à¦œà¦¨';

  @override
  String get bmiNormal => 'à¦¸à§à¦¬à¦¾à¦­à¦¾à¦¬à¦¿à¦• à¦“à¦œà¦¨';

  @override
  String get bmiOverweight => 'à¦…à¦¤à¦¿à¦°à¦¿à¦•à§à¦¤ à¦“à¦œà¦¨';

  @override
  String get bmiObese => 'à¦¸à§à¦¥à§‚à¦²à¦¤à¦¾';

  @override
  String get actSedentary => 'à¦…à¦²à¦¸ / à¦¬à¦¸à§‡ à¦•à¦¾à¦œ';

  @override
  String get actLight => 'à¦¹à¦¾à¦²à¦•à¦¾ à¦¸à¦•à§à¦°à¦¿à¦¯à¦¼ (à§§-à§© à¦¦à¦¿à¦¨/à¦¸à¦ªà§à¦¤à¦¾à¦¹)';

  @override
  String get actActive => 'à¦…à¦¤à§à¦¯à¦¨à§à¦¤ à¦¸à¦•à§à¦°à¦¿à¦¯à¦¼ (à§¬-à§­ à¦¦à¦¿à¦¨/à¦¸à¦ªà§à¦¤à¦¾à¦¹)';

  @override
  String get actModerate => 'à¦®à¦¾à¦à¦¾à¦°à¦¿ à¦¸à¦•à§à¦°à¦¿à¦¯à¦¼ (à§©-à§« à¦¦à¦¿à¦¨/à¦¸à¦ªà§à¦¤à¦¾à¦¹)';

  @override
  String get muscleChest => 'à¦¬à§à¦•';

  @override
  String get muscleBack => 'à¦ªà¦¿à¦ ';

  @override
  String get muscleShoulders => 'à¦•à¦¾à¦à¦§';

  @override
  String get muscleBiceps => 'à¦¬à¦¾à¦‡à¦¸à§‡à¦ªà§à¦¸';

  @override
  String get muscleTriceps => 'à¦Ÿà§à¦°à¦¾à¦‡à¦¸à§‡à¦ªà§à¦¸';

  @override
  String get muscleForearm => 'à¦…à¦—à§à¦°à¦¬à¦¾à¦¹à§';

  @override
  String get muscleTrapezius => 'à¦Ÿà§à¦°à§à¦¯à¦¾à¦ªà§‡à¦œà¦¿à¦¯à¦¼à¦¾à¦¸';

  @override
  String get muscleAbdomen => 'à¦…à§à¦¯à¦¾à¦¬à¦¸ / à¦ªà§‡à¦Ÿ';

  @override
  String get muscleObliques => 'à¦…à¦¬à¦²à¦¿à¦•à§à¦¸';

  @override
  String get muscleQuads => 'à¦•à§‹à¦¯à¦¼à¦¾à¦¡à§à¦°à¦¿à¦¸à§‡à¦ªà§à¦¸';

  @override
  String get muscleHamstrings => 'à¦¹à§à¦¯à¦¾à¦®à¦¸à§à¦Ÿà§à¦°à¦¿à¦‚à¦¸';

  @override
  String get muscleGlutes => 'à¦—à§à¦²à§à¦Ÿà¦¸';

  @override
  String get muscleCalves => 'à¦•à¦¾à¦«';

  @override
  String get mgChest => 'à¦¬à§à¦•';

  @override
  String get mgBack => 'à¦ªà¦¿à¦ ';

  @override
  String get mgLegs => 'à¦ªà¦¾';

  @override
  String get mgShoulders => 'à¦•à¦¾à¦à¦§';

  @override
  String get mgArms => 'à¦¹à¦¾à¦¤';

  @override
  String get mgCore => 'à¦•à§‹à¦°';

  @override
  String get equipBarbell => 'à¦¬à¦¾à¦°à¦¬à§‡à¦²';

  @override
  String get equipDumbbell => 'à¦¡à¦¾à¦®à§à¦¬à§‡à¦²';

  @override
  String get equipCable => 'à¦•à§‡à¦¬à¦²';

  @override
  String get equipMachine => 'à¦®à§‡à¦¶à¦¿à¦¨';

  @override
  String get equipBodyweight => 'à¦¶à¦°à§€à¦°à§‡à¦° à¦“à¦œà¦¨';

  @override
  String get equipWeighted => 'à¦…à¦¤à¦¿à¦°à¦¿à¦•à§à¦¤ à¦“à¦œà¦¨à¦¯à§à¦•à§à¦¤';

  @override
  String get equipBand => 'à¦°à§‡à¦œà¦¿à¦¸à§à¦Ÿà§à¦¯à¦¾à¦¨à§à¦¸ à¦¬à§à¦¯à¦¾à¦¨à§à¦¡';

  @override
  String get equipKettlebell => 'à¦•à§‡à¦Ÿà¦²à¦¬à§‡à¦²';

  @override
  String get equipRings => 'à¦œà¦¿à¦®à¦¨à§à¦¯à¦¾à¦¸à§à¦Ÿà¦¿à¦• à¦°à¦¿à¦‚à¦¸';

  @override
  String get equipOther => 'à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯';

  @override
  String get diffBeginner => 'à¦¶à¦¿à¦•à§à¦·à¦¾à¦¨à¦¬à¦¿à¦¸';

  @override
  String get diffAdvanced => 'à¦‰à¦¨à§à¦¨à¦¤';

  @override
  String get diffIntermediate => 'à¦®à¦¾à¦à¦¾à¦°à¦¿';

  @override
  String get about => 'à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡';

  @override
  String version(String v) {
    return 'à¦­à¦¾à¦°à§à¦¸à¦¨';
  }

  @override
  String get aboutBlurb => 'à¦¬à¦¿à¦œà§à¦žà¦¾à¦ªà¦¨à¦¹à§€à¦¨, à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦…à¦«à¦²à¦¾à¦‡à¦¨ à¦“à¦ªà§‡à¦¨ à¦¸à§‹à¦°à§à¦¸ à¦œà¦¿à¦® à¦²à¦—à¥¤';

  @override
  String get freeForever => 'à¦šà¦¿à¦°à¦•à¦¾à¦² à¦¬à¦¿à¦¨à¦¾à¦®à§‚à¦²à§à¦¯à§‡';

  @override
  String get freeForeverWhy => 'à¦•à§‹à¦¨à§‹ à¦ªà§‡à¦“à¦¯à¦¼à¦¾à¦² à¦¨à§‡à¦‡, à¦•à§‹à¦¨à§‹ à¦¸à¦¾à¦¬à¦¸à§à¦•à§à¦°à¦¿à¦ªà¦¶à¦¨ à¦¨à§‡à¦‡à¥¤';

  @override
  String get fullyOffline => 'à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦…à¦«à¦²à¦¾à¦‡à¦¨';

  @override
  String get fullyOfflineWhy => 'à¦†à¦ªà¦¨à¦¾à¦° à¦¡à§‡à¦Ÿà¦¾ à¦†à¦ªà¦¨à¦¾à¦° à¦¡à¦¿à¦­à¦¾à¦‡à¦¸à§‡à¦‡ à¦¸à§à¦°à¦•à§à¦·à¦¿à¦¤ à¦¥à¦¾à¦•à§‡à¥¤';

  @override
  String get yoursToTake => 'à¦†à¦ªà¦¨à¦¾à¦° à¦¡à§‡à¦Ÿà¦¾ à¦†à¦ªà¦¨à¦¾à¦° à¦¨à¦¿à¦¯à¦¼à¦¨à§à¦¤à§à¦°à¦£à§‡à¦‡';

  @override
  String get yoursToTakeWhy => 'à¦¯à§‡à¦•à§‹à¦¨à§‹ à¦¸à¦®à¦¯à¦¼ à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª à¦¨à¦¿à¦¨ à¦¬à¦¾ à¦à¦•à§à¦¸à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à§à¦¨à¥¤';

  @override
  String get whatsInside => 'à¦…à§à¦¯à¦¾à¦ªà§‡à¦° à¦¬à§ˆà¦¶à¦¿à¦·à§à¦Ÿà§à¦¯à¦¸à¦®à§‚à¦¹';

  @override
  String exercisesInside(int n) {
    return 'à¦¬à¦¿à¦¸à§à¦¤à§ƒà¦¤ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à§‡à¦° à¦²à¦¾à¦‡à¦¬à§à¦°à§‡à¦°à¦¿';
  }

  @override
  String get exercisesInsideWhy => 'à¦¸à¦ à¦¿à¦• à¦«à¦°à§à¦® à¦à¦¬à¦‚ à¦ªà¦¦à¦•à§à¦·à§‡à¦ªà¦¸à¦¹ à¦¶à¦¤ à¦¶à¦¤ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à¥¤';

  @override
  String get calculatorsInside => 'à¦ªà§à¦°à¦¯à¦¼à§‹à¦œà¦¨à§€à¦¯à¦¼ à¦•à§à¦¯à¦¾à¦²à¦•à§à¦²à§‡à¦Ÿà¦°';

  @override
  String get calculatorsInsideWhy => '1RM, BMI, à¦•à§à¦¯à¦¾à¦²à§‹à¦°à¦¿ à¦à¦¬à¦‚ à¦ªà§à¦²à§‡à¦Ÿ à¦•à§à¦¯à¦¾à¦²à¦•à§à¦²à§‡à¦Ÿà¦°à¥¤';

  @override
  String get mathInside => 'à¦¸à§à¦®à¦¾à¦°à§à¦Ÿ à¦¬à¦¿à¦¶à§à¦²à§‡à¦·à¦£';

  @override
  String get mathInsideWhy => 'à¦­à¦²à¦¿à¦‰à¦®, à¦›à¦¨à§à¦¦ à¦à¦¬à¦‚ à¦°à§‡à¦•à¦°à§à¦¡à§‡à¦° à¦¨à¦¿à¦–à§à¦à¦¤ à¦¹à¦¿à¦¸à¦¾à¦¬à¥¤';

  @override
  String get yourNumbers => 'à¦†à¦ªà¦¨à¦¾à¦° à¦ªà¦°à¦¿à¦¸à¦‚à¦–à§à¦¯à¦¾à¦¨';

  @override
  String get sessionsCaps => 'à¦¸à§‡à¦¶à¦¨';

  @override
  String get liftedCaps => 'à¦‰à¦¤à§à¦¤à§‹à¦²à¦¿à¦¤';

  @override
  String get streakCaps => 'à¦§à¦¾à¦°à¦¾à¦¬à¦¾à¦¹à¦¿à¦•à¦¤à¦¾';

  @override
  String daysUnit(int n) {
    return 'à¦¦à¦¿à¦¨';
  }

  @override
  String get restDefaultLabel => 'à¦¡à¦¿à¦«à¦²à§à¦Ÿ à¦¬à¦¿à¦¶à§à¦°à¦¾à¦®';

  @override
  String restDefault(int s) {
    return 'à¦¡à¦¿à¦«à¦²à§à¦Ÿ à¦¬à¦¿à¦¶à§à¦°à¦¾à¦®';
  }

  @override
  String get reset => 'à¦°à¦¿à¦¸à§‡à¦Ÿ';

  @override
  String get welcomeKicker => 'à¦¸à§à¦¬à¦¾à¦—à¦¤à¦®';

  @override
  String get welcomeBlurb => 'à¦šà¦²à§à¦¨ à¦†à¦ªà¦¨à¦¾à¦° à¦Ÿà§à¦°à§‡à¦¨à¦¿à¦‚ à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¸à§‡à¦Ÿ à¦†à¦ª à¦•à¦°à¦¿à¥¤';

  @override
  String get welcomeStart => 'à¦¶à§à¦°à§ à¦•à¦°à§à¦¨';

  @override
  String onbStep(int i, int n) {
    return 'à¦§à¦¾à¦ª $i / $n';
  }

  @override
  String get onbNameTitle => 'à¦†à¦ªà¦¨à¦¾à¦° à¦¨à¦¾à¦® à¦•à§€?';

  @override
  String get onbNameHint => 'à¦†à¦ªà¦¨à¦¾à¦° à¦¨à¦¾à¦® à¦²à¦¿à¦–à§à¦¨';

  @override
  String get onbNameWhy => 'à¦…à§à¦¯à¦¾à¦ªà¦Ÿà¦¿ à¦¬à§à¦¯à¦•à§à¦¤à¦¿à¦—à¦¤à¦•à§ƒà¦¤ à¦•à¦°à¦¤à§‡ à¦à¦Ÿà¦¿ à¦¬à§à¦¯à¦¬à¦¹à§ƒà¦¤ à¦¹à¦¯à¦¼à¥¤';

  @override
  String get onbBodyTitle => 'à¦¶à¦¾à¦°à§€à¦°à¦¿à¦• à¦—à¦ à¦¨';

  @override
  String get onbBodyWhy => 'à¦•à§à¦¯à¦¾à¦²à¦•à§à¦²à§‡à¦Ÿà¦° à¦à¦¬à¦‚ à¦…à¦¨à§à¦ªà¦¾à¦¤ à¦¨à¦¿à¦–à§à¦à¦¤ à¦•à¦°à¦¤à§‡ à¦¬à§à¦¯à¦¬à¦¹à§ƒà¦¤ à¦¹à¦¯à¦¼à¥¤';

  @override
  String get onbGoalTitle => 'à¦¸à¦¾à¦ªà§à¦¤à¦¾à¦¹à¦¿à¦• à¦²à¦•à§à¦·à§à¦¯';

  @override
  String get onbGoalWhy => 'à¦¸à¦ªà§à¦¤à¦¾à¦¹à§‡ à¦•à¦¤ à¦¦à¦¿à¦¨ à¦œà¦¿à¦® à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨?';

  @override
  String perWeek(int n) {
    return 'à¦¸à¦ªà§à¦¤à¦¾à¦¹à§‡ $n à¦¦à¦¿à¦¨';
  }

  @override
  String get onbUnitsTitle => 'à¦“à¦œà¦¨à§‡à¦° à¦à¦•à¦•';

  @override
  String get next => 'à¦ªà¦°à¦¬à¦°à§à¦¤à§€';

  @override
  String get back => 'à¦ªà¦¿à¦›à¦¨à§‡';

  @override
  String get skip2 => 'à¦à¦¡à¦¼à¦¿à¦¯à¦¼à§‡ à¦¯à¦¾à¦¨';

  @override
  String get madeWithLoveBy => 'MADE BY Arafath';

  @override
  String get sourceCode => 'à¦¸à§‹à¦°à§à¦¸ à¦•à§‹à¦¡';

  @override
  String get suggested => 'à¦ªà§à¦°à¦¸à§à¦¤à¦¾à¦¬à¦¿à¦¤';

  @override
  String get results => 'à¦«à¦²à¦¾à¦«à¦²';

  @override
  String get noMatches => 'à¦•à§‹à¦¨à§‹ à¦®à¦¿à¦² à¦ªà¦¾à¦“à¦¯à¦¼à¦¾ à¦¯à¦¾à¦¯à¦¼à¦¨à¦¿';

  @override
  String get tapToEdit => 'à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾ à¦•à¦°à¦¤à§‡ à¦¸à§à¦ªà¦°à§à¦¶ à¦•à¦°à§à¦¨';

  @override
  String get editEntry => 'à¦à¦¨à§à¦Ÿà§à¦°à¦¿ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾';

  @override
  String get editEntryHint => 'à¦“à¦œà¦¨ à¦¬à¦¾ à¦°à§‡à¦ªà¦¸ à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨ à¦•à¦°à§à¦¨';

  @override
  String get removeSet => 'à¦¸à§‡à¦Ÿ à¦®à§à¦›à§à¦¨';

  @override
  String get continueWorkout => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦šà¦¾à¦²à¦¿à¦¯à¦¼à§‡ à¦¯à¦¾à¦¬à§‡à¦¨?';

  @override
  String get continueWorkoutBody => 'à¦†à¦ªà¦¨à¦¾à¦° à¦à¦•à¦Ÿà¦¿ à¦…à¦¸à¦®à¦¾à¦ªà§à¦¤ à¦¸à§‡à¦¶à¦¨ à¦°à¦¯à¦¼à§‡à¦›à§‡à¥¤';

  @override
  String get addBodyWidget => 'à¦¬à¦¡à¦¿ à¦‰à¦‡à¦œà§‡à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get repsOnly => 'à¦¶à§à¦§à§à¦®à¦¾à¦¤à§à¦° à¦°à§‡à¦ªà¦¸';

  @override
  String get repsOnlyHint => 'à¦“à¦œà¦¨ à¦›à¦¾à¦¡à¦¼à¦¾ à¦¶à§à¦§à§à¦®à¦¾à¦¤à§à¦° à¦ªà§à¦¨à¦°à¦¾à¦¬à§ƒà¦¤à§à¦¤à¦¿à¦° à¦¹à¦¿à¦¸à¦¾à¦¬ à¦°à¦¾à¦–à§à¦¨';

  @override
  String get useDefaultArt => 'à¦¡à¦¿à¦«à¦²à§à¦Ÿ à¦›à¦¬à¦¿ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à§à¦¨';

  @override
  String daysShort(int n) {
    return '$n à¦¦à¦¿à¦¨';
  }

  @override
  String get focusCard => 'à¦†à¦œà¦•à§‡à¦° à¦«à§‹à¦•à¦¾à¦¸ à¦•à¦¾à¦°à§à¦¡';

  @override
  String get autoAdvance => 'à¦¸à§à¦¬à¦¯à¦¼à¦‚à¦•à§à¦°à¦¿à¦¯à¦¼ à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦¸à§‡à¦Ÿ';

  @override
  String get keepScreenOn => 'à¦¸à§à¦•à§à¦°à¦¿à¦¨ à¦šà¦¾à¦²à§ à¦°à¦¾à¦–à§à¦¨';

  @override
  String get lockWorkout => 'à¦¸à§‡à¦¶à¦¨ à¦²à¦• à¦•à¦°à§à¦¨';

  @override
  String get unlockWorkout => 'à¦†à¦¨à¦²à¦• à¦•à¦°à§à¦¨';

  @override
  String get lockedCaps => 'à¦²à¦• à¦•à¦°à¦¾';

  @override
  String get holdToUnlock => 'à¦†à¦¨à¦²à¦• à¦•à¦°à¦¤à§‡ à¦šà§‡à¦ªà§‡ à¦°à¦¾à¦–à§à¦¨';

  @override
  String get liveChannel => 'à¦²à¦¾à¦‡à¦­ à¦¸à§‡à¦¶à¦¨';

  @override
  String get liveChannelWhy => 'à¦šà¦²à¦®à¦¾à¦¨ à¦¸à§‡à¦¶à¦¨à§‡à¦° à¦…à¦¬à¦¸à§à¦¥à¦¾ à¦¨à§‹à¦Ÿà¦¿à¦«à¦¿à¦•à§‡à¦¶à¦¨à§‡ à¦ªà§à¦°à¦¦à¦°à§à¦¶à¦¨ à¦•à¦°à§‡';

  @override
  String liveSet(int n, int total) {
    return 'à¦¸à§‡à¦Ÿ $i/$n';
  }

  @override
  String get liveResting => 'à¦¬à¦¿à¦¶à§à¦°à¦¾à¦® à¦šà¦²à¦›à§‡ Â· {time}';

  @override
  String get liveAllDone => 'à¦¸à¦¬ à¦¸à§‡à¦Ÿ à¦¸à¦®à§à¦ªà¦¨à§à¦¨!';

  @override
  String get autoAdvanceHint => 'à¦¸à§‡à¦Ÿ à¦¸à¦®à§à¦ªà¦¨à§à¦¨ à¦¹à¦²à§‡ à¦¸à§à¦¬à¦¯à¦¼à¦‚à¦•à§à¦°à¦¿à¦¯à¦¼à¦­à¦¾à¦¬à§‡ à¦¬à¦¿à¦¶à§à¦°à¦¾à¦®à§‡à¦° à¦Ÿà¦¾à¦‡à¦®à¦¾à¦° à¦šà¦¾à¦²à§ à¦¹à¦¬à§‡';

  @override
  String get autoProgress => 'à¦¸à§à¦¬à¦¯à¦¼à¦‚à¦•à§à¦°à¦¿à¦¯à¦¼ à¦“à¦œà¦¨ à¦¬à§ƒà¦¦à§à¦§à¦¿';

  @override
  String autoProgressHint(String w) {
    return 'à¦²à¦•à§à¦·à§à¦¯ à¦…à¦°à§à¦œà¦¨à§‡ à¦ªà§à¦°à¦¤à¦¿ à¦¸à§‡à¦¶à¦¨à§‡ à¦…à¦²à§à¦ª à¦…à¦²à§à¦ª à¦“à¦œà¦¨ à¦¬à¦¾à¦¡à¦¼à¦¾à¦¨';
  }

  @override
  String get placePlates => 'à¦‰à¦ªà¦²à¦¬à§à¦§ à¦ªà§à¦²à§‡à¦Ÿà¦¸à¦®à§‚à¦¹';

  @override
  String get platesAll => 'à¦¸à¦•à¦² à¦ªà§à¦²à§‡à¦Ÿ';

  @override
  String platesOwned(int n) {
    return 'à¦†à¦ªà¦¨à¦¾à¦° à¦ªà§à¦²à§‡à¦Ÿà¦¸à¦®à§‚à¦¹';
  }

  @override
  String get platePairs => 'à¦ªà§à¦²à§‡à¦Ÿà§‡à¦° à¦œà§‹à¦¡à¦¼à¦¾';

  @override
  String plateAchievable(String w) {
    return 'à¦¸à¦®à§à¦­à¦¬à¦ªà¦° à¦“à¦œà¦¨';
  }

  @override
  String get autoWarmup => 'à¦¸à§à¦¬à¦¯à¦¼à¦‚à¦•à§à¦°à¦¿à¦¯à¦¼ à¦“à¦¯à¦¼à¦¾à¦°à§à¦®à¦†à¦ª';

  @override
  String get autoWarmupHint => 'à¦­à¦¾à¦°à§€ à¦•à¦¾à¦œà§‡à¦° à¦¸à§‡à¦Ÿà§‡à¦° à¦†à¦—à§‡ à¦ªà§à¦°à¦¯à¦¼à§‹à¦œà¦¨à§€à¦¯à¦¼ à¦“à¦¯à¦¼à¦¾à¦°à§à¦®à¦†à¦ª à¦¸à§‡à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§‡';

  @override
  String get trainReminder => 'à¦Ÿà§à¦°à§‡à¦¨à¦¿à¦‚ à¦…à¦¨à§à¦¸à§à¦®à¦¾à¦°à¦•';

  @override
  String get trainReminderHint => 'à¦ªà§à¦°à¦¤à¦¿à¦¦à¦¿à¦¨ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à§‡à¦° à¦¨à¦¿à¦°à§à¦¦à¦¿à¦·à§à¦Ÿ à¦¸à¦®à¦¯à¦¼à§‡ à¦¨à§‹à¦Ÿà¦¿à¦«à¦¿à¦•à§‡à¦¶à¦¨ à¦ªà¦¾à¦¨';

  @override
  String get notifTrainChannel => 'à¦Ÿà§à¦°à§‡à¦¨à¦¿à¦‚ à¦…à¦¨à§à¦¸à§à¦®à¦¾à¦°à¦•';

  @override
  String get notifTrainChannelWhy => 'à¦œà¦¿à¦® à¦•à¦°à¦¾à¦° à¦¸à¦®à¦¯à¦¼ à¦¹à¦²à§‡ à¦†à¦ªà¦¨à¦¾à¦•à§‡ à¦®à¦¨à§‡ à¦•à¦°à¦¿à¦¯à¦¼à§‡ à¦¦à§‡à¦¯à¦¼';

  @override
  String get notifTrainTitle => 'à¦†à¦œà¦•à§‡à¦° à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à§‡à¦° à¦¸à¦®à¦¯à¦¼';

  @override
  String get notifTrainBody => 'à¦²à§‹à¦¹à¦¾ à¦¡à¦¾à¦•à¦¾à¦° à¦¸à¦®à¦¯à¦¼ à¦¹à¦¯à¦¼à§‡à¦›à§‡ â€” à¦†à¦ªà¦¨à¦¾à¦° à¦¸à§‡à¦¶à¦¨ à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤à¥¤';

  @override
  String get exportCatalog => 'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦²à¦— à¦à¦•à§à¦¸à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à§à¦¨';

  @override
  String get importRoutine => 'à¦°à§à¦Ÿà¦¿à¦¨ à¦‡à¦®à§à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à§à¦¨';

  @override
  String get planIntro => 'à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾ à¦¬à¦¿à¦¬à¦°à¦£';

  @override
  String get planFormat => 'à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾à¦° à¦•à¦¾à¦ à¦¾à¦®à§‹';

  @override
  String planImported(int n) {
    return 'à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦¯à§à¦•à§à¦¤ à¦¹à¦¯à¦¼à§‡à¦›à§‡';
  }

  @override
  String get planNothing => 'à¦•à§‹à¦¨à§‹ à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾ à¦ªà¦¾à¦“à¦¯à¦¼à¦¾ à¦¯à¦¾à¦¯à¦¼à¦¨à¦¿';

  @override
  String get planFailed => 'à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾ à¦‡à¦®à§à¦ªà§‹à¦°à§à¦Ÿ à¦¬à§à¦¯à¦°à§à¦¥ à¦¹à¦¯à¦¼à§‡à¦›à§‡';

  @override
  String get routineGroup => 'à¦°à§à¦Ÿà¦¿à¦¨ à¦—à§à¦°à§à¦ª';

  @override
  String get newGroup => 'à¦¨à¦¤à§à¦¨ à¦—à§à¦°à§à¦ª';

  @override
  String get noGroup => 'à¦—à§à¦°à§à¦ª à¦›à¦¾à¦¡à¦¼à¦¾';

  @override
  String get groupNameHint => 'à¦—à§à¦°à§à¦ªà§‡à¦° à¦¨à¦¾à¦® à¦²à¦¿à¦–à§à¦¨';

  @override
  String get filters => 'à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦°';

  @override
  String get setsPlannedHint => 'à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¿à¦¤ à¦¸à§‡à¦Ÿà§‡à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾';

  @override
  String get nextTime => 'à¦ªà¦°à§‡à¦° à¦¬à¦¾à¦°';

  @override
  String get nextHold => 'à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦§à¦°à§‡ à¦°à¦¾à¦–à§à¦¨';

  @override
  String get bgPhoto => 'à¦ªà¦Ÿà¦­à§‚à¦®à¦¿à¦° à¦›à¦¬à¦¿';

  @override
  String get bgPhotoPick => 'à¦›à¦¬à¦¿ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨';

  @override
  String get bgPhotoChange => 'à¦›à¦¬à¦¿ à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨ à¦•à¦°à§à¦¨';

  @override
  String get bgPhotoRemove => 'à¦›à¦¬à¦¿ à¦¸à¦°à¦¾à¦¨';

  @override
  String get bgDim => 'à¦›à¦¬à¦¿à¦° à¦…à¦¨à§à¦§à¦•à¦¾à¦° à¦®à¦¾à¦¤à§à¦°à¦¾';

  @override
  String get dimSoft => 'à¦¹à¦¾à¦²à¦•à¦¾';

  @override
  String get dimMedium => 'à¦®à¦¾à¦à¦¾à¦°à¦¿';

  @override
  String get dimStrong => 'à¦—à¦¾à§';

  @override
  String get bgPhotoHint => 'à¦…à§à¦¯à¦¾à¦ªà§‡à¦° à¦ªà¦Ÿà¦­à§‚à¦®à¦¿à¦¤à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦¨à¦¿à¦œà¦¸à§à¦¬ à¦›à¦¬à¦¿ à¦¸à§‡à¦Ÿ à¦•à¦°à§à¦¨';

  @override
  String get reminderSmart => 'à¦¸à§à¦®à¦¾à¦°à§à¦Ÿ à¦…à¦¨à§à¦¸à§à¦®à¦¾à¦°à¦•';

  @override
  String get reminderFixed => 'à¦¨à¦¿à¦°à§à¦¦à¦¿à¦·à§à¦Ÿ à¦¸à¦®à¦¯à¦¼à§‡';

  @override
  String get reminderSmartHint => 'à¦†à¦ªà¦¨à¦¾à¦° à¦ªà§‚à¦°à§à¦¬à¦¬à¦°à§à¦¤à§€ à¦¸à§‡à¦¶à¦¨à§‡à¦° à¦¸à¦®à¦¯à¦¼à§‡à¦° à¦“à¦ªà¦° à¦­à¦¿à¦¤à§à¦¤à¦¿ à¦•à¦°à§‡ à¦¸à§à¦¬à¦¯à¦¼à¦‚à¦•à§à¦°à¦¿à¦¯à¦¼à¦­à¦¾à¦¬à§‡ à¦®à¦¨à§‡ à¦•à¦°à¦¿à¦¯à¦¼à§‡ à¦¦à§‡à¦¯à¦¼';

  @override
  String get reminderSmartEmpty => 'à¦ªà¦°à§à¦¯à¦¾à¦ªà§à¦¤ à¦¡à§‡à¦Ÿà¦¾ à¦¨à§‡à¦‡';

  @override
  String habitFocus(String day) {
    return 'à¦…à¦­à§à¦¯à¦¾à¦¸à§‡à¦° à¦«à§‹à¦•à¦¾à¦¸';
  }

  @override
  String get duplicateRoutine => 'à¦°à§à¦Ÿà¦¿à¦¨ à¦•à¦ªà¦¿ à¦•à¦°à§à¦¨';

  @override
  String copySuffix(String name) {
    return '(à¦•à¦ªà¦¿)';
  }

  @override
  String get saveAsRoutine => 'à¦°à§à¦Ÿà¦¿à¦¨ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à§à¦¨';

  @override
  String get savedAsRoutine => 'à¦°à§à¦Ÿà¦¿à¦¨ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¸à¦‚à¦°à¦•à§à¦·à¦¿à¦¤ à¦¹à¦¯à¦¼à§‡à¦›à§‡';

  @override
  String get templates => 'à¦Ÿà§‡à¦®à¦ªà§à¦²à§‡à¦Ÿà¦¸à¦®à§‚à¦¹';

  @override
  String get templatesHint => 'à¦œà¦¨à¦ªà§à¦°à¦¿à¦¯à¦¼ à¦“à¦¯à¦¼à¦¾à¦°à§à¦•à¦†à¦‰à¦Ÿ à¦Ÿà§‡à¦®à¦ªà§à¦²à§‡à¦Ÿ à¦¥à§‡à¦•à§‡ à¦¦à§à¦°à§à¦¤ à¦¶à§à¦°à§ à¦•à¦°à§à¦¨';

  @override
  String templateAdded(int n) {
    return 'à¦Ÿà§‡à¦®à¦ªà§à¦²à§‡à¦Ÿ à¦°à§à¦Ÿà¦¿à¦¨à§‡ à¦¯à§‹à¦— à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à§‡à¦›à§‡';
  }

  @override
  String get tplFullbody => 'à¦«à§à¦² à¦¬à¦¡à¦¿ à¦“à¦¯à¦¼à¦¾à¦°à§à¦•à¦†à¦‰à¦Ÿ';

  @override
  String get tplPpl => 'à¦ªà§à¦¶ à¦ªà§à¦² à¦²à§‡à¦—à§à¦¸ (PPL)';

  @override
  String get tplUpperlower => 'à¦†à¦ªà¦¾à¦° / à¦²à§‹à¦¯à¦¼à¦¾à¦° à¦¬à¦¡à¦¿';

  @override
  String get tplStronglifts => 'à¦¸à§à¦Ÿà§à¦°à¦‚à¦²à¦¿à¦«à¦Ÿà¦¸ à§«Ã—à§«';

  @override
  String get tplStartingstrength => 'à¦¸à§à¦Ÿà¦¾à¦°à§à¦Ÿà¦¿à¦‚ à¦¸à§à¦Ÿà§à¦°à§‡à¦¨à§à¦¥';

  @override
  String get tplHome => 'à¦¹à§‹à¦® à¦¬à¦¡à¦¿à¦“à¦¯à¦¼à§‡à¦Ÿ à¦“à¦¯à¦¼à¦¾à¦°à§à¦•à¦†à¦‰à¦Ÿ';

  @override
  String dayCount(int n) {
    return '$n à¦¦à¦¿à¦¨';
  }

  @override
  String get logRpe => 'RPE à¦¬à¦¾ RIR à¦²à¦— à¦•à¦°à§à¦¨';

  @override
  String get rpeTitle => 'à¦ªà§à¦°à¦šà§‡à¦·à§à¦Ÿà¦¾à¦° à¦¤à§€à¦¬à§à¦°à¦¤à¦¾ (RPE)';

  @override
  String get rpeHint => 'à§§ à¦¥à§‡à¦•à§‡ à§§à§¦ à¦¸à§à¦•à§‡à¦²à§‡ à¦¸à§‡à¦Ÿà§‡à¦° à¦ªà¦°à¦¿à¦¶à§à¦°à¦®à§‡à¦° à¦®à¦¾à¦¤à§à¦°à¦¾ à¦šà¦¿à¦¹à§à¦¨à¦¿à¦¤ à¦•à¦°à§à¦¨';

  @override
  String get superset => 'à¦¸à§à¦ªà¦¾à¦°à¦¸à§‡à¦Ÿ';

  @override
  String get supersetLink => 'à¦¸à§à¦ªà¦¾à¦°à¦¸à§‡à¦Ÿ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨';

  @override
  String get supersetHint => 'à¦¬à¦¿à¦¶à§à¦°à¦¾à¦® à¦›à¦¾à¦¡à¦¼à¦¾ à¦ªà¦°à¦ªà¦° à¦¦à§à¦Ÿà¦¿ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨ à¦•à¦°à§à¦¨';

  @override
  String get aiRoutine => 'à¦¸à§à¦®à¦¾à¦°à§à¦Ÿ à¦°à§à¦Ÿà¦¿à¦¨ à¦œà§‡à¦¨à¦¾à¦°à§‡à¦Ÿà¦°';

  @override
  String get aiIntro => 'à¦†à¦ªà¦¨à¦¾à¦° à¦²à¦•à§à¦·à§à¦¯ à¦“ à¦¸à¦°à¦žà§à¦œà¦¾à¦®à§‡à¦° à¦­à¦¿à¦¤à§à¦¤à¦¿à¦¤à§‡ à¦¨à¦¿à¦–à§à¦à¦¤ à¦°à§à¦Ÿà¦¿à¦¨ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨';

  @override
  String get aiStep1 => 'à¦†à¦ªà¦¨à¦¾à¦° à¦²à¦•à§à¦·à§à¦¯ à¦¬à§‡à¦›à§‡ à¦¨à¦¿à¦¨';

  @override
  String get aiStep2 => 'à¦‰à¦ªà¦²à¦¬à§à¦§ à¦¸à¦°à¦žà§à¦œà¦¾à¦® à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨';

  @override
  String get aiStep3 => 'à¦¸à¦¾à¦ªà§à¦¤à¦¾à¦¹à¦¿à¦• à¦¦à¦¿à¦¨ à¦¸à¦‚à¦–à§à¦¯à¦¾';

  @override
  String get aiStep4 => 'à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤à¦•à§ƒà¦¤ à¦°à§à¦Ÿà¦¿à¦¨ à¦¯à¦¾à¦šà¦¾à¦‡ à¦•à¦°à§à¦¨';

  @override
  String aiMissing(int n) {
    return 'à¦ªà§à¦°à¦¯à¦¼à§‹à¦œà¦¨à§€à¦¯à¦¼ à¦¤à¦¥à§à¦¯ à¦…à¦¨à§à¦ªà¦¸à§à¦¥à¦¿à¦¤';
  }

  @override
  String get importApps => 'à¦…à§à¦¯à¦¾à¦ª à¦¥à§‡à¦•à§‡ à¦‡à¦®à§à¦ªà§‹à¦°à§à¦Ÿ';

  @override
  String get importOtherCsv => 'à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ CSV à¦«à¦¾à¦‡à¦²';

  @override
  String get importAskApp => 'à¦•à§‹à¦¨ à¦…à§à¦¯à¦¾à¦ªà§‡à¦° à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª à¦à¦Ÿà¦¿?';

  @override
  String get awardFirstStepName => 'à¦ªà§à¦°à¦¥à¦® à¦ªà¦¦à¦•à§à¦·à§‡à¦ª';

  @override
  String get awardFirstStepLine => 'à¦†à¦ªà¦¨à¦¾à¦° à¦ªà§à¦°à¦¥à¦® à¦¸à§‡à¦¶à¦¨ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦¸à¦®à§à¦ªà¦¨à§à¦¨ à¦¹à§Ÿà§‡à¦›à§‡à¥¤';

  @override
  String get awardFirstWorkoutName => 'à¦ªà§à¦°à¦¥à¦® à¦“à¦¯à¦¼à¦¾à¦°à§à¦•à¦†à¦‰à¦Ÿ';

  @override
  String get awardFirstWorkoutLine => 'à¦¯à¦¾à¦¤à§à¦°à¦¾à¦° à¦¸à§‚à¦šà¦¨à¦¾ â€” à¦ªà§à¦°à¦¥à¦® à¦¦à¦¿à¦¨ à¦¸à¦®à§à¦ªà¦¨à§à¦¨à¥¤';

  @override
  String get awardFirstRoutineName => 'à¦ªà§à¦°à¦¥à¦® à¦°à§à¦Ÿà¦¿à¦¨';

  @override
  String get awardFirstRoutineLine => 'à¦à¦•à¦Ÿà¦¿ à¦¨à¦¿à¦œà¦¸à§à¦¬ à¦°à§à¦Ÿà¦¿à¦¨ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§‡à¦›à§‡à¦¨à¥¤';

  @override
  String get awardFirstRecordName => 'à¦ªà§à¦°à¦¥à¦® à¦ªà¦¿à¦†à¦°';

  @override
  String get awardFirstRecordLine => 'à¦†à¦ªà¦¨à¦¾à¦° à¦ªà§à¦°à¦¥à¦® à¦¬à§à¦¯à¦•à§à¦¤à¦¿à¦—à¦¤ à¦°à§‡à¦•à¦°à§à¦¡à¥¤';

  @override
  String get awardStreak3Name => 'à§© à¦¦à¦¿à¦¨à§‡à¦° à¦§à¦¾à¦°à¦¾à¦¬à¦¾à¦¹à¦¿à¦•à¦¤à¦¾';

  @override
  String get awardStreak3Line => 'à¦Ÿà¦¾à¦¨à¦¾ à§© à¦¦à¦¿à¦¨ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¸à¦®à§à¦ªà¦¨à§à¦¨à¥¤';

  @override
  String get awardTonne1Name => 'à§§ à¦Ÿà¦¨ à¦‰à¦¤à§à¦¤à§‹à¦²à¦¨';

  @override
  String get awardTonne1Line => 'à¦®à§‹à¦Ÿ à§§,à§¦à§¦à§¦ à¦•à§‡à¦œà¦¿ à¦“à¦œà¦¨ à¦‰à¦¤à§à¦¤à§‹à¦²à¦¨ à¦•à¦°à§‡à¦›à§‡à¦¨à¥¤';

  @override
  String get awardSets100Name => 'à§§à§¦à§¦à¦Ÿà¦¿ à¦¸à§‡à¦Ÿ';

  @override
  String get awardSets100Line => 'à§§à§¦à§¦à¦Ÿà¦¿ à¦•à¦¾à¦°à§à¦¯à¦•à¦°à§€ à¦¸à§‡à¦Ÿ à¦¸à¦®à§à¦ªà¦¨à§à¦¨ à¦•à¦°à§‡à¦›à§‡à¦¨à¥¤';

  @override
  String get awardHours10Name => 'à§§à§¦ à¦˜à¦£à§à¦Ÿà¦¾ à¦¶à§à¦°à¦®';

  @override
  String get awardHours10Line => 'à¦œà¦¿à¦®à§‡ à§§à§¦ à¦˜à¦£à§à¦Ÿà¦¾ à¦˜à¦¾à¦® à¦à¦°à¦¿à¦¯à¦¼à§‡à¦›à§‡à¦¨à¥¤';

  @override
  String get awardWorkouts50Name => 'à§«à§¦à¦Ÿà¦¿ à¦¸à§‡à¦¶à¦¨';

  @override
  String get awardWorkouts50Line => 'à§«à§¦à¦¤à¦® à¦¸à§‡à¦¶à¦¨ à¦‰à¦¦à¦¯à¦¾à¦ªà¦¨ à¦•à¦°à§à¦¨à¥¤';

  @override
  String get awardHours50Name => 'à§«à§¦ à¦˜à¦£à§à¦Ÿà¦¾ à¦¸à¦®à§à¦ªà¦¨à§à¦¨';

  @override
  String get awardHours50Line => 'à§«à§¦ à¦˜à¦£à§à¦Ÿà¦¾ à¦¨à¦¿à¦·à§à¦ à¦¾à¦° à¦¸à¦¾à¦¥à§‡ à¦Ÿà§à¦°à§‡à¦¨à¦¿à¦‚ à¦•à¦°à§‡à¦›à§‡à¦¨à¥¤';

  @override
  String get awardsTitle => 'à¦…à¦°à§à¦œà¦¨ à¦“ à¦®à§‡à¦¡à§‡à¦²';

  @override
  String get awardWon => 'à¦…à¦°à§à¦œà¦¿à¦¤ à¦®à§‡à¦¡à§‡à¦²!';

  @override
  String get yearTitle => 'à¦¬à¦¾à¦°à§à¦·à¦¿à¦• à¦ªà¦°à§à¦¯à¦¾à¦²à§‹à¦šà¦¨à¦¾';

  @override
  String get yearBestMonth => 'à¦¸à§‡à¦°à¦¾ à¦®à¦¾à¦¸';

  @override
  String get yearMonths => 'à¦®à¦¾à¦¸à¦¿à¦• à¦¹à¦¿à¦¸à¦¾à¦¬';

  @override
  String get awardSpinHint => 'à¦˜à§à¦°à¦¿à¦¯à¦¼à§‡ à¦®à§‡à¦¡à§‡à¦²à¦Ÿà¦¿ à¦¦à§‡à¦–à§à¦¨';

  @override
  String get awardUnlocked => 'à¦¨à¦¤à§à¦¨ à¦®à§‡à¦¡à§‡à¦² à¦†à¦¨à¦²à¦• à¦¹à¦¯à¦¼à§‡à¦›à§‡!';

  @override
  String get awardNice => 'à¦…à¦¸à¦¾à¦§à¦¾à¦°à¦£!';

  @override
  String get awardSaveImage => 'à¦®à§‡à¦¡à§‡à¦²à§‡à¦° à¦›à¦¬à¦¿ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à§à¦¨';

  @override
  String get awardSaved => 'à¦®à§‡à¦¡à§‡à¦² à¦—à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿à¦¤à§‡ à¦¸à¦‚à¦°à¦•à§à¦·à¦¿à¦¤ à¦¹à¦¯à¦¼à§‡à¦›à§‡';

  @override
  String get awardStreakBottom => 'à¦Ÿà¦¾à¦¨à¦¾ à¦¦à¦¿à¦¨';

  @override
  String get awardStreak7Top => 'à§§ à¦¸à¦ªà§à¦¤à¦¾à¦¹';

  @override
  String get awardStreak7Name => 'à§­ à¦¦à¦¿à¦¨à§‡à¦° à¦§à¦¾à¦°à¦¾à¦¬à¦¾à¦¹à¦¿à¦•à¦¤à¦¾';

  @override
  String get awardStreak7Line => 'à¦Ÿà¦¾à¦¨à¦¾ à¦à¦• à¦¸à¦ªà§à¦¤à¦¾à¦¹ à¦¸à¦•à§à¦°à¦¿à¦¯à¦¼ à¦¥à§‡à¦•à§‡à¦›à§‡à¦¨à¥¤';

  @override
  String get awardStreak30Top => 'à§§ à¦®à¦¾à¦¸';

  @override
  String get awardStreak30Name => 'à§©à§¦ à¦¦à¦¿à¦¨à§‡à¦° à¦§à¦¾à¦°à¦¾à¦¬à¦¾à¦¹à¦¿à¦•à¦¤à¦¾';

  @override
  String get awardStreak30Line => 'à¦Ÿà¦¾à¦¨à¦¾ à¦à¦• à¦®à¦¾à¦¸ à¦²à§‹à¦¹à¦¾à¦° à¦¸à¦¾à¦¥à§‡ à¦…à¦Ÿà§à¦Ÿà¥¤';

  @override
  String get awardWorkouts100Top => 'à¦¶à¦¤à¦•';

  @override
  String get awardWorkouts100Bottom => 'à¦¸à§‡à¦¶à¦¨';

  @override
  String get awardWorkouts100Name => 'à§§à§¦à§¦à¦Ÿà¦¿ à¦¸à§‡à¦¶à¦¨';

  @override
  String get awardWorkouts100Line => 'à§§à§¦à§¦à¦Ÿà¦¿ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦œà¦¿à¦® à¦¸à§‡à¦¶à¦¨ à¦¸à¦®à§à¦ªà¦¨à§à¦¨!';

  @override
  String get awardTonnes100Top => 'à§§à§¦à§¦ à¦Ÿà¦¨';

  @override
  String get awardTonnes100Bottom => 'à¦‰à¦¤à§à¦¤à§‹à¦²à¦¿à¦¤';

  @override
  String get awardTonnes100Name => 'à§§à§¦à§¦ à¦Ÿà¦¨ à¦•à§à¦²à¦¾à¦¬';

  @override
  String get awardTonnes100Line => 'à§§,à§¦à§¦,à§¦à§¦à§¦ à¦•à§‡à¦œà¦¿ à¦²à§‹à¦¹à¦¾ à¦¸à§à¦¥à¦¾à¦¨à¦¾à¦¨à§à¦¤à¦°à¦¿à¦¤ à¦•à¦°à§‡à¦›à§‡à¦¨à¥¤';

  @override
  String get awardSets1000Top => 'à§§,à§¦à§¦à§¦';

  @override
  String get awardSets1000Bottom => 'à¦¸à§‡à¦Ÿ';

  @override
  String get awardSets1000Name => 'à§§,à§¦à§¦à§¦ à¦¸à§‡à¦Ÿ';

  @override
  String get awardSets1000Line => 'à§§,à§¦à§¦à§¦à¦Ÿà¦¿ à¦¸à§‡à¦Ÿ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦¶à§‡à¦· à¦•à¦°à§‡à¦›à§‡à¦¨à¥¤';

  @override
  String get profile => 'à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦²';

  @override
  String get editProfile => 'à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾';

  @override
  String get pickBadge => 'à¦¬à§à¦¯à¦¾à¦œ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨';

  @override
  String get badgeTitle => 'à¦­à§‡à¦°à¦¿à¦«à¦¾à¦¯à¦¼à§‡à¦¡ à¦…à§à¦¯à¦¾à¦¥à¦²à¦¿à¦Ÿ à¦¬à§à¦¯à¦¾à¦œ';

  @override
  String get statWorkouts => 'à¦“à¦¯à¦¼à¦¾à¦°à§à¦•à¦†à¦‰à¦Ÿ';

  @override
  String get statTrained => 'à¦Ÿà§à¦°à§‡à¦¨à¦¿à¦‚ à¦¸à¦®à¦¯à¦¼';

  @override
  String get statSets => 'à¦¸à§‡à¦Ÿ';

  @override
  String get statLifted => 'à¦‰à¦¤à§à¦¤à§‹à¦²à¦¿à¦¤ à¦“à¦œà¦¨';

  @override
  String get statStreak => 'à¦§à¦¾à¦°à¦¾à¦¬à¦¾à¦¹à¦¿à¦•à¦¤à¦¾';

  @override
  String get statDays => 'à¦¦à¦¿à¦¨';

  @override
  String get unitHours => 'à¦˜à¦£à§à¦Ÿà¦¾';

  @override
  String get unitDays => 'à¦¦à¦¿à¦¨';

  @override
  String get snapshots => 'à¦¸à§à¦¨à§à¦¯à¦¾à¦ªà¦¶à¦Ÿ';

  @override
  String get snapNow => 'à¦à¦–à¦¨ à¦›à¦¬à¦¿ à¦¤à§à¦²à§à¦¨';

  @override
  String get calendarLegend => 'à¦•à§à¦¯à¦¾à¦²à§‡à¦¨à§à¦¡à¦¾à¦° à¦¸à¦‚à¦•à§‡à¦¤';

  @override
  String get addCover => 'à¦•à¦­à¦¾à¦° à¦«à¦Ÿà§‹ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get addTodayWidget => 'à¦†à¦œà¦•à§‡à¦° à¦‰à¦‡à¦œà§‡à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get monthTitle => '{month} {year}';

  @override
  String get photosCard => 'à¦…à¦—à§à¦°à¦—à¦¤à¦¿à¦° à¦›à¦¬à¦¿';

  @override
  String get handleLabel => 'à¦‡à¦‰à¦œà¦¾à¦°à¦¨à§‡à¦® / à¦¹à§à¦¯à¦¾à¦¨à§à¦¡à§‡à¦²';

  @override
  String get setupTitle => 'à¦¦à§à¦°à§à¦¤ à¦¶à§à¦°à§ à¦•à¦°à§à¦¨';

  @override
  String get setupHint => 'à¦†à¦ªà¦¨à¦¾à¦° à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦•à¦°à§à¦¨';

  @override
  String get setupWorkout => 'à¦ªà§à¦°à¦¥à¦® à¦¸à§‡à¦¶à¦¨ à¦¶à§à¦°à§ à¦•à¦°à§à¦¨';

  @override
  String get setupWeight => 'à¦¶à¦°à§€à¦°à§‡à¦° à¦“à¦œà¦¨ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get setupMeasures => 'à¦ªà¦°à¦¿à¦®à¦¾à¦ª à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨';

  @override
  String get setupPhoto => 'à¦ªà§à¦°à¦¥à¦® à¦›à¦¬à¦¿ à¦¤à§à¦²à§à¦¨';

  @override
  String get progressTitle => 'à¦†à¦ªà¦¨à¦¾à¦° à¦¶à¦¾à¦°à§€à¦°à¦¿à¦• à¦‰à¦¨à§à¦¨à¦¤à¦¿';

  @override
  String get tileVolume30 => 'à§©à§¦ à¦¦à¦¿à¦¨à§‡à¦° à¦­à¦²à¦¿à¦‰à¦®';

  @override
  String get tileAddWeight => 'à¦“à¦œà¦¨ à¦²à¦¿à¦–à§à¦¨';

  @override
  String get heatToneTitle => 'à¦¹à¦¿à¦Ÿà¦®à§à¦¯à¦¾à¦ªà§‡à¦° à¦°à¦™';

  @override
  String get heatToneHint => 'à¦ªà§‡à¦¶à§€à¦° à¦¸à¦•à§à¦°à¦¿à¦¯à¦¼à¦¤à¦¾à¦° à¦°à¦™à§‡à¦° à¦ªà§à¦¯à¦¾à¦²à§‡à¦Ÿ';

  @override
  String get thisWeekTitle => 'à¦à¦‡ à¦¸à¦ªà§à¦¤à¦¾à¦¹à§‡à¦° à¦ªà¦¾à¦°à¦«à¦°à¦®à§à¦¯à¦¾à¦¨à§à¦¸';

  @override
  String get momentsEmptyTitle => 'à¦•à§‹à¦¨à§‹ à¦¬à¦¿à¦¶à§‡à¦· à¦®à§à¦¹à§‚à¦°à§à¦¤ à¦¨à§‡à¦‡';

  @override
  String get deletePhotoTitle => 'à¦›à¦¬à¦¿ à¦®à§à¦›à¦¬à§‡à¦¨?';

  @override
  String get deletePhotoBody => 'à¦à¦‡ à¦›à¦¬à¦¿à¦Ÿà¦¿ à¦Ÿà¦¾à¦‡à¦®à¦²à¦¾à¦‡à¦¨ à¦¥à§‡à¦•à§‡ à¦šà¦¿à¦°à¦¤à¦°à§‡ à¦®à§à¦›à§‡ à¦¯à¦¾à¦¬à§‡à¥¤';

  @override
  String get awardsEarned => 'à¦…à¦°à§à¦œà¦¿à¦¤ à¦®à§‡à¦¡à§‡à¦²';

  @override
  String get awardsLocked => 'à¦²à¦• à¦•à¦°à¦¾ à¦®à§‡à¦¡à§‡à¦²';

  @override
  String get awardStreak100Name => 'à§§à§¦à§¦ à¦¦à¦¿à¦¨à§‡à¦° à¦§à¦¾à¦°à¦¾à¦¬à¦¾à¦¹à¦¿à¦•à¦¤à¦¾';

  @override
  String get awardWorkouts10Name => 'à§§à§¦à¦Ÿà¦¿ à¦¸à§‡à¦¶à¦¨';

  @override
  String get awardWorkouts10Line => 'à§§à§¦à¦Ÿà¦¿ à¦¸à§‡à¦¶à¦¨ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦•à¦°à§‡à¦›à§‡à¦¨à¥¤';

  @override
  String get awardWorkouts365Name => 'à§©à§¬à§«à¦Ÿà¦¿ à¦¸à§‡à¦¶à¦¨';

  @override
  String get awardWorkouts365Line => 'à¦¬à¦›à¦°à§‡à¦° à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦¦à¦¿à¦¨à§‡à¦° à¦¸à¦®à¦ªà¦°à¦¿à¦®à¦¾à¦£ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à¥¤';

  @override
  String get awardTonnes10Name => 'à§§à§¦ à¦Ÿà¦¨ à¦•à§à¦²à¦¾à¦¬';

  @override
  String get awardTonnes10Line => 'à§§à§¦,à§¦à§¦à§¦ à¦•à§‡à¦œà¦¿ à¦‰à¦¤à§à¦¤à§‹à¦²à¦¿à¦¤ à¦¹à¦¯à¦¼à§‡à¦›à§‡à¥¤';

  @override
  String get awardHours100Name => 'à§§à§¦à§¦ à¦˜à¦£à§à¦Ÿà¦¾ à¦Ÿà§à¦°à§‡à¦¨à¦¿à¦‚';

  @override
  String get awardHours100Line => 'à§§à§¦à§¦ à¦˜à¦£à§à¦Ÿà¦¾à¦° à¦¨à¦¿à¦·à§à¦ à¦¾à¦¬à¦¾à¦¨ à¦…à¦¨à§à¦¶à§€à¦²à¦¨à¥¤';

  @override
  String awardWonOn(String date) {
    return '$date-à¦ à¦…à¦°à§à¦œà¦¿à¦¤';
  }

  @override
  String awardProgressLabel(String value, String goal) {
    return '$current / $target';
  }

  @override
  String badgeName(String id) {
    return 'à¦¬à§à¦¯à¦¾à¦œà§‡à¦° à¦°à¦™';
  }

  @override
  String memberSince(String date) {
    return '$date à¦¥à§‡à¦•à§‡ à¦¸à¦¦à¦¸à§à¦¯';
  }

  @override
  String levelShort(int n) {
    return 'à¦²à§‡à¦­à§‡à¦² $n';
  }

  @override
  String levelToNext(int n, int next) {
    return 'à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦²à§‡à¦­à§‡à¦²à§‡ à¦ªà§Œà¦à¦›à¦¾à¦¤à§‡ à¦†à¦°à¦“ $n XP';
  }

  @override
  String heightCm(int n) {
    return '$n à¦¸à§‡à¦®à¦¿';
  }

  @override
  String heatToneName(String id) {
    return 'à¦ªà§à¦¯à¦¾à¦²à§‡à¦Ÿ';
  }

  @override
  String setsThisWeek(int n) {
    return 'à¦à¦‡ à¦¸à¦ªà§à¦¤à¦¾à¦¹à§‡ $nà¦Ÿà¦¿ à¦¸à§‡à¦Ÿ';
  }

  @override
  String weekOfGoal(int n, int goal) {
    return 'à¦²à¦•à§à¦·à§à¦¯à§‡à¦° $n%';
  }

  @override
  String momentCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '{n', one: '{n');
    return '$_temp0';
  }

  @override
  String get badgeHint => 'à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦²à§‡ à¦ªà§à¦°à¦¦à¦°à§à¦¶à¦¿à¦¤ à¦­à§‡à¦°à¦¿à¦«à¦¿à¦•à§‡à¦¶à¦¨ à¦Ÿà¦¿à¦• à¦šà¦¿à¦¹à§à¦¨';

  @override
  String get momentsEmptyHint => 'à¦¸à§‡à¦¶à¦¨ à¦¶à§‡à¦·à§‡ à¦›à¦¬à¦¿ à¦¤à§à¦²à§‡ à¦®à§à¦¹à§‚à¦°à§à¦¤à¦—à§à¦²à§‹ à¦§à¦°à§‡ à¦°à¦¾à¦–à§à¦¨à¥¤';

  @override
  String get awardStreak100Line => 'à¦Ÿà¦¾à¦¨à¦¾ à§§à§¦à§¦ à¦¦à¦¿à¦¨ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à§‡à¦° à¦…à¦¨à¦¨à§à¦¯ à¦°à§‡à¦•à¦°à§à¦¡!';

  @override
  String get coverLabel => 'à¦•à¦­à¦¾à¦° à¦«à¦Ÿà§‹';

  @override
  String get removeCover => 'à¦•à¦­à¦¾à¦° à¦¸à¦°à¦¾à¦¨';

  @override
  String get startTitle => 'à¦¶à§à¦°à§ à¦•à¦°à§à¦¨';

  @override
  String get logTitle => 'à¦¸à§‡à¦¶à¦¨ à¦²à¦— à¦•à¦°à§à¦¨';

  @override
  String get logHint => 'à¦¸à¦°à¦¾à¦¸à¦°à¦¿ à¦¬à¦¾ à¦°à§à¦Ÿà¦¿à¦¨ à¦¥à§‡à¦•à§‡ à¦¶à§à¦°à§ à¦•à¦°à§à¦¨';

  @override
  String get orStartFrom => 'à¦…à¦¥à¦¬à¦¾ à¦¶à§à¦°à§ à¦•à¦°à§à¦¨ à¦à¦–à¦¾à¦¨ à¦¥à§‡à¦•à§‡';

  @override
  String get pickExercisesOption => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨';

  @override
  String get chooseFocusOption => 'à¦ªà§‡à¦¶à§€à¦° à¦«à§‹à¦•à¦¾à¦¸ à¦¬à§‡à¦›à§‡ à¦¨à¦¿à¦¨';

  @override
  String get plannedRoutine => 'à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¿à¦¤ à¦°à§à¦Ÿà¦¿à¦¨';

  @override
  String get logWorkoutAction => 'à¦²à¦— à¦¶à§à¦°à§ à¦•à¦°à§à¦¨';

  @override
  String get logging => 'à¦²à¦—à¦¿à¦‚ à¦šà¦²à¦›à§‡';

  @override
  String get placesLabel => 'à¦¸à§à¦¥à¦¾à¦¨';

  @override
  String get undo => 'à¦ªà§‚à¦°à§à¦¬à¦¾à¦¬à¦¸à§à¦¥à¦¾à¦¯à¦¼ à¦«à§‡à¦°à¦¾à¦¨';

  @override
  String get deleteSet => 'à¦¸à§‡à¦Ÿ à¦®à§à¦›à§à¦¨';

  @override
  String get setDeleted => 'à¦¸à§‡à¦Ÿ à¦®à§à¦›à§‡ à¦«à§‡à¦²à¦¾ à¦¹à¦¯à¦¼à§‡à¦›à§‡';

  @override
  String get removeWarmup => 'à¦“à¦¯à¦¼à¦¾à¦°à§à¦®à¦†à¦ª à¦¸à¦°à¦¾à¦¨';

  @override
  String get addWeightAction => 'à¦“à¦œà¦¨ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get workoutOverview => 'à¦“à¦¯à¦¼à¦¾à¦°à§à¦•à¦†à¦‰à¦Ÿ à¦¸à¦¾à¦°à¦¾à¦‚à¦¶';

  @override
  String get allExercisesShort => 'à¦¸à¦•à¦² à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®';

  @override
  String setsDoneOf(int done, int total) {
    return '$total-à¦à¦° à¦®à¦§à§à¦¯à§‡ $doneà¦Ÿà¦¿ à¦¸à¦®à§à¦ªà¦¨à§à¦¨';
  }

  @override
  String get nowLabel => 'à¦à¦–à¦¨';

  @override
  String get deleteWorkout => 'à¦“à¦¯à¦¼à¦¾à¦°à§à¦•à¦†à¦‰à¦Ÿ à¦®à§à¦›à¦¬à§‡à¦¨?';

  @override
  String get deleteWorkoutBody => 'à¦à¦‡ à¦¸à§‡à¦¶à¦¨ à¦à¦¬à¦‚ à¦à¦° à¦¸à¦®à¦¸à§à¦¤ à¦¤à¦¥à§à¦¯ à¦¸à§à¦¥à¦¾à¦¯à¦¼à§€à¦­à¦¾à¦¬à§‡ à¦®à§à¦›à§‡ à¦¯à¦¾à¦¬à§‡à¥¤';

  @override
  String get themeAuto => 'à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦® à¦¡à¦¿à¦«à¦²à§à¦Ÿ';

  @override
  String get themeAutoHint => 'à¦¡à¦¿à¦­à¦¾à¦‡à¦¸à§‡à¦° à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦® à¦¥à¦¿à¦® à¦…à¦¨à§à¦¸à¦°à¦£ à¦•à¦°à¦¬à§‡';

  @override
  String get demoSizeTitle => 'à¦¡à§‡à¦®à§‹ à¦ªà§à¦°à¦¿à¦­à¦¿à¦‰ à¦¸à¦¾à¦‡à¦œ';

  @override
  String get demoLarge => 'à¦¬à¦¡à¦¼';

  @override
  String get demoSmall => 'à¦›à§‹à¦Ÿ';

  @override
  String get demoOff => 'à¦¬à¦¨à§à¦§';

  @override
  String get alarmStyleTitle => 'à¦…à§à¦¯à¦¾à¦²à¦¾à¦°à§à¦®à§‡à¦° à¦§à¦°à¦¨';

  @override
  String get alarmStyleLoud => 'à¦¶à¦¬à§à¦¦à¦¸à¦¹';

  @override
  String get alarmStyleQuiet => 'à¦®à§ƒà¦¦à§ à¦¶à¦¬à§à¦¦';

  @override
  String get alarmStyleVibrate => 'à¦¶à§à¦§à§à¦®à¦¾à¦¤à§à¦° à¦•à¦®à§à¦ªà¦¨';

  @override
  String get alarmStyleHint => 'à¦¬à¦¿à¦¶à§à¦°à¦¾à¦® à¦¶à§‡à¦· à¦¹à¦²à§‡ à¦•à§€à¦­à¦¾à¦¬à§‡ à¦¸à¦¤à¦°à§à¦• à¦•à¦°à¦¬à§‡ à¦¤à¦¾ à¦¨à¦¿à¦°à§à¦§à¦¾à¦°à¦£ à¦•à¦°à§à¦¨';

  @override
  String get suggestedPicks => 'à¦ªà§à¦°à¦¸à§à¦¤à¦¾à¦¬à¦¿à¦¤ à¦ªà¦›à¦¨à§à¦¦';

  @override
  String get moreOptions => 'à¦†à¦°à¦“ à¦…à¦ªà¦¶à¦¨';

  @override
  String get suggestInWorkouts => 'à¦“à¦¯à¦¼à¦¾à¦°à§à¦•à¦†à¦‰à¦Ÿà§‡ à¦ªà§à¦°à¦¸à§à¦¤à¦¾à¦¬ à¦•à¦°à§à¦¨';

  @override
  String get suggestInWorkoutsHint => 'à¦¸à§‡à¦¶à¦¨ à¦¤à§ˆà¦°à¦¿à¦° à¦¸à¦®à¦¯à¦¼ à¦à¦‡ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à¦Ÿà¦¿ à¦¸à§à¦ªà¦¾à¦°à¦¿à¦¶ à¦•à¦°à¦¬à§‡';

  @override
  String get dontSuggest => 'à¦ªà§à¦°à¦¸à§à¦¤à¦¾à¦¬ à¦•à¦°à¦¬à§‡à¦¨ à¦¨à¦¾';

  @override
  String get noLongerSuggested => 'à¦†à¦° à¦ªà§à¦°à¦¸à§à¦¤à¦¾à¦¬ à¦•à¦°à¦¾ à¦¹à¦¬à§‡ à¦¨à¦¾';

  @override
  String get onbPlaceTitle => 'à¦†à¦ªà¦¨à¦¿ à¦•à§‹à¦¥à¦¾à¦¯à¦¼ à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦•à¦°à§‡à¦¨?';

  @override
  String get onbPlaceWhy => 'à¦†à¦ªà¦¨à¦¾à¦° à¦¸à§à¦¥à¦¾à¦¨ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨ à¦¯à¦¾à¦¤à§‡ à¦¸à¦ à¦¿à¦• à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¸à§à¦ªà¦¾à¦°à¦¿à¦¶ à¦•à¦°à¦¾ à¦¯à¦¾à¦¯à¦¼à¥¤';

  @override
  String get onbPlaceGear => 'à¦‰à¦ªà¦²à¦¬à§à¦§ à¦¸à¦°à¦žà§à¦œà¦¾à¦®';

  @override
  String distanceCol(String unit) {
    return 'à¦¦à§‚à¦°à¦¤à§à¦¬';
  }

  @override
  String get timeCol => 'à¦¸à¦®à¦¯à¦¼';

  @override
  String get timeMinutesTitle => 'à¦®à¦¿à¦¨à¦¿à¦Ÿ';

  @override
  String get timeSecondsTitle => 'à¦¸à§‡à¦•à§‡à¦¨à§à¦¡';

  @override
  String distanceTitle(String unit) {
    return 'à¦¦à§‚à¦°à¦¤à§à¦¬';
  }

  @override
  String get holdLabel => 'à¦§à¦°à§‡ à¦°à¦¾à¦–à§à¦¨';

  @override
  String get stopLabel => 'à¦¥à¦¾à¦®à§à¦¨';

  @override
  String startHold(String time) {
    return 'à¦§à¦°à§‡ à¦°à¦¾à¦–à¦¾ à¦¶à§à¦°à§ à¦•à¦°à§à¦¨';
  }

  @override
  String get exerciseTypeLabel => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à§‡à¦° à¦§à¦°à¦¨';

  @override
  String get typeReps => 'à¦“à¦œà¦¨ à¦“ à¦°à§‡à¦ªà¦¸';

  @override
  String get typeTime => 'à¦¸à¦®à¦¯à¦¼à¦­à¦¿à¦¤à§à¦¤à¦¿à¦•';

  @override
  String get typeCardio => 'à¦•à¦¾à¦°à§à¦¡à¦¿à¦“ / à¦¦à§‚à¦°à¦¤à§à¦¬';

  @override
  String get exerciseTypeHint => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à¦Ÿà¦¿ à¦•à§€à¦­à¦¾à¦¬à§‡ à¦Ÿà§à¦°à§à¦¯à¦¾à¦• à¦•à¦°à¦¬à§‡à¦¨ à¦¤à¦¾ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨';

  @override
  String get howToLabel => 'à¦¨à¦¿à¦°à§à¦¦à§‡à¦¶à¦¨à¦¾';

  @override
  String get howToHint => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦®à¦Ÿà¦¿ à¦¸à¦ à¦¿à¦•à¦­à¦¾à¦¬à§‡ à¦•à¦°à¦¾à¦° à¦ªà¦¦à¦•à§à¦·à§‡à¦ªà¦—à§à¦²à§‹';

  @override
  String get editExercise => 'à¦¬à§à¦¯à¦¾à¦¯à¦¼à¦¾à¦® à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾';

  @override
  String get saveChanges => 'à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à§à¦¨';

  @override
  String get noStepsYet => 'à¦à¦–à¦¨à¦“ à¦•à§‹à¦¨à§‹ à¦ªà¦¦à¦•à§à¦·à§‡à¦ª à¦¯à§‹à¦— à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à¦¨à¦¿';

  @override
  String get addSteps => 'à¦ªà¦¦à¦•à§à¦·à§‡à¦ª à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get setTypeRestPause => 'à¦°à§‡à¦¸à§à¦Ÿ-à¦ªà¦œ à¦¸à§‡à¦Ÿ';

  @override
  String get planFormatNotes => 'à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾à¦° à¦•à¦¾à¦ à¦¾à¦®à§‹ à¦¸à¦‚à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦¨à§‹à¦Ÿ';

  @override
  String get planSets => 'à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¿à¦¤ à¦¸à§‡à¦Ÿ';

  @override
  String get planSetsHint => 'à¦ªà§à¦°à¦¤à¦¿ à¦¸à§‡à¦¶à¦¨à§‡ à¦•à¦¾à¦™à§à¦•à§à¦·à¦¿à¦¤ à¦¸à§‡à¦Ÿà§‡à¦° à¦²à¦•à§à¦·à§à¦¯';

  @override
  String get autoValue => 'à¦¸à§à¦¬à¦¯à¦¼à¦‚à¦•à§à¦°à¦¿à¦¯à¦¼';

  @override
  String get clearPlan => 'à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾ à¦®à§à¦›à§à¦¨';

  @override
  String get planChip => 'à¦ªà§à¦²à§à¦¯à¦¾à¦¨';

  @override
  String get shareRoutine => 'à¦°à§à¦Ÿà¦¿à¦¨ à¦¶à§‡à¦¯à¦¼à¦¾à¦° à¦•à¦°à§à¦¨';

  @override
  String get shareWeek => 'à¦¸à¦ªà§à¦¤à¦¾à¦¹ à¦¶à§‡à¦¯à¦¼à¦¾à¦° à¦•à¦°à§à¦¨';

  @override
  String get shareWeekHint => 'à¦ªà§à¦°à§‹ à¦¸à¦ªà§à¦¤à¦¾à¦¹à§‡à¦° à¦ªà¦¾à¦°à¦«à¦°à¦®à§à¦¯à¦¾à¦¨à§à¦¸ à¦•à¦¾à¦°à§à¦¡';

  @override
  String shareMessage(String name) {
    return 'Open GYM-à¦ à¦†à¦®à¦¾à¦° à¦…à¦—à§à¦°à¦—à¦¤à¦¿ à¦¦à§‡à¦–à§à¦¨!';
  }

  @override
  String get importRoutines => 'à¦°à§à¦Ÿà¦¿à¦¨ à¦‡à¦®à§à¦ªà§‹à¦°à§à¦Ÿ';

  @override
  String get importPasteHint => 'à¦•à§à¦²à¦¿à¦ªà¦¬à§‹à¦°à§à¦¡ à¦¥à§‡à¦•à§‡ à¦°à§à¦Ÿà¦¿à¦¨ à¦Ÿà§‡à¦•à§à¦¸à¦Ÿ à¦ªà§‡à¦¸à§à¦Ÿ à¦•à¦°à§à¦¨';

  @override
  String get pasteAction => 'à¦ªà§‡à¦¸à§à¦Ÿ à¦•à¦°à§à¦¨';

  @override
  String routineCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '{n', one: '{n');
    return '$_temp0';
  }

  @override
  String get useTheirSchedule => 'à¦¤à¦¾à¦¦à§‡à¦° à¦¸à¦®à¦¯à¦¼à¦¸à§‚à¦šà§€ à¦—à§à¦°à¦¹à¦£ à¦•à¦°à§à¦¨';

  @override
  String get useTheirScheduleHint => 'à¦°à§à¦Ÿà¦¿à¦¨à§‡à¦° à¦¨à¦¿à¦°à§à¦§à¦¾à¦°à¦¿à¦¤ à¦¦à¦¿à¦¨à¦—à§à¦²à§‹ à¦†à¦ªà¦¨à¦¾à¦° à¦•à§à¦¯à¦¾à¦²à§‡à¦¨à§à¦¡à¦¾à¦°à§‡ à¦¯à§à¦•à§à¦¤ à¦¹à¦¬à§‡';

  @override
  String get addToMyRoutines => 'à¦†à¦®à¦¾à¦° à¦°à§à¦Ÿà¦¿à¦¨à§‡ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String routinesAdded(int n) {
    return 'à¦°à§à¦Ÿà¦¿à¦¨ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦¯à§à¦•à§à¦¤ à¦¹à¦¯à¦¼à§‡à¦›à§‡';
  }

  @override
  String get nothingToImport => 'à¦‡à¦®à§à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à¦¾à¦° à¦®à¦¤à§‹ à¦•à¦¿à¦›à§ à¦¨à§‡à¦‡';

  @override
  String get aiStepCopy => 'à§§. à¦¤à¦¥à§à¦¯ à¦•à¦ªà¦¿ à¦•à¦°à§à¦¨';

  @override
  String get aiStepAsk => 'à§¨. à¦à¦†à¦‡-à¦•à§‡ à¦œà¦¿à¦œà§à¦žà¦¾à¦¸à¦¾ à¦•à¦°à§à¦¨';

  @override
  String get aiStepPaste => 'à§©. à¦«à¦²à¦¾à¦«à¦² à¦ªà§‡à¦¸à§à¦Ÿ à¦•à¦°à§à¦¨';

  @override
  String get copyForAi => 'à¦à¦†à¦‡-à¦à¦° à¦œà¦¨à§à¦¯ à¦•à¦ªà¦¿ à¦•à¦°à§à¦¨';

  @override
  String get copiedDone => 'à¦•à§à¦²à¦¿à¦ªà¦¬à§‹à¦°à§à¦¡à§‡ à¦•à¦ªà¦¿ à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à§‡à¦›à§‡';

  @override
  String get aiPasteHint => 'à¦à¦†à¦‡-à¦à¦° à¦¤à§ˆà¦°à¦¿ à¦•à¦°à¦¾ à¦Ÿà§‡à¦•à§à¦¸à¦Ÿ à¦à¦–à¦¾à¦¨à§‡ à¦ªà§‡à¦¸à§à¦Ÿ à¦•à¦°à§à¦¨';

  @override
  String get importAction => 'à¦‡à¦®à§à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦°à§à¦¨';

  @override
  String get showFormat => 'à¦«à¦°à¦®à§à¦¯à¦¾à¦Ÿ à¦¦à§‡à¦–à§à¦¨';

  @override
  String get shareAsFile => 'à¦«à¦¾à¦‡à¦² à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¶à§‡à¦¯à¦¼à¦¾à¦° à¦•à¦°à§à¦¨';

  @override
  String get recoveryTab => 'à¦°à¦¿à¦•à¦­à¦¾à¦°à¦¿';

  @override
  String recoveryOverall(int pct) {
    return 'à¦¸à¦¾à¦®à¦—à§à¦°à¦¿à¦• à¦°à¦¿à¦•à¦­à¦¾à¦°à¦¿';
  }

  @override
  String get recoveryAllFresh => 'à¦¸à¦®à¦¸à§à¦¤ à¦ªà§‡à¦¶à§€ à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤';

  @override
  String recoveryStill(String muscles) {
    return 'à¦°à¦¿à¦•à¦­à¦¾à¦°à¦¿ à¦šà¦²à¦›à§‡';
  }

  @override
  String get recoveryTired => 'à¦•à§à¦²à¦¾à¦¨à§à¦¤ à¦ªà§‡à¦¶à§€';

  @override
  String get recoveryFresh => 'à¦¸à¦¤à§‡à¦œ';

  @override
  String get recoveryHint => 'à¦ªà§‡à¦¶à§€à¦° à¦¬à¦¿à¦¶à§à¦°à¦¾à¦® à¦“ à¦ªà§à¦¨à¦°à¦¾à¦¯à¦¼ à¦ªà§à¦°à¦¶à¦¿à¦•à§à¦·à¦£à§‡à¦° à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤à¦¿ à¦¨à¦¿à¦°à§à¦¦à§‡à¦¶ à¦•à¦°à§‡';

  @override
  String recoveryPct(int pct) {
    return '$pct% à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤';
  }

  @override
  String readyInHours(int h) {
    return '$hours à¦˜à¦£à§à¦Ÿà¦¾à¦° à¦®à¦§à§à¦¯à§‡ à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤';
  }

  @override
  String get tplAbcd => 'à§ª-à¦¦à¦¿à¦¨à§‡à¦° à¦¸à§à¦ªà§à¦²à¦¿à¦Ÿ (ABCD)';

  @override
  String get tplAbcde => 'à§«-à¦¦à¦¿à¦¨à§‡à¦° à¦¬à§à¦°à§‹ à¦¸à§à¦ªà§à¦²à¦¿à¦Ÿ (ABCDE)';

  @override
  String get elapsedCaps => 'à¦…à¦¤à¦¿à¦¬à¦¾à¦¹à¦¿à¦¤ à¦¸à¦®à¦¯à¦¼';

  @override
  String get tapToSkip => 'à¦à¦¡à¦¼à¦¿à¦¯à¦¼à§‡ à¦¯à§‡à¦¤à§‡ à¦¸à§à¦ªà¦°à§à¦¶ à¦•à¦°à§à¦¨';

  @override
  String get tapToStop => 'à¦¥à¦¾à¦®à¦¾à¦¤à§‡ à¦¸à§à¦ªà¦°à§à¦¶ à¦•à¦°à§à¦¨';

  @override
  String get screenLocked => 'à¦¸à§à¦•à§à¦°à¦¿à¦¨ à¦²à¦• à¦•à¦°à¦¾';

  @override
  String get lockedHint => 'à¦†à¦¨à¦²à¦• à¦•à¦°à¦¤à§‡ à¦šà§‡à¦ªà§‡ à¦§à¦°à§‡ à¦°à¦¾à¦–à§à¦¨';

  @override
  String get liveDoneSet => 'à¦¸à§‡à¦Ÿ à¦¸à¦®à§à¦ªà¦¨à§à¦¨';

  @override
  String get liveSkipRest => 'à¦¬à¦¿à¦¶à§à¦°à¦¾à¦® à¦à¦¡à¦¼à¦¿à¦¯à¦¼à§‡ à¦¯à¦¾à¦¨';

  @override
  String get livePause => 'à¦¬à¦¿à¦°à¦¤à¦¿';

  @override
  String get liveResume => 'à¦šà¦¾à¦²à¦¿à¦¯à¦¼à§‡ à¦¯à¦¾à¦¨';

  @override
  String get liveNext => 'à¦ªà¦°à¦¬à¦°à§à¦¤à§€';

  @override
  String liveUpNext(String name) {
    return 'à¦ªà¦°à¦¬à¦°à§à¦¤à§€à¦¤à§‡ à¦†à¦¸à¦›à§‡';
  }

  @override
  String get stickerOpen => 'à¦¸à§à¦Ÿà¦¿à¦•à¦¾à¦° à¦–à§à¦²à§à¦¨';

  @override
  String get stickerNoPhoto => 'à¦•à§‹à¦¨à§‹ à¦›à¦¬à¦¿ à¦ªà¦¾à¦“à¦¯à¦¼à¦¾ à¦¯à¦¾à¦¯à¦¼à¦¨à¦¿';

  @override
  String get stickerWorkout => 'à¦“à¦¯à¦¼à¦¾à¦°à§à¦•à¦†à¦‰à¦Ÿ à¦¸à§à¦Ÿà¦¿à¦•à¦¾à¦°';

  @override
  String get stickerStreak => 'à¦§à¦¾à¦°à¦¾à¦¬à¦¾à¦¹à¦¿à¦•à¦¤à¦¾à¦° à¦¸à§à¦Ÿà¦¿à¦•à¦¾à¦°';

  @override
  String get stickerDate => 'à¦¤à¦¾à¦°à¦¿à¦–à§‡à¦° à¦¸à§à¦Ÿà¦¿à¦•à¦¾à¦°';

  @override
  String get stickerHint => 'à¦¸à§‹à¦¶à§à¦¯à¦¾à¦² à¦®à¦¿à¦¡à¦¿à¦¯à¦¼à¦¾à¦° à¦œà¦¨à§à¦¯ à¦¸à§à¦Ÿà¦¾à¦‡à¦²à¦¿à¦¶ à¦¸à§à¦Ÿà¦¿à¦•à¦¾à¦°';

  @override
  String get stickerSaved => 'à¦¸à§à¦Ÿà¦¿à¦•à¦¾à¦° à¦—à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿à¦¤à§‡ à¦¸à¦‚à¦°à¦•à§à¦·à¦¿à¦¤ à¦¹à¦¯à¦¼à§‡à¦›à§‡';

  @override
  String get stickerWeek => 'à¦¸à¦¾à¦ªà§à¦¤à¦¾à¦¹à¦¿à¦• à¦¸à§à¦Ÿà¦¿à¦•à¦¾à¦°';

  @override
  String get getReady => 'à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤ à¦¹à¦¨';

  @override
  String get stickerGallery => 'à¦—à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦¥à§‡à¦•à§‡ à¦›à¦¬à¦¿';

  @override
  String get stickerCamera => 'à¦•à§à¦¯à¦¾à¦®à§‡à¦°à¦¾ à¦¦à¦¿à¦¯à¦¼à§‡ à¦¤à§à¦²à§à¦¨';

  @override
  String get shareIntroTitle => 'à¦†à¦ªà¦¨à¦¾à¦° à¦¸à¦¾à¦«à¦²à§à¦¯ à¦¤à§à¦²à§‡ à¦§à¦°à§à¦¨';

  @override
  String get shareIntroBody => 'à¦…à¦¨à§à¦ªà§à¦°à§‡à¦°à¦£à¦¾à¦¦à¦¾à¦¯à¦¼à§€ à¦•à¦¾à¦°à§à¦¡ à¦†à¦•à¦¾à¦°à§‡ à¦¬à¦¨à§à¦§à§à¦¦à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦¶à§‡à¦¯à¦¼à¦¾à¦° à¦•à¦°à§à¦¨à¥¤';

  @override
  String get removedFromRoutine => 'à¦°à§à¦Ÿà¦¿à¦¨ à¦¥à§‡à¦•à§‡ à¦¸à¦°à¦¾à¦¨à§‹ à¦¹à¦¯à¦¼à§‡à¦›à§‡';

  @override
  String get radarTitle => 'à¦ªà§‡à¦¶à§€à¦° à¦­à¦¾à¦°à¦¸à¦¾à¦®à§à¦¯ à¦¬à¦¿à¦¶à§à¦²à§‡à¦·à¦£';

  @override
  String get radarHint => 'à¦¶à¦°à§€à¦°à§‡à¦° à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦…à¦‚à¦¶à§‡à¦° à¦­à¦²à¦¿à¦‰à¦® à¦…à¦¨à§à¦ªà¦¾à¦¤';

  @override
  String get radarEmpty => 'à¦­à¦¾à¦°à¦¸à¦¾à¦®à§à¦¯ à¦¦à§‡à¦–à¦¤à§‡ à¦…à¦¨à§à¦¤à¦¤ à¦•à¦¯à¦¼à§‡à¦•à¦Ÿà¦¿ à¦¸à§‡à¦¶à¦¨ à¦¸à¦®à§à¦ªà¦¨à§à¦¨ à¦•à¦°à§à¦¨';

  @override
  String get radarBalanced => 'à¦¶à¦¾à¦°à§€à¦°à¦¿à¦• à¦­à¦¾à¦°à¦¸à¦¾à¦®à§à¦¯ à¦šà¦®à§Žà¦•à¦¾à¦°';

  @override
  String radarFocus(String list) {
    return 'à¦®à¦¨à§‹à¦¯à§‹à¦—à§‡à¦° à¦ªà§à¦°à¦¯à¦¼à§‹à¦œà¦¨: $muscle';
  }

  @override
  String get countdownReady => 'à¦¶à§à¦°à§ à¦•à¦°à¦¤à§‡ à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤?';

  @override
  String get countdownSkip => 'à¦•à¦¾à¦‰à¦¨à§à¦Ÿà¦¡à¦¾à¦‰à¦¨ à¦à¦¡à¦¼à¦¿à¦¯à¦¼à§‡ à¦¯à¦¾à¦¨';

  @override
  String get countdownSetting => 'à¦¶à§à¦°à§à¦° à¦†à¦—à§‡ à¦•à¦¾à¦‰à¦¨à§à¦Ÿà¦¡à¦¾à¦‰à¦¨';

  @override
  String get effortSetting => 'à¦¸à§‡à¦Ÿ à¦ªà§à¦°à¦¤à¦¿ à¦ªà§à¦°à¦šà§‡à¦·à§à¦Ÿà¦¾à¦° à¦®à¦¾à¦¤à§à¦°à¦¾ à¦°à§‡à¦•à¦°à§à¦¡';

  @override
  String get effortHint => 'RPE: à§§à§¦ à¦®à¦¾à¦¨à§‡ à¦†à¦° à¦¸à¦®à§à¦­à¦¬ à¦¨à§Ÿ, à§® à¦®à¦¾à¦¨à§‡ à¦†à¦°à¦“ à§¨à¦Ÿà¦¿ à¦°à§‡à¦ª à¦¬à¦¾à¦•à¦¿ à¦›à¦¿à¦²à¥¤';

  @override
  String get rirTitle => 'à¦…à¦¬à¦¶à¦¿à¦·à§à¦Ÿ à¦°à§‡à¦ªà¦¸ (RIR)';

  @override
  String get rirHint => 'à§¦ à¦®à¦¾à¦¨à§‡ à¦¶à¦•à§à¦¤à¦¿à¦•à§à¦·à¦¯à¦¼, à§¨ à¦®à¦¾à¦¨à§‡ à¦†à¦°à¦“ à§¨à¦Ÿà¦¿ à¦°à§‡à¦ª à¦¬à¦¾à¦•à¦¿ à¦›à¦¿à¦²à¥¤';

  @override
  String get addWeekWidget => 'à¦¸à¦¾à¦ªà§à¦¤à¦¾à¦¹à¦¿à¦• à¦‰à¦‡à¦œà§‡à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨';

  @override
  String get gamificationSetting => 'à¦®à§‡à¦¡à§‡à¦² à¦“ à¦¸à§à¦¤à¦° à¦¬à¦¿à¦¨à§à¦¯à¦¾à¦¸';

}

