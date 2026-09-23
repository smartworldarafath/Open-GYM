// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get languageName => 'Deutsch';

  @override
  String vsLastMonthLabel(String pct) {
    return '$pct% gegenüber dem letzten Monat';
  }

  @override
  String levelStreakLabel(int level, String streak) {
    return 'Level $level · $streak';
  }

  @override
  String get save => 'SPEICHERN';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get cancelCaps => 'ABBRECHEN';

  @override
  String get deleteCaps => 'LÖSCHEN';

  @override
  String get done => 'FERTIG';

  @override
  String get set => 'Satz';

  @override
  String get home => 'START';

  @override
  String get progress => 'FORTSCHRITT';

  @override
  String get exercises => 'ÜBUNGEN';

  @override
  String get settings => 'EINSTELLUNGEN';

  @override
  String get today => 'HEUTE';

  @override
  String get thisWeek => 'DIESE WOCHE';

  @override
  String get recommended => 'EMPFOHLEN';

  @override
  String get goal => 'ZIEL';

  @override
  String get volume => 'VOLUMEN';

  @override
  String get setsToday => 'SÄTZE HEUTE';

  @override
  String get prs => 'PRs';

  @override
  String get todaysFocus => 'HEUTIGER FOKUS';

  @override
  String get todaysRoutine => 'HEUTIGES TRAINING';

  @override
  String get startWorkout => 'TRAINING STARTEN';

  @override
  String get routines => 'TRAININGSPLÄNE';

  @override
  String get tools => 'WERKZEUGE';

  @override
  String get firstSessionHint => 'Wähle deine Muskeln und protokolliere dein erstes Training';

  @override
  String exerciseCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n Übungen', one: '$n Übung');
    return '$_temp0';
  }

  @override
  String get pushDay => 'DRÜCKEN';

  @override
  String get pullDay => 'ZIEHEN';

  @override
  String get legDay => 'BEINE';

  @override
  String get pushFocus => 'Brust · Schultern · Trizeps';

  @override
  String get pullFocus => 'Rücken · Bizeps · Trapez';

  @override
  String get legFocus => 'Quadrizeps · Beinbeuger · Gesäß';

  @override
  String get train => 'TRAINIEREN';

  @override
  String get step1 => 'SCHRITT 1 VON 2';

  @override
  String get step2 => 'SCHRITT 2 VON 2';

  @override
  String get chooseFocus => 'WÄHLE DEINEN FOKUS';

  @override
  String get buildSession => 'TRAINING ZUSAMMENSTELLEN';

  @override
  String get tapMuscles => 'Tippe auf die Muskeln, die du trainieren möchtest — vorne und hinten.';

  @override
  String get noMusclesYet => 'Noch keine Muskeln ausgewählt — tippe auf den Körper, um zu beginnen.';

  @override
  String get continueBtn => 'WEITER';

  @override
  String get nothingForFocus => 'Noch nichts für diesen Fokus';

  @override
  String get goBackPick => 'Gehe zurück und wähle einen Muskel mit Übungen in deiner Bibliothek.';

  @override
  String pickedHint(int n) {
    return 'Wir haben ein Training für dich ausgewählt — tippe, um eine der $n Übungen hinzuzufügen oder zu entfernen.';
  }

  @override
  String get pickAnExercise => 'WÄHLE EINE ÜBUNG';

  @override
  String get searchAllExercises => 'Übung suchen…';

  @override
  String get noExercisesMatch => 'Keine passenden Übungen';

  @override
  String get createItInstead => 'Stattdessen eigene Übung erstellen';

  @override
  String startCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n ÜBUNGEN', one: '$n ÜBUNG');
    return 'START · $_temp0';
  }

  @override
  String get inProgress => 'IM GANG';

  @override
  String get paused => 'PAUSIERT';

  @override
  String get last => 'LETZTES';

  @override
  String get rest => 'PAUSE';

  @override
  String get skip => 'ÜBERSPRINGEN';

  @override
  String get addSet => '+ SATZ HINZUFÜGEN';

  @override
  String get finishSession => 'TRAINING BEENDEN';

  @override
  String get setDone => 'SATZ ERLEDIGT';

  @override
  String get nextExercise => 'NÄCHSTE ÜBUNG';

  @override
  String get skipExercise => 'Diese Übung überspringen?';

  @override
  String skipExerciseBody(String name) {
    return 'Du hast keine Sätze als fertig markiert, nicht wird gespeichert für \"$name\".';
  }

  @override
  String get dropExerciseAction => 'Übung entfernen';

  @override
  String get restOff => 'Aus';

  @override
  String get setCol => '#';

  @override
  String get repsCol => 'WIEDERHOLUNGEN';

  @override
  String weightCol(String unit) {
    return 'GEWICHT ($unit)';
  }

  @override
  String get repsTitle => 'WIEDERHOLUNGEN';

  @override
  String weightTitle(String unit) {
    return 'GEWICHT ($unit)';
  }

  @override
  String get sessionComplete => 'TRAINING GESPEICHERT';

  @override
  String get finishHeadlinePr => 'Neuer persönlicher Rekord';

  @override
  String get finishHeadlineGoal => 'Wochenziel erreicht';

  @override
  String get finishHeadlineStreak => 'Serie bleibt bestehen';

  @override
  String get finishHeadlineDefault => 'Ein weiteres Training geschafft';

  @override
  String finishBodyPr(int prs) {
    String _temp0 = intl.Intl.pluralLogic(
      prs,
      locale: localeName,
      other: '$prs exercises',
      one: 'an exercise',
    );
    return 'Du hast mehr geschafft als jemals in $_temp0. Es wurde zu deinen Rekorden hinzugefügt.';
  }

  @override
  String get finishBodyGoal => 'Du hast diese Woche die geplanten Trainings absolviert.';

  @override
  String finishBodyStreak(int streak) {
    return '$streak Tage am Stück. Der schwierige Teil is nicht aufzuhören.';
  }

  @override
  String get finishBodyDefault => 'Protokolliert und gezählt. Beständigkeit bewegt die Zahlen.';

  @override
  String get vsLastTime => 'IM VERGLEICH ZUM LETZTEN MAL';

  @override
  String get firstTime => 'Zum ersten Mal protokolliert';

  @override
  String prCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n neue Rekorde',
      one: '$n neuer Rekord',
    );
    return '$_temp0';
  }

  @override
  String get saveAndExit => 'SPEICHERN UND BEENDEN';

  @override
  String get duration => 'DAUER';

  @override
  String get setsCaps => 'SÄTZE';

  @override
  String exerciseXofY(int i, int n) {
    return 'ÜBUNG $i VON $n';
  }

  @override
  String get decrease => 'Verringern';

  @override
  String get increase => 'Erhöhen';

  @override
  String markSet(int n) {
    return 'Markiere Satz $n als erledigt';
  }

  @override
  String get pauseWorkout => 'Training pausieren';

  @override
  String get resumeWorkout => 'Training fortsetzen';

  @override
  String get discardTitle => 'Training verwerfen?';

  @override
  String get discardBody => 'Deine Sätze aus diesem Training gehen verloren.';

  @override
  String get keepTraining => 'Weiter trainieren';

  @override
  String get discard => 'Verwerfen';

  @override
  String get notifRestChannel => 'Pausentimer';

  @override
  String get notifRestChannelWhy => 'Informiert dich, wenn deine Satzpause vorbei ist';

  @override
  String get notifAlertChannel => 'Pausentimer (Hinweis)';

  @override
  String get notifAlertChannelWhy => 'Zeigt sofort einen Hinweis, wenn deine Pause vorbei ist';

  @override
  String get restOverTitle => 'Paue vorbei';

  @override
  String get restOverBody => 'Weiter gehts — der nächse Satz wartet.';

  @override
  String get totalVolume30d => 'GESAMT VOLUMEN · 30 TAGE';

  @override
  String get volumeCumulative => 'Laufende Summe jedes bewegten Kilos';

  @override
  String get volumeChartEmpty => 'Protokolliere ein Training und die Kurve beginnt hier';

  @override
  String get weekRhythm => 'WOCHENRHYTHMUS';

  @override
  String get weekRhythmHint => 'An welchen Tagen du tatsächlich trainierst.';

  @override
  String weekRhythmBest(String day) {
    return '$day ist dein Tag';
  }

  @override
  String get weekRhythmEmpty => 'Protokolliere ein Training und deine Woche nimmt hier Gestalt an.';

  @override
  String get allTime => 'GESAMT';

  @override
  String get allTimeSessions => 'TRAININGS';

  @override
  String get allTimeTime => 'ZEIT';

  @override
  String get allTimeVolume => 'GEHOBEN';

  @override
  String get allTimeSets => 'SÄTZE';

  @override
  String allTimeAvg(String time) {
    return '$time durchschnittlich pro Training';
  }

  @override
  String hoursShort(int n) {
    return '${n}h';
  }

  @override
  String get consistency => 'KONTINUITÄT';

  @override
  String sessionsLogged(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Trainings protokolliert',
      one: '$n Training protokolliert',
    );
    return '$_temp0';
  }

  @override
  String streakDays(int n) {
    return '$n-Tage-Serie';
  }

  @override
  String get bodyweight => 'KÖRPERGEWICHT';

  @override
  String get notLoggedYet => 'Noch nicht protokolliert';

  @override
  String get logShort => '+ PROTOKOLLIEREN';

  @override
  String get logBodyweight => 'KÖRPERGEWICHT PROTOKOLLIEREN';

  @override
  String get trackWeight => 'Verfolge dein Gewicht über die Zeit';

  @override
  String get muscleMap => 'MUSKELKARTE';

  @override
  String get days7 => '7D';

  @override
  String get days30 => '30D';

  @override
  String get heatLow => 'Unberührt';

  @override
  String get heatHigh => 'Volles Volumen';

  @override
  String get muscleMapEmpty => 'Protokolliere ein Training und deine Körperkarte beginnt hier aufzuleuchten.';

  @override
  String get muscleMapHint => 'Tippe auf einen Muskel, um zu sehen, was er abbekommen hat.';

  @override
  String muscleMapBehind(String names) {
    return 'Im Rückstand: $names';
  }

  @override
  String ofTarget(int pct) {
    return '$pct% des Ziels';
  }

  @override
  String get muscleSplit => 'MUSKELVERTEILUNG';

  @override
  String get splitEmpty => 'Trainiere, um zu sehen, wie sich dein Volumen auf die Muskelgruppen verteilt.';

  @override
  String get personalRecords => 'PERSÖNLICHE REKORDE';

  @override
  String get prEmpty => 'Deine Rekorde erscheinen hier, sobald du Sätze protokollierst.';

  @override
  String get strength1rm => 'KRAFT · GESCH. 1RM';

  @override
  String get strengthEmpty => 'Protokolliere eine Übung zweimal und ihre Kraftkurve erscheint hier.';

  @override
  String oneRmEst(String w) {
    return 'Gesch. 1RM $w';
  }

  @override
  String get restDayShort => 'Ruhetag';

  @override
  String get restDay => 'Ruhetag — nichts protokolliert.';

  @override
  String get delete => 'Löschen';

  @override
  String get deleteEntry => 'Diesen Eintrag löschen?';

  @override
  String deleteEntryBody(String name) {
    return '\"$name\" wird von diesem Tag sowie aus deinen Rekorden und Diagrammen entfernt.';
  }

  @override
  String get bodyweightHistory => 'VERLAUF';

  @override
  String get noBodyweightYet => 'Noch nichts protokolliert.';

  @override
  String get exercisesCaps => 'ÜBUNGEN';

  @override
  String get timeCaps => 'ZEIT';

  @override
  String libraryCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Übungen in deiner Bibliothek',
      one: '$n Übung in deiner Bibliothek',
    );
    return '$_temp0';
  }

  @override
  String get searchExercises => 'Übungen suchen';

  @override
  String get muscleFilter => 'MUSKEL';

  @override
  String get levelFilter => 'STUFE';

  @override
  String get newExercise => 'NEUE ÜBUNG';

  @override
  String get exerciseName => 'Übungsname';

  @override
  String get equipmentLabel => 'AUSRÜSTUNG';

  @override
  String get addExercise => 'ÜBUNG HINZUFÜGEN';

  @override
  String get advanced => 'ERWEITERT';

  @override
  String get demoMedia => 'DEMO';

  @override
  String get addMedia => 'Medien hinzufügen';

  @override
  String get mediaHint => 'Bild, GIF oder Video';

  @override
  String get changeMedia => 'Ändern';

  @override
  String get videoSelected => 'Video ausgewählt';

  @override
  String get favouritesOnly => 'Favoriten';

  @override
  String get noFavouritesYet => 'Noch keine Favoriten';

  @override
  String get noFavouritesHint => 'Tippe auf den Stern einer Übung, um sie hier zu speichern.';

  @override
  String get clearFilters => 'Filter löschen';

  @override
  String get noExercisesFound => 'Keine Übungen gefunden';

  @override
  String get noExercisesHint => 'Versuche eine andere Suche oder lösche deine Filter.';

  @override
  String get personalRecord => 'PERSÖNLICHER REKORD';

  @override
  String get history => 'VERLAUF';

  @override
  String get noHistory =>
      'Noch keine Trainings protokolliert. Trainiere diese Übung, um einen Verlauf aufzubauen.';

  @override
  String get notes => 'NOTIZEN';

  @override
  String get notePlaceholder => 'Hinweise, Aufbau, wie es sich angefühlt hat…';

  @override
  String showAllNotes(int n) {
    return 'Alle $n Notizen anzeigen';
  }

  @override
  String notHere(String gear, String place) {
    return 'Kein $gear bei $place';
  }

  @override
  String get notHereWhy => 'Ersetze es gegen etwas aus, das du heute tatsächlich belasten kannst.';

  @override
  String get altHere => 'DAS KANNST DU HIER MACHEN';

  @override
  String get places => 'MEINE ORTE';

  @override
  String get placesShort => 'Orte';

  @override
  String get placesHint =>
      'Gib an, was du an jedem Ort hast, und die Bibliothek zeigt nur Übungen, die du dort machen kannst.';

  @override
  String get placeAll => 'Überall';

  @override
  String get placeNew => 'Neuer Ort';

  @override
  String get placeNameLabel => 'NAME';

  @override
  String get placeNamePlaceholder => 'Zuhause, Fitnessstudio, Park…';

  @override
  String get placeGearLabel => 'WAS IST VORHANDEN';

  @override
  String placeGearCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n kinds of kit',
      one: '1 kind of kit',
      zero: 'Nothing ticked',
    );
    return '$_temp0';
  }

  @override
  String placeExercises(int n) {
    return '$n Übungen hier';
  }

  @override
  String get placeEmptyTitle => 'Trainiere, wo immer du auch bist';

  @override
  String get placeEmptyBody =>
      'Ein Ort enthält die Ausrüstung, die du dort hast. Wähle einen zum Starten und bearbeite ihn später.';

  @override
  String get placeDeleteTitle => 'Ort löschen';

  @override
  String get placeDeleteBody => 'Nur der Ort wird gelöscht — deine Übungen und Trainings bleiben erhalten.';

  @override
  String get placeGym => 'Fitnessstudio';

  @override
  String get placeHome => 'Zuhause';

  @override
  String get placeOutdoors => 'Draußen';

  @override
  String get placeFilterLabel => 'ORT';

  @override
  String get noGearOnly => 'Keine Ausrüstung';

  @override
  String placeActive(String name) {
    return 'Training bei $name';
  }

  @override
  String get journal => 'PROTOKOLL';

  @override
  String noteCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Notizen',
      one: '1 Notiz',
      zero: 'Keine Notizen',
    );
    return '$_temp0';
  }

  @override
  String get noteKindNote => 'Notiz';

  @override
  String get noteKindPlan => 'Plan';

  @override
  String get noteKindDone => 'Erfolg';

  @override
  String get noteKindPain => 'Beschwerde';

  @override
  String get noteFilterAll => 'Alle';

  @override
  String get newNote => 'Neue Notiz';

  @override
  String get editNote => 'Notiz bearbeiten';

  @override
  String get addNote => 'NOTIZ HINZUFÜGEN';

  @override
  String get noteEmptyTitle => 'Noch nichts geschrieben';

  @override
  String get noteEmptyBody =>
      'Hinweise, Pläne fürs nächste Mal, wie sich ein Training angefühlt hat — mit Fotos oder Video, wenn du möchtest.';

  @override
  String get noteNoneForExercise => 'Noch keine Notizen für diese Übung.';

  @override
  String get noteKindLabel => 'TYP';

  @override
  String get noteTextLabel => 'NOTIZ';

  @override
  String get noteDateLabel => 'DATUM';

  @override
  String get noteExerciseLabel => 'ÜBUNG';

  @override
  String get noteMediaLabel => 'FOTOS & VIDEO';

  @override
  String get noteGeneral => 'Keine Übung';

  @override
  String get noteAttach => 'Anhängen';

  @override
  String get noteRemoveMedia => 'Anhang entfernen';

  @override
  String get deleteNoteTitle => 'Notiz löschen';

  @override
  String get deleteNoteBody => 'Die Notiz und alle Änhänge werden dauerhaft gelöscht.';

  @override
  String get noteToday => 'Heute';

  @override
  String get noteYesterday => 'Gestern';

  @override
  String get noteAllNotes => 'Alle Notizen';

  @override
  String get noteCalendar => 'Kalender';

  @override
  String get noteNoneOnDay => 'An diesem Tag nichts geschrieben';

  @override
  String get noteAddOnDay => 'Notiz für diesen Tag';

  @override
  String get notePrevMonth => 'Vorheriger Monat';

  @override
  String get noteNextMonth => 'Nächster Monat';

  @override
  String noteMonthCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Notizen diesen Monat',
      one: '1 Notiz diesen Monat',
      zero: 'Keine Notizen diese Monat',
    );
    return '$_temp0';
  }

  @override
  String get measures => 'MESSUNGEN';

  @override
  String get measuresHint =>
      'Vom Hals bis zur Wade — beobachte, wie sich dein Körper verändert, nicht nur die Hantel.';

  @override
  String measureCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Messungen',
      one: '1 Messung',
      zero: 'Nichts protokolliert',
    );
    return '$_temp0';
  }

  @override
  String get measureNoneYet => 'Noch nicht protokolliert';

  @override
  String get measureHistory => 'VERLAUF';

  @override
  String get measureNeck => 'Hals';

  @override
  String get measureShoulders => 'Schultern';

  @override
  String get measureChest => 'Brust';

  @override
  String get measureArm => 'Arm';

  @override
  String get measureForearm => 'Unterarm';

  @override
  String get measureWaist => 'Taille';

  @override
  String get measureHips => 'Hüfte';

  @override
  String get measureThigh => 'Oberschenkel';

  @override
  String get measureCalf => 'Wade';

  @override
  String get measureBodyfat => 'Körperfett';

  @override
  String get timeline => 'ZEITVERLAUF';

  @override
  String get timelineHint =>
      'Gleiche Pose, gleicher Ort, gleiches Licht. In einem Jahr wirst du es kaum glauben.';

  @override
  String get timelineEmptyTitle => 'Dein erstes Foto startet die Zeitreise';

  @override
  String photoCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Fotos',
      one: '1 Foto',
      zero: 'Keine Fotos',
    );
    return '$_temp0';
  }

  @override
  String get poseFront => 'Vorne';

  @override
  String get poseSide => 'Seite';

  @override
  String get poseBack => 'Hinten';

  @override
  String get photoEvery => 'ERINNERE MICH';

  @override
  String photoEveryDays(int n) {
    return 'Alle $n Tage';
  }

  @override
  String get photoEveryOff => 'Nie';

  @override
  String get timelineEvery => 'GRUPPIEREN ALLE';

  @override
  String get custom => 'Eigene';

  @override
  String photoNextIn(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'Nächstes Foto in $n Tagen',
      one: 'Nächstes Foto morgen',
    );
    return '$_temp0';
  }

  @override
  String get photoDueNow => 'Foto fällig — mach es heute';

  @override
  String get addTodayPhotos => 'HEUTIGE FOTOS HINZUFÜGEN';

  @override
  String posePhoto(String pose) {
    return '$pose-Foto';
  }

  @override
  String get compare => 'VERGLEICHEN';

  @override
  String get compareNeedTwo =>
      'Nimm dieselbe Pose an zwei verschiedenen Tagen auf, um sie hier zu vergleichen.';

  @override
  String dayNumber(int n) {
    return 'Tag $n';
  }

  @override
  String daysApart(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Tage Abstand',
      one: '1 Tag Abstand',
      zero: 'Am selben Tag',
    );
    return '$_temp0';
  }

  @override
  String get deleteEntryTitle => 'Diesen Tag löschen';

  @override
  String get deleteDayBody => 'Die Fotos dieses Tages werden ebenfalls endgültig gelöscht.';

  @override
  String get timelinePhotos => 'Fotos';

  @override
  String get timelineBody => 'Muskelkarte';

  @override
  String get timelineBodyEmpty =>
      'Protokolliere ein Training und deine Muskelkarte füllt sich hier — ganz ohne Fotos.';

  @override
  String get timelineBodyHint => 'Aus deinen eigenen Sätzen erstellt — nichts muss hochgeladen werden.';

  @override
  String timelineWindow(String from, String to) {
    return '$from – $to';
  }

  @override
  String sessionCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Trainings',
      one: '1 Training',
      zero: 'Keine Trainings',
    );
    return '$_temp0';
  }

  @override
  String get notifPhotoChannel => 'Fortschrittsfotos';

  @override
  String get notifPhotoChannelWhy => 'Eine Erinnerung, wenn dein nächstes Fortschrittsfoto fällig ist.';

  @override
  String get notifPhotoTitle => 'Zeit für dein Fortschrittsfoto';

  @override
  String notifPhotoBody(int n) {
    return 'Seit dem letzten Foto sind $n Tage vergangen. Gleiche Pose, gleiches Licht.';
  }

  @override
  String get share => 'TEILEN';

  @override
  String get sharePick => 'Was möchtest du zeigen?';

  @override
  String get shareSession => 'Letztes Training';

  @override
  String get shareStreak => 'Serie und Beständigkeit';

  @override
  String get shareBody => 'Trainierte Muskeln';

  @override
  String get shareCompare => 'Vorher und nachher';

  @override
  String get shareHint =>
      'Die Karte wird auf deinem Handy erstellt. Nichts verlässt es, bevor du auswählst, wohin sie soll.';

  @override
  String get shareFailed => 'Die Karte konnte nicht erstellt werden';

  @override
  String get shareWeekOf => 'LETZTE 7 TAGE';

  @override
  String get shareStreakLabel => 'TAGE SERIE';

  @override
  String get shareSessionsLabel => 'TRAININGS';

  @override
  String get shareVolumeLabel => 'VOLUMEN';

  @override
  String get shareSetsLabel => 'SÄTZE';

  @override
  String get shareNothing => 'Protokolliere zuerst ein Training — bisher gibt es nichts zu zeigen';

  @override
  String get restForExercise => 'PAUSE FÜR DIESE ÜBUNG';

  @override
  String get restUsingDefault => 'Deine Standardeinstellung';

  @override
  String get restCustom => 'Nur für diese Übung';

  @override
  String get setType => 'SATZART';

  @override
  String get setTypeNormal => 'Arbeitssatz';

  @override
  String get setTypeWarmup => 'Aufwärmsatz';

  @override
  String get setTypeDrop => 'Dropsatz';

  @override
  String get setTypeFailure => 'Bis zum Muskelversagen';

  @override
  String get setTypeHint => 'Aufwärmsätze zählen nicht für dein Volumen und deine Rekorde.';

  @override
  String get addWarmup => 'AUFWÄRMEN';

  @override
  String platesPerSide(String plates) {
    return 'Pro Seite: $plates';
  }

  @override
  String get howTo => 'ANLEITUNG';

  @override
  String get similar => 'ÄHNLICH';

  @override
  String get primaryLabel => 'PRIMÄR';

  @override
  String get secondaryLabel => 'SEKUNDÄR';

  @override
  String get none => 'Keine';

  @override
  String setCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n Sätze', one: '$n Satz');
    return '$_temp0';
  }

  @override
  String volumeSuffix(String v) {
    return '$v Volumen';
  }

  @override
  String get weeklyPlan => 'WOCHENPLAN';

  @override
  String get yourRoutines => 'DEINE TRAININGSPLÄNE';

  @override
  String get noRoutines => 'Noch keine Trainingspläne. Erstelle einen und füge deine Übungen hinzu.';

  @override
  String get newRoutine => 'NEUER TRAININGSPLAN';

  @override
  String get routineName => 'Name des Trainingsplans';

  @override
  String get schedule => 'ZEITPLAN';

  @override
  String get addFromList => 'Füge Übungen aus der Liste unten hinzu.';

  @override
  String get addExercises => 'Übungen hinzufügen';

  @override
  String get deleteRoutine => 'Diesen Trainingsplan löschen?';

  @override
  String exercisesWithCount(int n) {
    return 'ÜBUNGEN · $n';
  }

  @override
  String setDay(String day) {
    return '$day FESTLEGEN';
  }

  @override
  String get newRoutineName => 'Neuer Trainingsplan';

  @override
  String get dragToReorder =>
      'Gedrückt halten und ziehen zum Sortieren — dies ist die Reihenfolge deines Trainings.';

  @override
  String reorderHandle(String name) {
    return '$name neu sortieren';
  }

  @override
  String get removeFromRoutine => 'Aus Trainingsplan entfernen';

  @override
  String get dropExercise => 'Diese Übung entfernen?';

  @override
  String dropExerciseBody(String name) {
    return '\"$name\" wird aus diesem Training entfernt. Nichts Protokolliertes geht verloren.';
  }

  @override
  String get drop => 'Entfernen';

  @override
  String get addToWorkout => 'ÜBUNG HINZUFÜGEN';

  @override
  String get resetData => 'Alle meine Daten löschen';

  @override
  String get resetTitle => 'Alles löschen?';

  @override
  String get resetBody =>
      'Trainings, Rekorde, Trainingspläne, Notizen und Profil. Dies kann nicht rückgängig gemacht werden — exportiere vorher ein Backup, falls du es noch brauchen könntest.';

  @override
  String get resetConfirm => 'Alles löschen';

  @override
  String get resetDone => 'Alle Daten gelöscht';

  @override
  String get support => 'HILFE';

  @override
  String get reportBug => 'Fehler melden';

  @override
  String get requestFeature => 'Funktion vorschlagen';

  @override
  String get starOnGithub => 'Auf GitHub mit Stern markieren';

  @override
  String get buyCoffee => 'Kauf mir einen Kaffee';

  @override
  String get cantOpenLink => 'Der Link konnte nicht geöffnet werden';

  @override
  String get preferences => 'EINSTELLUNGEN';

  @override
  String get theme => 'Erscheinungsbild';

  @override
  String get darkTheme => 'Dunkel';

  @override
  String get lightTheme => 'Hell';

  @override
  String get languageLabel => 'Sprache';

  @override
  String get unitsLabel => 'Einheiten';

  @override
  String get restTimer => 'Pausentimer';

  @override
  String get alarmBlockedTitle => 'Benachrichtigungen sind deaktiviert';

  @override
  String get alarmBlockedBody => 'Der Pausenalarm ertönt nicht, wenn der Bildschirm gesperrt ist';

  @override
  String get alarmBlockedAction => 'AKTIVIEREN';

  @override
  String get alarmSound => 'Alarmton';

  @override
  String get alarmDefaultName => 'Standard';

  @override
  String get alarmSoundHint => 'Verwende deinen eigenen Ton — bis zu 15 Sekunden';

  @override
  String get alarmChoose => 'Ton auswählen…';

  @override
  String get alarmPreview => 'Aktuellen Ton abspielen';

  @override
  String get alarmReset => 'Auf Standard zurücksetzen';

  @override
  String get alarmTooLong => 'Dieser Ton ist länger als 15 Sekunden';

  @override
  String get alarmInvalid => 'Diese Audiodatei konnte nicht gelesen werden';

  @override
  String alarmChanged(String name) {
    return 'Alarmton auf \"$name\" gesetzt';
  }

  @override
  String get alarmChangedDefault => 'Zurück zum Standardton';

  @override
  String get homeWidgets => 'STARTBILDSCHIRM';

  @override
  String get addActivityWidget => 'Aktivitäts-Widget hinzufügen';

  @override
  String get addStatsWidget => 'Statistik-Widget hinzufügen';

  @override
  String get pinUnsupported => 'Füge es über das Widget-Menü deines Launchers hinzu';

  @override
  String get background => 'Hintergrund';

  @override
  String get bgNone => 'Keiner';

  @override
  String get bgDots => 'Punkte';

  @override
  String get bgGrid => 'Raster';

  @override
  String get data => 'DATEN';

  @override
  String get exportCsv => 'Trainings exportieren (CSV)';

  @override
  String get exportBackup => 'Backup exportieren (ZIP)';

  @override
  String get importBackup => 'Backup importieren';

  @override
  String get importHint =>
      'Wähle ein aus GymMane exportiertes .zip- (oder älteres .json-) Backup. Es ersetzt deine aktuellen Daten, einschließlich Medien.';

  @override
  String get import => 'Importieren';

  @override
  String get chooseFile => 'Datei auswählen';

  @override
  String get importFromApp => 'Aus einer anderen App importieren';

  @override
  String get importUnknownFormat =>
      'Diese Datei benötigt Spalten für Datum, Übung, Wiederholungen und Gewicht';

  @override
  String get importZipNoWeights => 'Dieses ZIP enthält keine Gewichtsdatei';

  @override
  String importWeights(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Wiegungen importiert',
      one: '$n Wiegung importiert',
    );
    return '$_temp0';
  }

  @override
  String get importReadFailed => 'Diese Datei konnte nicht gelesen werden';

  @override
  String get importUnitTitle => 'In welcher Einheit ist diese Datei?';

  @override
  String get importUnitBody => 'Dieser Export gibt nicht an, in welcher Einheit die Gewichte angegeben sind.';

  @override
  String get importNothing => 'Nichts Neues zu importieren';

  @override
  String importDone(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Trainings importiert',
      one: '$n Training importiert',
    );
    return '$_temp0';
  }

  @override
  String get aboutGymmane => 'Über GymMane';

  @override
  String get yourProfile => 'DEIN PROFIL';

  @override
  String get autofills => 'Füllt die Rechner automatisch aus';

  @override
  String get nameLabel => 'NAME';

  @override
  String get sexLabel => 'GESCHLECHT';

  @override
  String get macroProtein => 'PROTEIN';

  @override
  String get macroCarbs => 'KOHLENHYDRATE';

  @override
  String get macroFat => 'FETT';

  @override
  String get male => 'Männlich';

  @override
  String get female => 'Weiblich';

  @override
  String get ageLabel => 'ALTER';

  @override
  String get heightLabel => 'GRÖSSE';

  @override
  String get weightLabel => 'GEWICHT';

  @override
  String get weeklyGoal => 'WOCHENZIEL';

  @override
  String get activityLabel => 'AKTIVITÄT';

  @override
  String get addPhoto => 'Foto hinzufügen';

  @override
  String get removePhoto => 'Foto entfernen';

  @override
  String get takePhoto => 'Foto aufnehmen';

  @override
  String get chooseGallery => 'Aus Galerie auswählen';

  @override
  String get backupCopied => 'Backup in die Zwischenablage kopiert';

  @override
  String get backupImported => 'Backup importiert';

  @override
  String get backupFailed => 'Dieses Backup konnte nicht gelesen werden';

  @override
  String get nothingToExport => 'Noch nichts zu exportieren — protokolliere zuerst ein Training';

  @override
  String get athlete => 'Athlet';

  @override
  String calculatorsCount(int n) {
    return '$n Rechner für dein Training';
  }

  @override
  String get result => 'ERGEBNIS';

  @override
  String get weightLifted => 'GEHOBENES GEWICHT';

  @override
  String get repsPerformed => 'AUSGEFÜHRTE WIEDERHOLUNGEN';

  @override
  String get neck => 'HALS';

  @override
  String get waist => 'TAILLE';

  @override
  String get hip => 'HÜFTE (für Frauen)';

  @override
  String get targetWeight => 'ZIELGEWICHT';

  @override
  String get workingWeight => 'ARBEITSGEWICHT';

  @override
  String get activityLevel => 'AKTIVITÄTSSTUFE';

  @override
  String get barWeight => 'STANGENGEWICHT';

  @override
  String get perSide => 'PRO SEITE';

  @override
  String get justTheBar => 'Nur die Stange.';

  @override
  String perSideCount(int n) {
    return '× $n pro Seite';
  }

  @override
  String rampSet(String pct, int reps) {
    return '$pct · $reps Wiederholungen';
  }

  @override
  String get toolNameRm => '1RM';

  @override
  String get toolNameBmi => 'BMI';

  @override
  String get toolNameCal => 'Kalorien';

  @override
  String get toolNameBf => 'Körperfett';

  @override
  String get toolNamePlate => 'Gewichtsplatten';

  @override
  String get toolNameWarmup => 'Aufwärmen';

  @override
  String get toolTitleRm => '1RM-Rechner';

  @override
  String get toolTitleBmi => 'BMI-Rechner';

  @override
  String get toolTitleCal => 'Kalorien & Makros';

  @override
  String get toolTitleBf => 'Körperfett %';

  @override
  String get toolTitlePlate => 'Plattenrechner';

  @override
  String get toolTitleWarmup => 'Aufwärmsätze';

  @override
  String get toolHintRm => 'Geschätztes 1RM (Epley-Formel)';

  @override
  String get toolHintCal => 'Geschätzter täglicher Erhaltungsbedarf';

  @override
  String get toolHintBf => 'Schätzung nach der US-Navy-Methode';

  @override
  String get toolHintPlate => 'Gesamtgewicht der Langhantel';

  @override
  String get toolHintWarmup => 'Ziel Arbeitsgewicht';

  @override
  String get toolDescRm => 'Geschätztes Einer-Wiederholungsmaximum';

  @override
  String get toolDescBmi => 'Body-Mass-Index';

  @override
  String get toolDescCal => 'Kalorien & Makros';

  @override
  String get toolDescBf => 'Körperfettanteil';

  @override
  String get toolDescPlate => 'Rechner für Hantelscheiben';

  @override
  String get toolDescWarmup => 'Aufwärmsätze';

  @override
  String get bmiUnderweight => 'Untergewichtig';

  @override
  String get bmiNormal => 'Normal';

  @override
  String get bmiOverweight => 'Übergewichtig';

  @override
  String get bmiObese => 'Stark Übergewichtig';

  @override
  String get actSedentary => 'Sitzend';

  @override
  String get actLight => 'Leicht aktiv';

  @override
  String get actActive => 'Aktiv';

  @override
  String get actModerate => 'Mäßig aktiv';

  @override
  String get muscleChest => 'Brust';

  @override
  String get muscleBack => 'Rücken';

  @override
  String get muscleShoulders => 'Schultern';

  @override
  String get muscleBiceps => 'Bizeps';

  @override
  String get muscleTriceps => 'Trizeps';

  @override
  String get muscleForearm => 'Unterarm';

  @override
  String get muscleTrapezius => 'Trapezmuskel';

  @override
  String get muscleAbdomen => 'Bauch';

  @override
  String get muscleObliques => 'Schräge Bauchmuskeln';

  @override
  String get muscleQuads => 'Quadrizeps';

  @override
  String get muscleHamstrings => 'Beinbeuger';

  @override
  String get muscleGlutes => 'Gesäß';

  @override
  String get muscleCalves => 'Waden';

  @override
  String get mgChest => 'Brust';

  @override
  String get mgBack => 'Rücken';

  @override
  String get mgLegs => 'Beine';

  @override
  String get mgShoulders => 'Schultern';

  @override
  String get mgArms => 'Arme';

  @override
  String get mgCore => 'Rumpf';

  @override
  String get equipBarbell => 'Langhantel';

  @override
  String get equipDumbbell => 'Kurzhantel';

  @override
  String get equipCable => 'Kabelzug';

  @override
  String get equipMachine => 'Maschine';

  @override
  String get equipBodyweight => 'Körpergewicht';

  @override
  String get equipWeighted => 'Mit Zusatzgewicht';

  @override
  String get equipBand => 'Band';

  @override
  String get equipKettlebell => 'Kettlebell';

  @override
  String get equipRings => 'Ringe';

  @override
  String get equipOther => 'Sonstiges';

  @override
  String get diffBeginner => 'Anfänger';

  @override
  String get diffAdvanced => 'Fortgeschritten';

  @override
  String get diffIntermediate => 'Mittelstufe';

  @override
  String get about => 'ÜBER';

  @override
  String version(String v) {
    return 'Version $v';
  }

  @override
  String get aboutBlurb => 'Von Trainierenden für Trainierende.';

  @override
  String get freeForever => 'Für immer kostenlos';

  @override
  String get freeForeverWhy => 'Kein Abo, keine Werbung, nichts hinter einer Bezahlschranke.';

  @override
  String get fullyOffline => 'Vollständig offline';

  @override
  String get fullyOfflineWhy => 'Kein Konto, keine Server. Dein Training verlässt dieses Handy nie.';

  @override
  String get yoursToTake => 'Deine Daten gehören dir';

  @override
  String get yoursToTakeWhy => 'Exportiere sie jederzeit als CSV und lösche alles mit einem Fingertipp.';

  @override
  String get whatsInside => 'WAS ENTHALTEN IST';

  @override
  String exercisesInside(int n) {
    return '$n Übungen';
  }

  @override
  String get exercisesInsideWhy => 'Jede Übung mit Animation und Schritt-für-Schritt-Anleitung.';

  @override
  String get calculatorsInside => '6 Rechner';

  @override
  String get calculatorsInsideWhy =>
      '1RM, Scheiben, BMI, Kalorien, Körperfett und Aufwärmen — alle mit veröffentlichten Formeln.';

  @override
  String get mathInside => 'Ehrliche Mathematik';

  @override
  String get mathInsideWhy =>
      'Volumen, Rekorde und Serien stammen aus deinen eigenen Sätzen. Nichts hier ist bloße Dekoration.';

  @override
  String get yourNumbers => 'DEINE ZAHLEN';

  @override
  String get sessionsCaps => 'TRAININGS';

  @override
  String get liftedCaps => 'GEHOBEN';

  @override
  String get streakCaps => 'SERIE';

  @override
  String daysUnit(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'Tage', one: 'Tag');
    return '$_temp0';
  }

  @override
  String get restDefaultLabel => 'Pausentimer';

  @override
  String restDefault(int s) {
    return 'Standard sind $s s — in den Einstellungen ändern';
  }

  @override
  String get reset => 'ZURÜCKSETZEN';

  @override
  String get welcomeKicker => 'WILLKOMMEN BEI';

  @override
  String get welcomeBlurb => 'Alles bleibt auf deinem Handy. Kein Konto, kein Internet, nichts zu bezahlen.';

  @override
  String get welcomeStart => 'LOSLEGEN';

  @override
  String onbStep(int i, int n) {
    return 'SCHRITT $i VON $n';
  }

  @override
  String get onbNameTitle => 'Wie sollen wir dich nennen?';

  @override
  String get onbNameHint => 'Dein Name';

  @override
  String get onbNameWhy => 'Wird nur zur Begrüßung verwendet und verlässt das Handy nie.';

  @override
  String get onbBodyTitle => 'Ein paar Zahlen';

  @override
  String get onbBodyWhy =>
      'Sie versorgen die Rechner mit Daten. Du kannst sie jederzeit in den Einstellungen ändern.';

  @override
  String get onbGoalTitle => 'Wie oft trainierst du?';

  @override
  String get onbGoalWhy => 'Legt deinen wöchentlichen Zielring fest. Sei ehrlich, nicht ehrgeizig.';

  @override
  String perWeek(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Trainings pro Woche',
      one: '$n Training pro Woche',
    );
    return '$_temp0';
  }

  @override
  String get onbUnitsTitle => 'Kilo oder Pfund?';

  @override
  String get next => 'WEITER';

  @override
  String get back => 'ZURÜCK';

  @override
  String get skip2 => 'Überspringen';

  @override
  String get madeWithLoveBy => 'MIT LIEBE GEMACHT VON';

  @override
  String get sourceCode => 'QUELLCODE';

  @override
  String get suggested => 'VORGESCHLAGEN';

  @override
  String get results => 'ERGEBNISSE';

  @override
  String get noMatches => 'Keine Übung passt zu dieser Suche.';

  @override
  String get tapToEdit =>
      'Tippe auf den Stift, um einen Eintrag zu korrigieren, oder auf den Papierkorb, um ihn zu entfernen.';

  @override
  String get editEntry => 'Bearbeiten';

  @override
  String get editEntryHint => 'Korrigiere die Wiederholungen oder das Gewicht eines Satzes.';

  @override
  String get removeSet => 'Satz entfernen';

  @override
  String get continueWorkout => 'WEITER';

  @override
  String get continueWorkoutBody =>
      'Das Training wird fortgesetzt und die Sätze bleiben markiert. Wenn du es erneut beendest, wird es am ursprünglichen Tag gespeichert.';

  @override
  String get addBodyWidget => 'Muskelkarten-Widget hinzufügen';

  @override
  String get repsOnly => 'Nur Wiederholungen';

  @override
  String get repsOnlyHint => 'Protokolliere diese Übung ohne Gewicht.';

  @override
  String get useDefaultArt => 'Zur Standardgrafik zurückkehren';

  @override
  String daysShort(int n) {
    return '${n}d';
  }

  @override
  String get focusCard => 'Heutiger Fokus';

  @override
  String get autoAdvance => 'Automatisch fortfahren';

  @override
  String get keepScreenOn => 'Bildschirm beim Training anlassen';

  @override
  String get lockWorkout => 'Bildschirm sperren';

  @override
  String get unlockWorkout => 'Entsperren';

  @override
  String get lockedCaps => 'GESPERRT';

  @override
  String get holdToUnlock => 'Zum Entsperren gedrückt halten';

  @override
  String get liveChannel => 'Laufendes Training';

  @override
  String get liveChannelWhy => 'Zeigt Übung, Satz und Pausentimer, während du trainierst';

  @override
  String liveSet(int n, int total) {
    return 'Satz $n von $total';
  }

  @override
  String get liveResting => 'Pause';

  @override
  String get liveAllDone => 'Alle Sätze erledigt';

  @override
  String get autoAdvanceHint => 'Wenn der letzte Satz einer Übung markiert wird, geht das Training weiter.';

  @override
  String get autoProgress => 'Beim nächsten Mal Gewicht erhöhen';

  @override
  String autoProgressHint(String w) {
    return 'Schaffst du jede Wiederholung, beginnt das nächste Training mit $w mehr.';
  }

  @override
  String get placePlates => 'Scheiben und Stange';

  @override
  String get platesAll => 'Alles Verfügbare';

  @override
  String platesOwned(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n Größen', one: '$n Größe');
    return '$_temp0';
  }

  @override
  String get platePairs => 'PAARE';

  @override
  String plateAchievable(String w) {
    return 'Nächstmögliche Beladung: $w';
  }

  @override
  String get autoWarmup => 'Mit Aufwärmsätzen beginnen';

  @override
  String get autoWarmupHint => 'Fügt beim Öffnen des Trainings die Aufwärmsätze hinzu.';

  @override
  String get trainReminder => 'Trainingserinnerung';

  @override
  String get trainReminderHint =>
      'Eine Erinnerung zu dieser Zeit, nur an den Tagen, an denen dein Trainingsplan vorgesehen ist.';

  @override
  String get notifTrainChannel => 'Trainingserinnerung';

  @override
  String get notifTrainChannelWhy => 'Eine Erinnerung zum Trainieren an den geplanten Tagen.';

  @override
  String get notifTrainTitle => 'Zeit zu trainieren';

  @override
  String get notifTrainBody => 'Dein Trainingsplan wartet.';

  @override
  String get exportCatalog => 'Übungsliste exportieren';

  @override
  String get importRoutine => 'Trainingsplan importieren (JSON)';

  @override
  String get planIntro => 'Erstelle mir einen Trainingsplan, der nur die Übungen aus dieser Liste verwendet.';

  @override
  String get planFormat => 'Antworte ausschließlich mit JSON in dieser Form:';

  @override
  String planImported(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Übungen zum Trainingsplan hinzugefügt',
      one: '$n Übung zum Trainingsplan hinzugefügt',
    );
    return '$_temp0';
  }

  @override
  String get planNothing => 'Keine Übung aus dieser Datei passt zu deiner Bibliothek';

  @override
  String get planFailed => 'Diese Datei ist kein lesbarer Trainingsplan';

  @override
  String get routineGroup => 'Gruppe';

  @override
  String get newGroup => 'Neue Gruppe';

  @override
  String get noGroup => 'Keine Gruppe';

  @override
  String get groupNameHint => 'Drücken / Ziehen / Beine, 5×5…';

  @override
  String get filters => 'Filter';

  @override
  String get setsPlannedHint =>
      'Wähle, wie viele Sätze du von jeder Übung möchtest. Beim Öffnen des Trainings sind sie bereits vorbereitet.';

  @override
  String get nextTime => 'NÄCHSTES MAL';

  @override
  String get nextHold => 'gleiches Gewicht, bis du jede Wiederholung schaffst';

  @override
  String get bgPhoto => 'Dein Foto';

  @override
  String get bgPhotoPick => 'Foto auswählen';

  @override
  String get bgPhotoChange => 'Foto ändern';

  @override
  String get bgPhotoRemove => 'Foto entfernen';

  @override
  String get bgDim => 'WIE DUNKEL';

  @override
  String get dimSoft => 'Sanft';

  @override
  String get dimMedium => 'Mittel';

  @override
  String get dimStrong => 'Stark';

  @override
  String get bgPhotoHint => 'Es ist gedimmt hinter allem, damit die App lesbar bleibt.';

  @override
  String get reminderSmart => 'Intelligent';

  @override
  String get reminderFixed => 'Feste Zeit';

  @override
  String get reminderSmartHint =>
      'Verwendet die Tage und die Zeit, zu denen du tatsächlich trainierst, und bleibt an einem bereits absolvierten Trainingstag ruhig.';

  @override
  String get reminderSmartEmpty =>
      'Protokolliere noch ein paar Trainings, dann lernt die Funktion deine Tage.';

  @override
  String habitFocus(String day) {
    return 'was du normalerweise am $day trainierst';
  }

  @override
  String get duplicateRoutine => 'Trainingsplan duplizieren';

  @override
  String copySuffix(String name) {
    return '$name (Kopie)';
  }

  @override
  String get saveAsRoutine => 'ALS TRAININGSPLAN SPEICHERN';

  @override
  String get savedAsRoutine => 'Als Trainingsplan gespeichert';

  @override
  String get templates => 'Fertige Trainingspläne';

  @override
  String get templatesHint =>
      'Klassische Programme aus deiner eigenen Bibliothek. Du kannst danach alles ändern.';

  @override
  String templateAdded(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Trainingspläne hinzugefügt',
      one: '$n Trainingsplan hinzugefügt',
    );
    return '$_temp0';
  }

  @override
  String get tplFullbody => 'Drei Ganzkörpertage pro Woche. Der beste Einstieg.';

  @override
  String get tplPpl => 'Drücken, Ziehen und Beine. Drei oder sechs Tage pro Woche.';

  @override
  String get tplUpperlower => 'Ober- und Unterkörper, vier Tage pro Woche.';

  @override
  String get tplStronglifts => 'Zwei Trainings, abwechselnd fünf Sätze mit fünf Wiederholungen.';

  @override
  String get tplStartingstrength => 'Kniebeugen in jedem Training, zwei abwechselnde Trainings.';

  @override
  String get tplHome => 'Nichts außer einer Klimmzugstange und dem Boden.';

  @override
  String dayCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n Tage', one: '$n Tag');
    return '$_temp0';
  }

  @override
  String get logRpe => 'Anstrengung protokollieren (RPE)';

  @override
  String get rpeTitle => 'ANSTRENGUNG (RPE)';

  @override
  String get rpeHint =>
      '10 bedeutet, dass keine Wiederholung mehr möglich ist; bei 8 bleiben zwei Wiederholungen übrig.';

  @override
  String get superset => 'Supersatz';

  @override
  String get supersetLink => 'Mit der nächsten Übung verknüpfen';

  @override
  String get supersetHint => 'Keine Pause zwischen verknüpften Übungen — du gehst direkt zur nächsten.';

  @override
  String get aiRoutine => 'Trainingsplan mit KI';

  @override
  String get aiIntro =>
      'GymMane spricht nie mit einer KI. Du exportierst deine Übungsliste, fügst sie in einen Assistenten deiner Wahl ein und importierst dessen Antwort wieder. Dein Handy sendet von selbst nichts nach außen.';

  @override
  String get aiStep1 =>
      'Exportiere deine Übungsliste. Wenn du einen Ort ausgewählt hast, enthält sie nur Übungen, die du dort machen kannst.';

  @override
  String get aiStep2 => 'Gib die Datei einer beliebigen KI und bitte sie um einen Trainingsplan.';

  @override
  String get aiStep3 => 'Speichere ihre Antwort als Datei — JSON oder einfacher Text, beides funktioniert.';

  @override
  String get aiStep4 =>
      'Importiere hier. Die Namen werden mit deiner Bibliothek abgeglichen und der Trainingsplan wird erstellt.';

  @override
  String aiMissing(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Namen waren nicht in deiner Bibliothek',
      one: '1 Name war nicht in deiner Bibliothek',
    );
    return '$_temp0';
  }

  @override
  String get importApps => 'Welche Apps gelesen werden';

  @override
  String get importOtherCsv => 'Jede andere CSV mit Datum, Übung, Wiederholungen und Gewicht';

  @override
  String get importAskApp => 'Du brauchst eine andere App? Frag danach';

  @override
  String get awardFirstStepName => 'Erster Schritt';

  @override
  String get awardFirstStepLine => 'Willkommen bei GymMane. Das hier geht aufs haus.';

  @override
  String get awardFirstWorkoutName => 'Erstes Training';

  @override
  String get awardFirstWorkoutLine => 'Das erste Training ist protokolliert. Das war der schwierige Teil.';

  @override
  String get awardFirstRoutineName => 'Erster Trainingsplan';

  @override
  String get awardFirstRoutineLine => 'Du hast jetzt einen Plan, zu dem du zurückkehren kannst.';

  @override
  String get awardFirstRecordName => 'Erster Rekord';

  @override
  String get awardFirstRecordLine => 'Du hast deine Bestleistung bei einer Übung übertroffen.';

  @override
  String get awardStreak3Name => 'Drei hintereinander';

  @override
  String get awardStreak3Line => 'Drei Tage am Stück. So beginnt es.';

  @override
  String get awardTonne1Name => 'Eine Tonne';

  @override
  String get awardTonne1Line => 'Über deine Sätze hast du tausend Kilo bewegt.';

  @override
  String get awardSets100Name => 'Hundert Sätze';

  @override
  String get awardSets100Line => 'Hundert Sätze geschafft, einen nach dem anderen.';

  @override
  String get awardHours10Name => 'Zehn Stunden';

  @override
  String get awardHours10Line => 'Zehn Stunden Training auf der Uhr.';

  @override
  String get awardWorkouts50Name => 'Fünfzig Trainings';

  @override
  String get awardWorkouts50Line => 'Fünfzig Trainings liegen hinter dir.';

  @override
  String get awardHours50Name => 'Fünfzig Stunden';

  @override
  String get awardHours50Line => 'Fünfzig Stunden im Fitnessstudio.';

  @override
  String get awardsTitle => 'Medaillen';

  @override
  String get awardWon => 'Verdient';

  @override
  String get yearTitle => 'Dein Jahr';

  @override
  String get yearBestMonth => 'Bester Monat';

  @override
  String get yearMonths => 'Monate';

  @override
  String get awardSpinHint => 'Ziehe die Medaille, um sie zu drehen';

  @override
  String get awardUnlocked => 'Neue Auszeichnung freigeschaltet';

  @override
  String get awardNice => 'Großartig!';

  @override
  String get awardSaveImage => 'Bild speichern';

  @override
  String get awardSaved => 'In deiner Galerie gespeichert';

  @override
  String get awardStreakBottom => 'Serie';

  @override
  String get awardStreak7Top => 'sieben Tage';

  @override
  String get awardStreak7Name => 'Sieben Tage';

  @override
  String get awardStreak7Line => 'Eine volle Woche ohne einen Tag auszulassen.';

  @override
  String get awardStreak30Top => 'dreißig Tage';

  @override
  String get awardStreak30Name => 'Dreißig Tage';

  @override
  String get awardStreak30Line => 'Ein ganzer Monat. Das ist jetzt eine Gewohnheit.';

  @override
  String get awardWorkouts100Top => 'einhundert';

  @override
  String get awardWorkouts100Bottom => 'trainings';

  @override
  String get awardWorkouts100Name => 'Einhundert Trainings';

  @override
  String get awardWorkouts100Line => 'Einhundert Trainings von Anfang bis Ende protokolliert.';

  @override
  String get awardTonnes100Top => 'einhundert';

  @override
  String get awardTonnes100Bottom => 'Tonnen';

  @override
  String get awardTonnes100Name => 'Einhundert Tonnen';

  @override
  String get awardTonnes100Line => 'Alles, was du gehoben hast, ergibt zusammen 100.000 kg.';

  @override
  String get awardSets1000Top => 'tausend';

  @override
  String get awardSets1000Bottom => 'Sätze';

  @override
  String get awardSets1000Name => 'Tausend Sätze';

  @override
  String get awardSets1000Line => 'Ein Satz nach dem anderen, tausend davon.';

  @override
  String get profile => 'Profil';

  @override
  String get editProfile => 'Profil bearbeiten';

  @override
  String get pickBadge => 'Abzeichen';

  @override
  String get badgeTitle => 'Dein Abzeichen';

  @override
  String get statWorkouts => 'Trainings';

  @override
  String get statTrained => 'Trainiert';

  @override
  String get statSets => 'Sätze';

  @override
  String get statLifted => 'Gehoben';

  @override
  String get statStreak => 'Serie';

  @override
  String get statDays => 'Tage';

  @override
  String get unitHours => 'h';

  @override
  String get unitDays => 'Tage';

  @override
  String get snapshots => 'Fotos';

  @override
  String get snapNow => 'Aufnehmen';

  @override
  String get calendarLegend => 'Trainiert · Fotos';

  @override
  String get addCover => 'Titelbild hinzufügen';

  @override
  String get addTodayWidget => 'Heute erledigt oder nicht';

  @override
  String get monthTitle => 'Diesen Monat';

  @override
  String get photosCard => 'Deine Fotos';

  @override
  String get handleLabel => 'Benutzername';

  @override
  String get setupTitle => 'Fülle diese Angaben aus, der Rest der Seite füllt sich automatisch';

  @override
  String get setupHint => 'Jede Zahl hier stammt aus deinen Protokollen. Nichts wird irgendwohin gesendet.';

  @override
  String get setupWorkout => 'Erstes Training protokollieren';

  @override
  String get setupWeight => 'Körpergewicht eintragen';

  @override
  String get setupMeasures => 'Deine Maße nehmen';

  @override
  String get setupPhoto => 'Erstes Fortschrittsfoto aufnehmen';

  @override
  String get progressTitle => 'Fortschritt';

  @override
  String get tileVolume30 => 'Volumen · 30 Tage';

  @override
  String get tileAddWeight => 'Deins hinzufügen';

  @override
  String get heatToneTitle => 'Heat-Farbe';

  @override
  String get heatToneHint => 'Ändert nur, wie Raster und Körper eingefärbt werden.';

  @override
  String get thisWeekTitle => 'Diese Woche';

  @override
  String get momentsEmptyTitle => 'Noch nichts hier';

  @override
  String get deletePhotoTitle => 'Dieses Foto löschen?';

  @override
  String get deletePhotoBody => 'Es wird endgültig gelöscht.';

  @override
  String get awardsEarned => 'Verdient';

  @override
  String get awardsLocked => 'Gesperrt';

  @override
  String get awardStreak100Name => 'Einhundert Tage';

  @override
  String get awardWorkouts10Name => 'Zehn Trainings';

  @override
  String get awardWorkouts10Line => 'Die ersten Zehn entscheiden.';

  @override
  String get awardWorkouts365Name => 'Dreihundertfünfundsechzig';

  @override
  String get awardWorkouts365Line => 'Ein Training für jeden Tag eines Jahres, einzeln protokolliert.';

  @override
  String get awardTonnes10Name => 'Zehn Tonnen';

  @override
  String get awardTonnes10Line => 'Zehntausend Kilo sind durch deine Hände gegangen.';

  @override
  String get awardHours100Name => 'Einhundert Stunden';

  @override
  String get awardHours100Line => 'Einhundert Stunden unter der Hantel, mit der Stoppuhr in der Hand.';

  @override
  String awardWonOn(String date) {
    return 'Verdient am $date';
  }

  @override
  String awardProgressLabel(String value, String goal) {
    return '$value von $goal';
  }

  @override
  String badgeName(String id) {
    String _temp0 = intl.Intl.selectLogic(id, {
      'gold': 'Gold',
      'blue': 'Blau',
      'green': 'Grün',
      'other': 'Abzeichen',
    });
    return '$_temp0';
  }

  @override
  String memberSince(String date) {
    return 'Dabei seit $date';
  }

  @override
  String levelShort(int n) {
    return 'Stufe $n';
  }

  @override
  String levelToNext(int n, int next) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Trainings bis Stufe $next',
      one: '1 Training bis Stufe $next',
    );
    return '$_temp0';
  }

  @override
  String heightCm(int n) {
    return '$n cm';
  }

  @override
  String heatToneName(String id) {
    String _temp0 = intl.Intl.selectLogic(id, {
      'ember': 'Rot',
      'green': 'Grün',
      'blue': 'Blau',
      'mono': 'Grau',
      'other': 'Farbe',
    });
    return '$_temp0';
  }

  @override
  String setsThisWeek(int n) {
    return '$n Sätze';
  }

  @override
  String weekOfGoal(int n, int goal) {
    return '$n von $goal diese Woche';
  }

  @override
  String momentCount(int n) {
    return '$n Fotos';
  }

  @override
  String get badgeHint =>
      'Wähle eine Farbe oder tippe auf dein aktuelles Abzeichen, um es abzulegen. Es ist nur für dich — nichts wird überprüft und nichts kostet etwas.';

  @override
  String get momentsEmptyHint =>
      'Fotografiere das Fitnessstudio, das Whiteboard, eine Scheiben-Kombination — alles, woran du dich erinnern möchtest. Die Fotos bleiben auf dem Handy und nur du kannst sie sehen.';

  @override
  String get awardStreak100Line =>
      'Einhundert Tage am Stück. Das ist keine Motivation mehr, das bist einfach du.';

  @override
  String get coverLabel => 'TITELBILD';

  @override
  String get removeCover => 'Titelbild entfernen';

  @override
  String get startTitle => 'Training starten';

  @override
  String get logTitle => 'Training protokollieren';

  @override
  String get logHint => 'Kein Timer — trage einfach ein, was du gemacht hast.';

  @override
  String get orStartFrom => 'Oder beginne mit';

  @override
  String get pickExercisesOption => 'Übungen auswählen';

  @override
  String get chooseFocusOption => 'Fokus auswählen';

  @override
  String get plannedRoutine => 'GEPLANT';

  @override
  String get logWorkoutAction => 'TRAINING PROTOKOLLIEREN';

  @override
  String get logging => 'PROTOKOLLIEREN';

  @override
  String get placesLabel => 'Meine Orte';

  @override
  String get undo => 'Rückgängig';

  @override
  String get deleteSet => 'Satz löschen';

  @override
  String get setDeleted => 'Satz gelöscht';

  @override
  String get removeWarmup => 'Aufwärmen entfernen';

  @override
  String get addWeightAction => 'Gewicht hinzufügen';

  @override
  String get workoutOverview => 'Dieses Training';

  @override
  String get allExercisesShort => 'Alle';

  @override
  String setsDoneOf(int done, int total) {
    return '$done/$total Sätze';
  }

  @override
  String get nowLabel => 'Jetzt';

  @override
  String get deleteWorkout => 'Training löschen';

  @override
  String get deleteWorkoutBody => 'Dieses Training und alle seine Sätze werden aus deinem Verlauf entfernt.';

  @override
  String get themeAuto => 'Auto';

  @override
  String get themeAutoHint => 'Wie das Handy';

  @override
  String get demoSizeTitle => 'Übungsdemo beim Training';

  @override
  String get demoLarge => 'Groß';

  @override
  String get demoSmall => 'Klein';

  @override
  String get demoOff => 'Aus';

  @override
  String get alarmStyleTitle => 'Wenn die Pause endet';

  @override
  String get alarmStyleLoud => 'Immer klingeln';

  @override
  String get alarmStyleQuiet => 'Lautlos beachten';

  @override
  String get alarmStyleVibrate => 'Nur vibrieren';

  @override
  String get alarmStyleHint =>
      '„Immer klingeln“ nutzt die Weckerlautstärke, auch im Lautlos-Modus. „Lautlos beachten“ nutzt die Benachrichtigungslautstärke und vibriert nur, wenn dein Handy stumm ist.';

  @override
  String get suggestedPicks => 'Vorschläge für dich';

  @override
  String get moreOptions => 'Weitere Optionen';

  @override
  String get suggestInWorkouts => 'In schnellen Trainings vorschlagen';

  @override
  String get suggestInWorkoutsHint =>
      'Aus: Die Übung taucht nicht mehr in den Vorschlägen auf. Von Hand hinzufügen kannst du sie trotzdem.';

  @override
  String get dontSuggest => 'Nicht mehr vorschlagen';

  @override
  String get noLongerSuggested => 'Wird nicht mehr vorgeschlagen';

  @override
  String get onbPlaceTitle => 'Wo trainierst du?';

  @override
  String get onbPlaceWhy =>
      'Wähle alle Orte, an denen du trainierst. Wir schlagen nur vor, was du dort jeweils machen kannst.';

  @override
  String get onbPlaceGear => 'Was hast du dort?';

  @override
  String distanceCol(String unit) {
    return 'DISTANZ ($unit)';
  }

  @override
  String get timeCol => 'ZEIT';

  @override
  String get timeMinutesTitle => 'Zeit (Minuten)';

  @override
  String get timeSecondsTitle => 'Zeit (Sekunden)';

  @override
  String distanceTitle(String unit) {
    return 'Distanz ($unit)';
  }

  @override
  String get holdLabel => 'Halten';

  @override
  String get stopLabel => 'Stopp';

  @override
  String startHold(String time) {
    return 'Start · $time';
  }

  @override
  String get exerciseTypeLabel => 'Erfassen nach';

  @override
  String get typeReps => 'Wdh. & Gewicht';

  @override
  String get typeTime => 'Zeit';

  @override
  String get typeCardio => 'Distanz & Zeit';

  @override
  String get exerciseTypeHint =>
      'Cardio wie Laufen oder Schwimmen erfasst Distanz und Zeit. Halteübungen wie der Plank nur die Zeit.';

  @override
  String get howToLabel => 'Ausführung (optional)';

  @override
  String get howToHint => 'Ein Schritt pro Zeile';

  @override
  String get editExercise => 'Übung bearbeiten';

  @override
  String get saveChanges => 'Änderungen speichern';

  @override
  String get noStepsYet =>
      'Noch keine Schritte. Schreib deine eigenen auf, damit du dich erinnerst, wie du sie machst.';

  @override
  String get addSteps => 'Schritte schreiben';

  @override
  String get setTypeRestPause => 'Rest-Pause';

  @override
  String get planFormatNotes =>
      'Verwende die Übungsnamen genau wie in der Liste. \"sets\", \"reps\", \"weight\" (in der angegebenen Einheit), \"rest\" in Sekunden und \"days\" sind optional. \"superset\": true verbindet eine Übung mit der nächsten. Für mehrere Wochen gruppiere die Routinen in \"weeks\" wie im zweiten Beispiel.';

  @override
  String get planSets => 'Sätze planen';

  @override
  String get planSetsHint =>
      'Wähle Typ, Wiederholungen und Gewicht jedes Satzes. Lass das Gewicht auf Auto, um bei deiner letzten Einheit anzuknüpfen.';

  @override
  String get autoValue => 'Auto';

  @override
  String get clearPlan => 'Plan löschen';

  @override
  String get planChip => 'Plan';

  @override
  String get shareRoutine => 'Routine teilen';

  @override
  String get shareWeek => 'Meine Woche teilen';

  @override
  String get shareWeekHint => 'Alle deine Routinen und an welchem Tag sie jeweils sind.';

  @override
  String shareMessage(String name) {
    return '$name — öffne die Datei mit GymMane, um sie hinzuzufügen.';
  }

  @override
  String get importRoutines => 'Routinen importieren';

  @override
  String get importPasteHint =>
      'Füge hier eine Routine ein: aus GymMane geteilt, eine KI-Antwort, JSON oder CSV.';

  @override
  String get pasteAction => 'Einfügen';

  @override
  String routineCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n Routinen', one: '1 Routine');
    return '$_temp0';
  }

  @override
  String get useTheirSchedule => 'Auch den Wochenplan übernehmen';

  @override
  String get useTheirScheduleHint => 'Die mitgebrachten Tage ersetzen, was du an ihnen geplant hast.';

  @override
  String get addToMyRoutines => 'Zu meinen Routinen hinzufügen';

  @override
  String routinesAdded(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n Routinen hinzugefügt',
      one: '1 Routine hinzugefügt',
    );
    return '$_temp0';
  }

  @override
  String get nothingToImport => 'Hier ist nichts, was GymMane importieren kann';

  @override
  String get aiStepCopy =>
      'Kopiere die Anfrage. Sie enthält deine Übungsliste und das Format, das GymMane liest.';

  @override
  String get aiStepAsk =>
      'Füge sie in eine beliebige KI ein und sag, was du willst: Tage pro Woche, Ziel, wie viele Wochen.';

  @override
  String get aiStepPaste => 'Füge die Antwort unten ein und importiere sie. Keine Datei nötig.';

  @override
  String get copyForAi => 'Für die KI kopieren';

  @override
  String get copiedDone => 'Kopiert';

  @override
  String get aiPasteHint => 'Füge hier die Antwort der KI ein';

  @override
  String get importAction => 'Importieren';

  @override
  String get showFormat => 'Format ansehen';

  @override
  String get shareAsFile => 'Als Datei teilen';

  @override
  String get recoveryTab => 'Erholung';

  @override
  String recoveryOverall(int pct) {
    return 'Körper zu $pct % erholt';
  }

  @override
  String get recoveryAllFresh => 'Alles ist erholt. Guter Tag, um alles zu trainieren.';

  @override
  String recoveryStill(String muscles) {
    return 'Erholt sich noch: $muscles';
  }

  @override
  String get recoveryTired => 'Ermüdet';

  @override
  String get recoveryFresh => 'Frisch';

  @override
  String get recoveryHint =>
      'Tippe auf einen Muskel, um zu sehen, wie erholt er ist. Frische Sätze zählen mehr, harte (nach RPE) noch mehr.';

  @override
  String recoveryPct(int pct) {
    return 'zu $pct % erholt';
  }

  @override
  String readyInHours(int h) {
    return 'bereit in ~$h Std.';
  }

  @override
  String get tplAbcd => 'Vier Tage: Brust und Trizeps, Rücken und Bizeps, Beine, Schultern und Bauch.';

  @override
  String get tplAbcde => 'Fünf Tage, je eine Muskelgruppe: Brust, Rücken, Beine, Schultern, Arme.';

  @override
  String get elapsedCaps => 'VERSTRICHEN';

  @override
  String get tapToSkip => 'Tippen zum Überspringen';

  @override
  String get tapToStop => 'Tippen zum Stoppen';

  @override
  String get screenLocked => 'Bildschirm gesperrt';

  @override
  String get lockedHint => 'Halte den Fingerabdruck oben gedrückt, um zu entsperren';

  @override
  String get liveDoneSet => 'Satz fertig';

  @override
  String get liveSkipRest => 'Pause überspringen';

  @override
  String get livePause => 'Pausieren';

  @override
  String get liveResume => 'Fortsetzen';

  @override
  String get liveNext => 'Weiter';

  @override
  String liveUpNext(String name) {
    return 'Danach: $name';
  }

  @override
  String get stickerOpen => 'Auf einem Foto teilen';

  @override
  String get stickerNoPhoto => 'Ohne Foto';

  @override
  String get stickerWorkout => 'Training';

  @override
  String get stickerStreak => 'Serie';

  @override
  String get stickerDate => 'Datum';

  @override
  String get stickerHint => 'Zum Verschieben ziehen, mit zwei Fingern skalieren oder drehen';

  @override
  String get stickerSaved => 'In der Galerie gespeichert';

  @override
  String get stickerWeek => 'Diese Woche';

  @override
  String get getReady => 'Mach dich bereit';

  @override
  String get stickerGallery => 'Galerie';

  @override
  String get stickerCamera => 'Kamera';

  @override
  String get shareIntroTitle => 'Teile diesen Plan';

  @override
  String get shareIntroBody =>
      'Schick ihn deinem Partner, einem Freund oder deiner Familie. Sie bekommen eine kleine Datei, die sich in GymMane öffnet und ihn mit einem Tipp hinzufügt, samt Sätzen und Gewichten.';

  @override
  String get removedFromRoutine => 'Aus dem Plan entfernt';

  @override
  String get radarTitle => 'Diesen Monat';

  @override
  String get radarHint => 'Sieh, welche Bereiche mehr Arbeit brauchen';

  @override
  String get radarEmpty => 'Trainiere diesen Monat, um deine Balance zu sehen';

  @override
  String get radarBalanced => 'Bisher gut ausgewogen';

  @override
  String radarFocus(String list) {
    return 'Braucht mehr: $list';
  }

  @override
  String get countdownReady => 'Mach dich bereit';

  @override
  String get countdownSkip => 'Tippen, um sofort zu starten';

  @override
  String get countdownSetting => 'Countdown vor dem Start';

  @override
  String get effortSetting => 'Anstrengung notieren';

  @override
  String get effortHint =>
      'RPE: 10 heißt, keine Wiederholung mehr, 8 heißt, zwei wären noch gegangen. RIR zählt die Wiederholungen, die übrig waren. Hat ein Satz einen Wert, nutzt das geschätzte 1RM die RPE-Tabelle.';

  @override
  String get rirTitle => 'RESERVE (RIR)';

  @override
  String get rirHint => '0 heißt, keine Wiederholung mehr, 2 heißt, zwei wären noch gegangen.';

  @override
  String get addWeekWidget => 'Wochen-Widget hinzufügen';

  @override
  String get gamificationSetting => 'Medaillen und Stufen';
}
