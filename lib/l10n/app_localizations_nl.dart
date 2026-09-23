// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get languageName => 'Nederlands';

  @override
  String vsLastMonthLabel(String pct) {
    return '$pct% t.o.v. vorige maand';
  }

  @override
  String levelStreakLabel(int level, String streak) {
    return 'Niveau $level · $streak';
  }

  @override
  String get save => 'OPSLAAN';

  @override
  String get cancel => 'Annuleren';

  @override
  String get cancelCaps => 'ANNULEREN';

  @override
  String get deleteCaps => 'VERWIJDEREN';

  @override
  String get done => 'KLAAR';

  @override
  String get set => 'Set';

  @override
  String get home => 'START';

  @override
  String get progress => 'VOORTGANG';

  @override
  String get exercises => 'OEFENINGEN';

  @override
  String get settings => 'INSTELLINGEN';

  @override
  String get today => 'VANDAAG';

  @override
  String get thisWeek => 'DEZE WEEK';

  @override
  String get recommended => 'AANBEVOLEN';

  @override
  String get goal => 'DOEL';

  @override
  String get volume => 'VOLUME';

  @override
  String get setsToday => 'SETS VANDAAG';

  @override
  String get prs => 'RECORDS';

  @override
  String get todaysFocus => 'FOCUS VAN VANDAAG';

  @override
  String get todaysRoutine => 'ROUTINE VAN VANDAAG';

  @override
  String get startWorkout => 'TRAINING STARTEN';

  @override
  String get routines => 'ROUTINES';

  @override
  String get tools => 'TOOLS';

  @override
  String get firstSessionHint => 'Kies je spieren en log je eerste training';

  @override
  String exerciseCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n oefeningen', one: '$n oefening');
    return '$_temp0';
  }

  @override
  String get pushDay => 'PUSH-DAG';

  @override
  String get pullDay => 'PULL-DAG';

  @override
  String get legDay => 'BENEN';

  @override
  String get pushFocus => 'Borst · Schouders · Triceps';

  @override
  String get pullFocus => 'Rug · Biceps · Trapezius';

  @override
  String get legFocus => 'Quadriceps · Hamstrings · Bilspieren';

  @override
  String get train => 'TRAINEN';

  @override
  String get step1 => 'STAP 1 VAN 2';

  @override
  String get step2 => 'STAP 2 VAN 2';

  @override
  String get chooseFocus => 'KIES JE FOCUS';

  @override
  String get buildSession => 'STEL JE TRAINING SAMEN';

  @override
  String get tapMuscles => 'Tik op de spieren die je wilt trainen — voor en achter.';

  @override
  String get noMusclesYet => 'Nog geen spieren geselecteerd — tik op het lichaam om te beginnen.';

  @override
  String get continueBtn => 'DOORGAAN';

  @override
  String get nothingForFocus => 'Geen oefening voor deze focus';

  @override
  String get goBackPick => 'Ga terug en kies een spier waarvoor oefeningen in je bibliotheek staan.';

  @override
  String pickedHint(int n) {
    return 'We hebben een training voor je samengesteld — tik om een van de $n oefeningen toe te voegen of te verwijderen.';
  }

  @override
  String get pickAnExercise => 'KIES EEN OEFENING';

  @override
  String get searchAllExercises => 'Zoek een oefening…';

  @override
  String get noExercisesMatch => 'Geen overeenkomende oefeningen';

  @override
  String get createItInstead => 'Maak in plaats daarvan je eigen oefening';

  @override
  String startCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n OEFENINGEN', one: '$n OEFENING');
    return 'START · $_temp0';
  }

  @override
  String get inProgress => 'BEZIG';

  @override
  String get paused => 'GEPAUZEERD';

  @override
  String get last => 'LAATSTE';

  @override
  String get rest => 'RUST';

  @override
  String get skip => 'OVERSLAAN';

  @override
  String get addSet => '+ SET TOEVOEGEN';

  @override
  String get finishSession => 'TRAINING AFRONDEN';

  @override
  String get setDone => 'SET KLAAR';

  @override
  String get nextExercise => 'VOLGENDE OEFENING';

  @override
  String get skipExercise => 'Deze oefening overslaan?';

  @override
  String skipExerciseBody(String name) {
    return 'Je hebt geen set als voltooid gemarkeerd, dus er wordt niets gelogd voor ‘$name’.';
  }

  @override
  String get dropExerciseAction => 'Oefening verwijderen';

  @override
  String get restOff => 'Uit';

  @override
  String get setCol => '#';

  @override
  String get repsCol => 'HERHALINGEN';

  @override
  String weightCol(String unit) {
    return 'GEWICHT ($unit)';
  }

  @override
  String get repsTitle => 'HERHALINGEN';

  @override
  String weightTitle(String unit) {
    return 'GEWICHT ($unit)';
  }

  @override
  String get sessionComplete => 'TRAINING OPGESLAGEN';

  @override
  String get finishHeadlinePr => 'Nieuw persoonlijk record';

  @override
  String get finishHeadlineGoal => 'Weekdoel behaald';

  @override
  String get finishHeadlineStreak => 'Reeks behouden';

  @override
  String get finishHeadlineDefault => 'Weer een training erbij';

  @override
  String finishBodyPr(int prs) {
    String _temp0 = intl.Intl.pluralLogic(
      prs,
      locale: localeName,
      other: '$prs oefeningen',
      one: 'één oefening',
    );
    return 'Je tilde meer dan ooit bij $_temp0. Het staat nu in je records.';
  }

  @override
  String get finishBodyGoal => 'Je hebt deze week het geplande aantal trainingen gehaald.';

  @override
  String finishBodyStreak(int streak) {
    return '$streak dagen op rij. Het moeilijkste is doorgaan.';
  }

  @override
  String get finishBodyDefault => 'Opgeslagen en meegeteld. Consistentie zorgt voor vooruitgang.';

  @override
  String get vsLastTime => 'VS. VORIGE KEER';

  @override
  String get firstTime => 'Eerste registratie';

  @override
  String prCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n nieuwe records',
      one: '$n nieuw record',
    );
    return '$_temp0';
  }

  @override
  String get saveAndExit => 'OPSLAAN EN AFSLUITEN';

  @override
  String get duration => 'DUUR';

  @override
  String get setsCaps => 'SETS';

  @override
  String exerciseXofY(int i, int n) {
    return 'OEFENING $i VAN $n';
  }

  @override
  String get decrease => 'Verlagen';

  @override
  String get increase => 'Verhogen';

  @override
  String markSet(int n) {
    return 'Set $n als voltooid markeren';
  }

  @override
  String get pauseWorkout => 'Training pauzeren';

  @override
  String get resumeWorkout => 'Training hervatten';

  @override
  String get discardTitle => 'Training weggooien?';

  @override
  String get discardBody => 'De sets van deze training gaan verloren.';

  @override
  String get keepTraining => 'Doorgaan met trainen';

  @override
  String get discard => 'Weggooien';

  @override
  String get notifRestChannel => 'Rusttimer';

  @override
  String get notifRestChannelWhy => 'Laat weten wanneer je rust tussen sets voorbij is';

  @override
  String get notifAlertChannel => 'Rusttimer (melding)';

  @override
  String get notifAlertChannelWhy => 'Toont meteen een banner wanneer je rust voorbij is';

  @override
  String get restOverTitle => 'Rust voorbij';

  @override
  String get restOverBody => 'Daar gaan we weer — de volgende set wacht.';

  @override
  String get totalVolume30d => 'TOTAAL VOLUME · 30 DAGEN';

  @override
  String get volumeCumulative => 'Lopend totaal van alle kilo\'s die je hebt verplaatst';

  @override
  String get volumeChartEmpty => 'Log een training en de grafiek begint hier';

  @override
  String get weekRhythm => 'WEEKRITME';

  @override
  String get weekRhythmHint => 'De dagen waarop je daadwerkelijk traint.';

  @override
  String weekRhythmBest(String day) {
    return '$day is jouw dag';
  }

  @override
  String get weekRhythmEmpty => 'Log een training en je week krijgt hier vorm.';

  @override
  String get allTime => 'ALTIJD';

  @override
  String get allTimeSessions => 'TRAININGEN';

  @override
  String get allTimeTime => 'TIJD';

  @override
  String get allTimeVolume => 'GETILD';

  @override
  String get allTimeSets => 'SETS';

  @override
  String allTimeAvg(String time) {
    return 'Gemiddeld $time per training';
  }

  @override
  String hoursShort(int n) {
    return '$n u';
  }

  @override
  String get consistency => 'CONSISTENTIE';

  @override
  String sessionsLogged(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n trainingen gelogd',
      one: '$n training gelogd',
    );
    return '$_temp0';
  }

  @override
  String streakDays(int n) {
    return 'Reeks van $n dagen';
  }

  @override
  String get bodyweight => 'LICHAAMSGEWICHT';

  @override
  String get notLoggedYet => 'Nog niet gelogd';

  @override
  String get logShort => '+ LOGGEN';

  @override
  String get logBodyweight => 'GEWICHT LOGGEN';

  @override
  String get trackWeight => 'Volg je gewicht in de loop van de tijd';

  @override
  String get muscleMap => 'SPIERKAART';

  @override
  String get days7 => '7 D';

  @override
  String get days30 => '30 D';

  @override
  String get heatLow => 'Niet getraind';

  @override
  String get heatHigh => 'Maximaal volume';

  @override
  String get muscleMapEmpty => 'Log een training en je lichaam begint hier op te lichten.';

  @override
  String get muscleMapHint => 'Tik op een spier om te zien hoeveel die heeft gewerkt.';

  @override
  String muscleMapBehind(String names) {
    return 'Achterstand: $names';
  }

  @override
  String ofTarget(int pct) {
    return '$pct% van doel';
  }

  @override
  String get muscleSplit => 'SPIERVERDELING';

  @override
  String get splitEmpty => 'Train om te zien hoe je volume over spiergroepen verdeeld is.';

  @override
  String get personalRecords => 'PERSOONLIJKE RECORDS';

  @override
  String get prEmpty => 'Je records verschijnen hier zodra je sets logt.';

  @override
  String get strength1rm => 'KRACHT · GESCH. 1RM';

  @override
  String get strengthEmpty => 'Log een oefening twee keer en de krachtcurve verschijnt hier.';

  @override
  String oneRmEst(String w) {
    return 'Gesch. 1RM: $w';
  }

  @override
  String get restDayShort => 'Rustdag';

  @override
  String get restDay => 'Rustdag — niets gelogd.';

  @override
  String get delete => 'Verwijderen';

  @override
  String get deleteEntry => 'Deze invoer verwijderen?';

  @override
  String deleteEntryBody(String name) {
    return '‘$name’ wordt van deze dag en uit je records en grafieken verwijderd.';
  }

  @override
  String get bodyweightHistory => 'GESCHIEDENIS';

  @override
  String get noBodyweightYet => 'Nog niets gelogd.';

  @override
  String get exercisesCaps => 'OEFENINGEN';

  @override
  String get timeCaps => 'TIJD';

  @override
  String libraryCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n oefeningen in je bibliotheek',
      one: '$n oefening in je bibliotheek',
    );
    return '$_temp0';
  }

  @override
  String get searchExercises => 'Oefeningen zoeken';

  @override
  String get muscleFilter => 'SPIER';

  @override
  String get levelFilter => 'NIVEAU';

  @override
  String get newExercise => 'NIEUWE OEFENING';

  @override
  String get exerciseName => 'Naam van oefening';

  @override
  String get equipmentLabel => 'MATERIAAL';

  @override
  String get addExercise => 'OEFENING TOEVOEGEN';

  @override
  String get advanced => 'GEAVANCEERD';

  @override
  String get demoMedia => 'DEMO';

  @override
  String get addMedia => 'Media toevoegen';

  @override
  String get mediaHint => 'Afbeelding, GIF of video';

  @override
  String get changeMedia => 'Wijzigen';

  @override
  String get videoSelected => 'Video geselecteerd';

  @override
  String get favouritesOnly => 'Favorieten';

  @override
  String get noFavouritesYet => 'Nog geen favorieten';

  @override
  String get noFavouritesHint => 'Tik op de ster bij een oefening om die hier te bewaren.';

  @override
  String get clearFilters => 'Filters wissen';

  @override
  String get noExercisesFound => 'Geen oefeningen gevonden';

  @override
  String get noExercisesHint => 'Probeer een andere zoekopdracht of wis je filters.';

  @override
  String get personalRecord => 'PERSOONLIJK RECORD';

  @override
  String get history => 'GESCHIEDENIS';

  @override
  String get noHistory => 'Nog geen trainingen gelogd. Train deze oefening om geschiedenis op te bouwen.';

  @override
  String get notes => 'NOTITIES';

  @override
  String get notePlaceholder => 'Tips, uitvoering, gevoel…';

  @override
  String showAllNotes(int n) {
    return 'Alle $n notities tonen';
  }

  @override
  String notHere(String gear, String place) {
    return 'Geen $gear bij $place';
  }

  @override
  String get notHereWhy => 'Vervang het door iets dat je vandaag echt kunt gebruiken.';

  @override
  String get altHere => 'WAT JE HIER KUNT DOEN';

  @override
  String get places => 'MIJN PLEKKEN';

  @override
  String get placesShort => 'Plekken';

  @override
  String get placesHint =>
      'Geef aan welke uitrusting je op elke plek hebt en de bibliotheek toont alleen wat je daar echt kunt doen.';

  @override
  String get placeAll => 'Overal';

  @override
  String get placeNew => 'Nieuwe plek';

  @override
  String get placeNameLabel => 'NAAM';

  @override
  String get placeNamePlaceholder => 'Thuis, sportschool, park…';

  @override
  String get placeGearLabel => 'BESCHIKBARE UITRUSTING';

  @override
  String placeGearCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n soorten uitrusting',
      one: '1 soort uitrusting',
      zero: 'Geen uitrusting geselecteerd',
    );
    return '$_temp0';
  }

  @override
  String placeExercises(int n) {
    return '$n oefeningen hier';
  }

  @override
  String get placeEmptyTitle => 'Train waar je ook bent';

  @override
  String get placeEmptyBody =>
      'Een plek is een lijst van de uitrusting die je daar hebt. Kies er een om te starten en pas hem later aan.';

  @override
  String get placeDeleteTitle => 'Plek verwijderen';

  @override
  String get placeDeleteBody =>
      'Alleen de plek wordt verwijderd — je oefeningen en trainingen blijven behouden.';

  @override
  String get placeGym => 'Sportschool';

  @override
  String get placeHome => 'Thuis';

  @override
  String get placeOutdoors => 'Buiten';

  @override
  String get placeFilterLabel => 'PLEK';

  @override
  String get noGearOnly => 'Geen uitrusting';

  @override
  String placeActive(String name) {
    return 'Trainen bij $name';
  }

  @override
  String get journal => 'DAGBOEK';

  @override
  String noteCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n notities',
      one: '1 notitie',
      zero: 'Geen notities',
    );
    return '$_temp0';
  }

  @override
  String get noteKindNote => 'Notitie';

  @override
  String get noteKindPlan => 'Plan';

  @override
  String get noteKindDone => 'Winst';

  @override
  String get noteKindPain => 'Kwaaltje';

  @override
  String get noteFilterAll => 'Alle';

  @override
  String get newNote => 'Nieuwe notitie';

  @override
  String get editNote => 'Notitie bewerken';

  @override
  String get addNote => 'NOTITIE TOEVOEGEN';

  @override
  String get noteEmptyTitle => 'Nog niets opgeschreven';

  @override
  String get noteEmptyBody =>
      'Tips, plannen voor de volgende keer, hoe een training voelde — met foto\'s of video als je wilt.';

  @override
  String get noteNoneForExercise => 'Nog geen notities bij deze oefening.';

  @override
  String get noteKindLabel => 'TYPE';

  @override
  String get noteTextLabel => 'NOTITIE';

  @override
  String get noteDateLabel => 'DATUM';

  @override
  String get noteExerciseLabel => 'OEFENING';

  @override
  String get noteMediaLabel => 'FOTO\'S & VIDEO\'S';

  @override
  String get noteGeneral => 'Geen oefening';

  @override
  String get noteAttach => 'Bijvoegen';

  @override
  String get noteRemoveMedia => 'Bijlage verwijderen';

  @override
  String get deleteNoteTitle => 'Notitie verwijderen';

  @override
  String get deleteNoteBody => 'De notitie en alle bijlagen worden permanent verwijderd.';

  @override
  String get noteToday => 'Vandaag';

  @override
  String get noteYesterday => 'Gisteren';

  @override
  String get noteAllNotes => 'Alle notities';

  @override
  String get noteCalendar => 'Kalender';

  @override
  String get noteNoneOnDay => 'Niets geschreven op deze dag';

  @override
  String get noteAddOnDay => 'Notitie voor deze dag toevoegen';

  @override
  String get notePrevMonth => 'Vorige maand';

  @override
  String get noteNextMonth => 'Volgende maand';

  @override
  String noteMonthCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n notities deze maand',
      one: '1 notitie deze maand',
      zero: 'Geen notities deze maand',
    );
    return '$_temp0';
  }

  @override
  String get measures => 'LICHAAMSMATEN';

  @override
  String get measuresHint =>
      'Van nek tot kuit — volg hoe je lichaam verandert, niet alleen het gewicht op de stang.';

  @override
  String measureCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n metingen',
      one: '1 meting',
      zero: 'Geen metingen',
    );
    return '$_temp0';
  }

  @override
  String get measureNoneYet => 'Nog niet gemeten';

  @override
  String get measureHistory => 'GESCHIEDENIS';

  @override
  String get measureNeck => 'Nek';

  @override
  String get measureShoulders => 'Schouders';

  @override
  String get measureChest => 'Borst';

  @override
  String get measureArm => 'Arm';

  @override
  String get measureForearm => 'Onderarm';

  @override
  String get measureWaist => 'Taille';

  @override
  String get measureHips => 'Heupen';

  @override
  String get measureThigh => 'Bovenbeen';

  @override
  String get measureCalf => 'Kuit';

  @override
  String get measureBodyfat => 'Lichaamsvet';

  @override
  String get timeline => 'TIJDLIJN';

  @override
  String get timelineHint => 'Zelfde pose, zelfde plek, zelfde licht. Over een jaar geloof je je ogen niet.';

  @override
  String get timelineEmptyTitle => 'Je eerste foto start de tijdlijn';

  @override
  String photoCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n foto\'s',
      one: '1 foto',
      zero: 'Geen foto\'s',
    );
    return '$_temp0';
  }

  @override
  String get poseFront => 'Voorkant';

  @override
  String get poseSide => 'Zijaanzicht';

  @override
  String get poseBack => 'Achterkant';

  @override
  String get photoEvery => 'HERINNER MIJ';

  @override
  String photoEveryDays(int n) {
    return 'Elke $n dagen';
  }

  @override
  String get photoEveryOff => 'Nooit';

  @override
  String get timelineEvery => 'GROEP PER';

  @override
  String get custom => 'Aangepast';

  @override
  String photoNextIn(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'Volgende foto over $n dagen',
      one: 'Volgende foto morgen',
    );
    return '$_temp0';
  }

  @override
  String get photoDueNow => 'Foto gepland — maak hem vandaag';

  @override
  String get addTodayPhotos => 'FOTO\'S VAN VANDAAG TOEVOEGEN';

  @override
  String posePhoto(String pose) {
    return 'Foto van $pose';
  }

  @override
  String get compare => 'VERGELIJKEN';

  @override
  String get compareNeedTwo => 'Maak dezelfde pose op twee verschillende dagen en vergelijk ze hier.';

  @override
  String dayNumber(int n) {
    return 'Dag $n';
  }

  @override
  String daysApart(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n dagen verschil',
      one: '1 dag verschil',
      zero: 'Dezelfde dag',
    );
    return '$_temp0';
  }

  @override
  String get deleteEntryTitle => 'Deze dag verwijderen';

  @override
  String get deleteDayBody => 'De foto\'s van deze dag worden ook permanent verwijderd.';

  @override
  String get timelinePhotos => 'Foto\'s';

  @override
  String get timelineBody => 'Spierkaart';

  @override
  String get timelineBodyEmpty => 'Log een training en je spierkaart vult zich hier — zonder foto\'s.';

  @override
  String get timelineBodyHint => 'Gebouwd uit je eigen sets — niets wordt geüpload.';

  @override
  String timelineWindow(String from, String to) {
    return '$from – $to';
  }

  @override
  String sessionCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n trainingen',
      one: '1 training',
      zero: 'Geen trainingen',
    );
    return '$_temp0';
  }

  @override
  String get notifPhotoChannel => 'Voortgangsfoto\'s';

  @override
  String get notifPhotoChannelWhy => 'Een herinnering wanneer je volgende voortgangsfoto aan de beurt is.';

  @override
  String get notifPhotoTitle => 'Tijd voor je voortgangsfoto';

  @override
  String notifPhotoBody(int n) {
    return '$n dagen sinds de vorige. Zelfde pose, zelfde licht.';
  }

  @override
  String get share => 'DELEN';

  @override
  String get sharePick => 'Wat wil je laten zien?';

  @override
  String get shareSession => 'Laatste training';

  @override
  String get shareStreak => 'Reeks en consistentie';

  @override
  String get shareBody => 'Getrainde spieren';

  @override
  String get shareCompare => 'Voor / na';

  @override
  String get shareHint =>
      'De kaart wordt op je telefoon gemaakt. Niets verlaat je telefoon totdat je kiest waarheen je hem stuurt.';

  @override
  String get shareFailed => 'Kon de kaart niet maken';

  @override
  String get shareWeekOf => 'LAATSTE 7 DAGEN';

  @override
  String get shareStreakLabel => 'DAGEN OP RIJ';

  @override
  String get shareSessionsLabel => 'TRAININGEN';

  @override
  String get shareVolumeLabel => 'VOLUME';

  @override
  String get shareSetsLabel => 'SETS';

  @override
  String get shareNothing => 'Log eerst een training — er is nog niets om te laten zien';

  @override
  String get restForExercise => 'RUST VOOR DEZE OEFENING';

  @override
  String get restUsingDefault => 'Standaardduur gebruiken';

  @override
  String get restCustom => 'Alleen voor deze';

  @override
  String get setType => 'SETTYPE';

  @override
  String get setTypeNormal => 'Werkset';

  @override
  String get setTypeWarmup => 'Warming-up';

  @override
  String get setTypeDrop => 'Dropset';

  @override
  String get setTypeFailure => 'Tot falen';

  @override
  String get setTypeHint => 'Opwarmsets tellen niet mee voor je volume of records.';

  @override
  String get addWarmup => 'WARMING-UP';

  @override
  String platesPerSide(String plates) {
    return 'Per kant: $plates';
  }

  @override
  String get howTo => 'HOE UITVOEREN';

  @override
  String get similar => 'VERGELIJKBAAR';

  @override
  String get primaryLabel => 'PRIMAIR';

  @override
  String get secondaryLabel => 'SECUNDAIR';

  @override
  String get none => 'Geen';

  @override
  String setCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n sets', one: '$n set');
    return '$_temp0';
  }

  @override
  String volumeSuffix(String v) {
    return '$v volume';
  }

  @override
  String get weeklyPlan => 'WEEKPLAN';

  @override
  String get yourRoutines => 'JE ROUTINES';

  @override
  String get noRoutines => 'Nog geen routines. Maak er een en voeg je oefeningen toe.';

  @override
  String get newRoutine => 'NIEUWE ROUTINE';

  @override
  String get routineName => 'Naam van routine';

  @override
  String get schedule => 'SCHEMA';

  @override
  String get addFromList => 'Voeg oefeningen toe uit de lijst hieronder.';

  @override
  String get addExercises => 'Oefeningen toevoegen';

  @override
  String get deleteRoutine => 'Deze routine verwijderen?';

  @override
  String exercisesWithCount(int n) {
    return 'OEFENINGEN · $n';
  }

  @override
  String setDay(String day) {
    return '$day INSTELLEN';
  }

  @override
  String get newRoutineName => 'Nieuwe routine';

  @override
  String get dragToReorder => 'Houd vast en sleep om te herschikken — dit is de trainingsvolgorde.';

  @override
  String reorderHandle(String name) {
    return '$name herschikken';
  }

  @override
  String get removeFromRoutine => 'Uit routine verwijderen';

  @override
  String get dropExercise => 'Deze oefening verwijderen?';

  @override
  String dropExerciseBody(String name) {
    return '‘$name’ wordt uit deze training verwijderd. Reeds gelogde gegevens blijven behouden.';
  }

  @override
  String get drop => 'Verwijderen';

  @override
  String get addToWorkout => 'OEFENING TOEVOEGEN';

  @override
  String get resetData => 'Al mijn gegevens verwijderen';

  @override
  String get resetTitle => 'Alles verwijderen?';

  @override
  String get resetBody =>
      'Trainingen, records, routines, notities en profiel. Dit kan niet ongedaan worden gemaakt — exporteer eerst een back-up als je ze wilt bewaren.';

  @override
  String get resetConfirm => 'Alles verwijderen';

  @override
  String get resetDone => 'Alle gegevens zijn verwijderd';

  @override
  String get support => 'ONDERSTEUNING';

  @override
  String get reportBug => 'Bug melden';

  @override
  String get requestFeature => 'Functie voorstellen';

  @override
  String get starOnGithub => 'Ster geven op GitHub';

  @override
  String get buyCoffee => 'Trakteer me op koffie';

  @override
  String get cantOpenLink => 'Kon de link niet openen';

  @override
  String get preferences => 'VOORKEUREN';

  @override
  String get theme => 'Thema';

  @override
  String get darkTheme => 'Donker';

  @override
  String get lightTheme => 'Licht';

  @override
  String get languageLabel => 'Taal';

  @override
  String get unitsLabel => 'Eenheden';

  @override
  String get restTimer => 'Rusttimer';

  @override
  String get alarmBlockedTitle => 'Meldingen zijn uitgeschakeld';

  @override
  String get alarmBlockedBody => 'Het rustalarm gaat niet af als het scherm vergrendeld is';

  @override
  String get alarmBlockedAction => 'INSCHAKELEN';

  @override
  String get alarmSound => 'Alarmgeluid';

  @override
  String get alarmDefaultName => 'Standaard';

  @override
  String get alarmSoundHint => 'Gebruik je eigen geluid — maximaal 15 seconden';

  @override
  String get alarmChoose => 'Geluid kiezen…';

  @override
  String get alarmPreview => 'Huidig geluid afspelen';

  @override
  String get alarmReset => 'Standaardgeluid herstellen';

  @override
  String get alarmTooLong => 'Dit geluid is langer dan 15 seconden';

  @override
  String get alarmInvalid => 'Kon dit audiobestand niet lezen';

  @override
  String alarmChanged(String name) {
    return 'Alarmgeluid ingesteld op ‘$name’';
  }

  @override
  String get alarmChangedDefault => 'Standaardgeluid hersteld';

  @override
  String get homeWidgets => 'STARTSCHERM';

  @override
  String get addActivityWidget => 'Activiteitswidget toevoegen';

  @override
  String get addStatsWidget => 'Statistiekenwidget toevoegen';

  @override
  String get pinUnsupported => 'Voeg het toe via het widgetmenu van je launcher';

  @override
  String get background => 'Achtergrond';

  @override
  String get bgNone => 'Geen';

  @override
  String get bgDots => 'Punten';

  @override
  String get bgGrid => 'Raster';

  @override
  String get data => 'GEGEVENS';

  @override
  String get exportCsv => 'Trainingen exporteren (CSV)';

  @override
  String get exportBackup => 'Back-up exporteren (ZIP)';

  @override
  String get importBackup => 'Back-up importeren';

  @override
  String get importHint =>
      'Kies een .zip-back-up (of oudere .json) die uit GymMane is geëxporteerd. Dit vervangt je huidige gegevens, inclusief media.';

  @override
  String get import => 'Importeren';

  @override
  String get chooseFile => 'Bestand kiezen';

  @override
  String get importFromApp => 'Importeren uit een andere app';

  @override
  String get importUnknownFormat =>
      'Dit bestand heeft kolommen nodig voor datum, oefening, herhalingen en gewicht';

  @override
  String get importZipNoWeights => 'Deze zip bevat geen gewichtsbestand';

  @override
  String importWeights(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n wegingen geïmporteerd',
      one: '$n weging geïmporteerd',
    );
    return '$_temp0';
  }

  @override
  String get importReadFailed => 'Kon dit bestand niet lezen';

  @override
  String get importUnitTitle => 'Welke eenheid gebruikt dit bestand?';

  @override
  String get importUnitBody => 'Deze export vermeldt niet welke gewichtseenheid wordt gebruikt.';

  @override
  String get importNothing => 'Niets nieuws om te importeren';

  @override
  String importDone(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n trainingen geïmporteerd',
      one: '$n training geïmporteerd',
    );
    return '$_temp0';
  }

  @override
  String get aboutGymmane => 'Over GymMane';

  @override
  String get yourProfile => 'JE PROFIEL';

  @override
  String get autofills => 'Vult de calculators automatisch in';

  @override
  String get nameLabel => 'NAAM';

  @override
  String get sexLabel => 'GESLACHT';

  @override
  String get macroProtein => 'EIWIT';

  @override
  String get macroCarbs => 'KOOLHYDRATEN';

  @override
  String get macroFat => 'VET';

  @override
  String get male => 'Man';

  @override
  String get female => 'Vrouw';

  @override
  String get ageLabel => 'LEEFTIJD';

  @override
  String get heightLabel => 'LENGTE';

  @override
  String get weightLabel => 'GEWICHT';

  @override
  String get weeklyGoal => 'WEEKDOEL';

  @override
  String get activityLabel => 'ACTIVITEIT';

  @override
  String get addPhoto => 'Foto toevoegen';

  @override
  String get removePhoto => 'Foto verwijderen';

  @override
  String get takePhoto => 'Foto maken';

  @override
  String get chooseGallery => 'Uit galerij kiezen';

  @override
  String get backupCopied => 'Back-up naar klembord gekopieerd';

  @override
  String get backupImported => 'Back-up geïmporteerd';

  @override
  String get backupFailed => 'Kon deze back-up niet lezen';

  @override
  String get nothingToExport => 'Nog niets om te exporteren — log eerst een training';

  @override
  String get athlete => 'Atleet';

  @override
  String calculatorsCount(int n) {
    return '$n calculators voor je training';
  }

  @override
  String get result => 'RESULTAAT';

  @override
  String get weightLifted => 'GETILD GEWICHT';

  @override
  String get repsPerformed => 'UITGEVOERDE HERHALINGEN';

  @override
  String get neck => 'NEK';

  @override
  String get waist => 'TAILLE';

  @override
  String get hip => 'HEUP (vrouwen)';

  @override
  String get targetWeight => 'DOELGEWICHT';

  @override
  String get workingWeight => 'WERKGEWICHT';

  @override
  String get activityLevel => 'ACTIVITEITSNIVEAU';

  @override
  String get barWeight => 'STANGGEWICHT';

  @override
  String get perSide => 'PER KANT';

  @override
  String get justTheBar => 'Alleen de stang.';

  @override
  String perSideCount(int n) {
    return '× $n per kant';
  }

  @override
  String rampSet(String pct, int reps) {
    return '$pct · $reps herhalingen';
  }

  @override
  String get toolNameRm => '1RM';

  @override
  String get toolNameBmi => 'BMI';

  @override
  String get toolNameCal => 'Calorieën';

  @override
  String get toolNameBf => 'Lichaamsvet';

  @override
  String get toolNamePlate => 'Schijven';

  @override
  String get toolNameWarmup => 'Warming-up';

  @override
  String get toolTitleRm => '1RM-calculator';

  @override
  String get toolTitleBmi => 'BMI-calculator';

  @override
  String get toolTitleCal => 'Calorieën & macro\'s';

  @override
  String get toolTitleBf => 'Lichaamsvet %';

  @override
  String get toolTitlePlate => 'Schijvencalculator';

  @override
  String get toolTitleWarmup => 'Opwarmsets';

  @override
  String get toolHintRm => 'Geschat maximum voor 1 herhaling (Epley-formule)';

  @override
  String get toolHintCal => 'Schatting van dagelijkse onderhoudsbehoefte';

  @override
  String get toolHintBf => 'Schatting volgens de US Navy-methode';

  @override
  String get toolHintPlate => 'Totaal gewicht van de stang';

  @override
  String get toolHintWarmup => 'Doelwerkgewicht';

  @override
  String get toolDescRm => 'Geschat maximum voor één herhaling';

  @override
  String get toolDescBmi => 'Body mass index';

  @override
  String get toolDescCal => 'Calorieën en macro\'s';

  @override
  String get toolDescBf => 'Lichaamsvetpercentage';

  @override
  String get toolDescPlate => 'Halter-schijvencalculator';

  @override
  String get toolDescWarmup => 'Opbouwsets voor warming-up';

  @override
  String get bmiUnderweight => 'Ondergewicht';

  @override
  String get bmiNormal => 'Normaal gewicht';

  @override
  String get bmiOverweight => 'Overgewicht';

  @override
  String get bmiObese => 'Obesitas';

  @override
  String get actSedentary => 'Zittend';

  @override
  String get actLight => 'Licht';

  @override
  String get actActive => 'Actief';

  @override
  String get actModerate => 'Matig';

  @override
  String get muscleChest => 'Borst';

  @override
  String get muscleBack => 'Rug';

  @override
  String get muscleShoulders => 'Schouders';

  @override
  String get muscleBiceps => 'Biceps';

  @override
  String get muscleTriceps => 'Triceps';

  @override
  String get muscleForearm => 'Onderarm';

  @override
  String get muscleTrapezius => 'Trapezius';

  @override
  String get muscleAbdomen => 'Buik';

  @override
  String get muscleObliques => 'Schuine buikspieren';

  @override
  String get muscleQuads => 'Quadriceps';

  @override
  String get muscleHamstrings => 'Hamstrings';

  @override
  String get muscleGlutes => 'Bilspieren';

  @override
  String get muscleCalves => 'Kuiten';

  @override
  String get mgChest => 'Borst';

  @override
  String get mgBack => 'Rug';

  @override
  String get mgLegs => 'Benen';

  @override
  String get mgShoulders => 'Schouders';

  @override
  String get mgArms => 'Armen';

  @override
  String get mgCore => 'Core';

  @override
  String get equipBarbell => 'Halterstang';

  @override
  String get equipDumbbell => 'Dumbbell';

  @override
  String get equipCable => 'Kabel';

  @override
  String get equipMachine => 'Machine';

  @override
  String get equipBodyweight => 'Lichaamsgewicht';

  @override
  String get equipWeighted => 'Met gewicht';

  @override
  String get equipBand => 'Weerstandsband';

  @override
  String get equipKettlebell => 'Kettlebell';

  @override
  String get equipRings => 'Ringen';

  @override
  String get equipOther => 'Overig';

  @override
  String get diffBeginner => 'Beginner';

  @override
  String get diffAdvanced => 'Gevorderd';

  @override
  String get diffIntermediate => 'Gemiddeld';

  @override
  String get about => 'OVER';

  @override
  String version(String v) {
    return 'Versie $v';
  }

  @override
  String get aboutBlurb => 'Gemaakt door sporters, voor sporters.';

  @override
  String get freeForever => 'Voor altijd gratis';

  @override
  String get freeForeverWhy => 'Geen abonnement, geen advertenties, niets achter een betaalmuur.';

  @override
  String get fullyOffline => '100% offline';

  @override
  String get fullyOfflineWhy => 'Geen account, geen server. Je trainingen verlaten deze telefoon nooit.';

  @override
  String get yoursToTake => 'Je gegevens zijn van jou';

  @override
  String get yoursToTakeWhy => 'Exporteer ze wanneer je wilt als CSV en verwijder alles in één keer.';

  @override
  String get whatsInside => 'INHOUD';

  @override
  String exercisesInside(int n) {
    return '$n oefeningen';
  }

  @override
  String get exercisesInsideWhy => 'Elk met animatie en stapsgewijze instructies.';

  @override
  String get calculatorsInside => '6 calculators';

  @override
  String get calculatorsInsideWhy =>
      '1RM, schijven, BMI, calorieën, lichaamsvet en warming-up — allemaal gebaseerd op gepubliceerde formules.';

  @override
  String get mathInside => 'Transparante berekeningen';

  @override
  String get mathInsideWhy =>
      'Volume, records en sets worden uit je eigen gegevens berekend. Niets is alleen voor de sier.';

  @override
  String get yourNumbers => 'JOUW CIJFERS';

  @override
  String get sessionsCaps => 'TRAININGEN';

  @override
  String get liftedCaps => 'GETILD';

  @override
  String get streakCaps => 'REEKS';

  @override
  String daysUnit(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'dagen', one: 'dag');
    return '$_temp0';
  }

  @override
  String get restDefaultLabel => 'Rusttimer';

  @override
  String restDefault(int s) {
    return 'Standaard: $s s — wijzig in Instellingen';
  }

  @override
  String get reset => 'RESETTEN';

  @override
  String get welcomeKicker => 'WELKOM BIJ';

  @override
  String get welcomeBlurb => 'Alles blijft op je telefoon. Geen account, geen internet, niets te betalen.';

  @override
  String get welcomeStart => 'BEGINNEN';

  @override
  String onbStep(int i, int n) {
    return 'STAP $i VAN $n';
  }

  @override
  String get onbNameTitle => 'Hoe moeten we je noemen?';

  @override
  String get onbNameHint => 'Je voornaam';

  @override
  String get onbNameWhy => 'Alleen gebruikt om je te begroeten. Verlaat je telefoon nooit.';

  @override
  String get onbBodyTitle => 'Een paar gegevens';

  @override
  String get onbBodyWhy => 'Ze vullen de calculators in. Je kunt ze altijd wijzigen in Instellingen.';

  @override
  String get onbGoalTitle => 'Hoe vaak train je?';

  @override
  String get onbGoalWhy => 'Stelt je weekdoel in. Wees realistisch, niet te ambitieus.';

  @override
  String perWeek(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n trainingen per week',
      one: '$n training per week',
    );
    return '$_temp0';
  }

  @override
  String get onbUnitsTitle => 'Kilo\'s of ponden?';

  @override
  String get next => 'VOLGENDE';

  @override
  String get back => 'TERUG';

  @override
  String get skip2 => 'Overslaan';

  @override
  String get madeWithLoveBy => 'MET LIEFDE GEMAAKT DOOR';

  @override
  String get sourceCode => 'BRONCODE';

  @override
  String get suggested => 'AANBEVOLEN';

  @override
  String get results => 'RESULTATEN';

  @override
  String get noMatches => 'Geen oefening komt overeen met deze zoekopdracht.';

  @override
  String get tapToEdit =>
      'Tik op het potlood om een invoer te corrigeren of op de prullenbak om hem te verwijderen.';

  @override
  String get editEntry => 'Bewerken';

  @override
  String get editEntryHint => 'Corrigeer herhalingen of gewicht van elke set.';

  @override
  String get removeSet => 'Set verwijderen';

  @override
  String get continueWorkout => 'DOORGAAN';

  @override
  String get continueWorkoutBody =>
      'De training wordt hervat met de reeds afgevinkte sets. Als je hem opnieuw afrondt, wordt hij op de oorspronkelijke datum opgeslagen.';

  @override
  String get addBodyWidget => 'Spierkaartwidget toevoegen';

  @override
  String get repsOnly => 'Alleen herhalingen';

  @override
  String get repsOnlyHint => 'Log deze oefening zonder gewicht.';

  @override
  String get useDefaultArt => 'Standaardillustratie gebruiken';

  @override
  String daysShort(int n) {
    return '$n d';
  }

  @override
  String get focusCard => 'Focus van vandaag';

  @override
  String get autoAdvance => 'Automatisch doorgaan';

  @override
  String get keepScreenOn => 'Scherm aan laten tijdens het trainen';

  @override
  String get lockWorkout => 'Scherm vergrendelen';

  @override
  String get unlockWorkout => 'Ontgrendelen';

  @override
  String get lockedCaps => 'VERGRENDELD';

  @override
  String get holdToUnlock => 'Houd ingedrukt om te ontgrendelen';

  @override
  String get liveChannel => 'Lopende training';

  @override
  String get liveChannelWhy => 'Toont de huidige oefening, set en rusttimer terwijl je traint';

  @override
  String liveSet(int n, int total) {
    return 'Set $n van $total';
  }

  @override
  String get liveResting => 'Rust';

  @override
  String get liveAllDone => 'Alle sets gedaan';

  @override
  String get autoAdvanceHint =>
      'Wanneer de laatste set van een oefening is afgevinkt, gaat de training automatisch naar de volgende.';

  @override
  String get autoProgress => 'Volgende keer gewicht toevoegen';

  @override
  String autoProgressHint(String w) {
    return 'Haal alle herhalingen en de volgende training begint met $w extra.';
  }

  @override
  String get placePlates => 'Schijven en stang';

  @override
  String get platesAll => 'Alles beschikbaar';

  @override
  String platesOwned(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n maten', one: '$n maat');
    return '$_temp0';
  }

  @override
  String get platePairs => 'PAREN';

  @override
  String plateAchievable(String w) {
    return 'Dichtst mogelijke belasting: $w';
  }

  @override
  String get autoWarmup => 'Beginnen met opwarmsets';

  @override
  String get autoWarmupHint => 'Voegt opbouwsets toe wanneer de training wordt geopend.';

  @override
  String get trainReminder => 'Trainingsherinnering';

  @override
  String get trainReminderHint =>
      'Een herinnering op dit tijdstip, alleen op dagen waarop je routine gepland staat.';

  @override
  String get notifTrainChannel => 'Trainingsherinnering';

  @override
  String get notifTrainChannelWhy => 'Een herinnering om te trainen op je geplande dagen.';

  @override
  String get notifTrainTitle => 'Tijd om te trainen';

  @override
  String get notifTrainBody => 'Je routine wacht op je.';

  @override
  String get exportCatalog => 'Oefeningenlijst exporteren';

  @override
  String get importRoutine => 'Routine importeren (JSON)';

  @override
  String get planIntro => 'Maak voor mij een trainingsroutine met alleen oefeningen uit deze lijst.';

  @override
  String get planFormat => 'Antwoord alleen in JSON, in deze vorm:';

  @override
  String planImported(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n oefeningen aan routine toegevoegd',
      one: '$n oefening aan routine toegevoegd',
    );
    return '$_temp0';
  }

  @override
  String get planNothing => 'Geen oefening uit dit bestand komt overeen met je bibliotheek';

  @override
  String get planFailed => 'Dit bestand is geen routine die GymMane kan lezen';

  @override
  String get routineGroup => 'Groep';

  @override
  String get newGroup => 'Nieuwe groep';

  @override
  String get noGroup => 'Geen groep';

  @override
  String get groupNameHint => 'Push / Pull / Benen, 5×5…';

  @override
  String get filters => 'Filters';

  @override
  String get setsPlannedHint =>
      'Kies voor elke oefening het gewenste aantal sets. De training opent dan helemaal klaar.';

  @override
  String get nextTime => 'VOLGENDE KEER';

  @override
  String get nextHold => 'houd hetzelfde gewicht totdat je alle herhalingen haalt';

  @override
  String get bgPhoto => 'Jouw foto';

  @override
  String get bgPhotoPick => 'Foto kiezen';

  @override
  String get bgPhotoChange => 'Foto wijzigen';

  @override
  String get bgPhotoRemove => 'Foto verwijderen';

  @override
  String get bgDim => 'VERDUISTERING';

  @override
  String get dimSoft => 'Licht';

  @override
  String get dimMedium => 'Gemiddeld';

  @override
  String get dimStrong => 'Sterk';

  @override
  String get bgPhotoHint =>
      'De foto verschijnt achter de hele interface, verduisterd zodat de app leesbaar blijft.';

  @override
  String get reminderSmart => 'Slim';

  @override
  String get reminderFixed => 'Vaste tijd';

  @override
  String get reminderSmartHint =>
      'Gebruikt de dagen en tijden waarop je echt traint en blijft stil als je die dag al hebt getraind.';

  @override
  String get reminderSmartEmpty => 'Log nog een paar trainingen zodat het je gewoonten kan leren.';

  @override
  String habitFocus(String day) {
    return 'wat je gewoonlijk traint op $day';
  }

  @override
  String get duplicateRoutine => 'Routine dupliceren';

  @override
  String copySuffix(String name) {
    return '$name (kopie)';
  }

  @override
  String get saveAsRoutine => 'OPSLAAN ALS ROUTINE';

  @override
  String get savedAsRoutine => 'Opgeslagen als routine';

  @override
  String get templates => 'Kant-en-klare routines';

  @override
  String get templatesHint =>
      'Klassieke routines opgebouwd uit je eigen bibliotheek. Je kunt daarna alles aanpassen.';

  @override
  String templateAdded(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n routines toegevoegd',
      one: '$n routine toegevoegd',
    );
    return '$_temp0';
  }

  @override
  String get tplFullbody => 'Drie full-bodytrainingen per week. Ideaal om te beginnen.';

  @override
  String get tplPpl => 'Push, pull en benen. Drie of zes dagen per week.';

  @override
  String get tplUpperlower => 'Boven- en onderlichaam, vier dagen per week.';

  @override
  String get tplStronglifts => 'Twee afwisselende trainingen van vijf sets van vijf.';

  @override
  String get tplStartingstrength => 'Squat bij elke training, met twee afwisselende trainingen.';

  @override
  String get tplHome => 'Niets behalve een optrekstang en de vloer.';

  @override
  String dayCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n dagen', one: '$n dag');
    return '$_temp0';
  }

  @override
  String get logRpe => 'Inspanning loggen (RPE)';

  @override
  String get rpeTitle => 'INSPANNING (RPE)';

  @override
  String get rpeHint => '10 = geen herhaling meer mogelijk; 8 = ongeveer twee herhalingen over.';

  @override
  String get superset => 'Superset';

  @override
  String get supersetLink => 'Koppelen aan de volgende';

  @override
  String get supersetHint => 'Geen rust tussen gekoppelde oefeningen — je gaat meteen door naar de volgende.';

  @override
  String get aiRoutine => 'Routine met AI';

  @override
  String get aiIntro =>
      'GymMane communiceert nooit rechtstreeks met AI. Je exporteert je oefeningenlijst, plakt die in de assistent die je al gebruikt en importeert daarna het antwoord. Niets verlaat je telefoon vanzelf.';

  @override
  String get aiStep1 =>
      'Exporteer je oefeningenlijst. Als je een plek hebt gekozen, bevat die alleen wat je daar kunt doen.';

  @override
  String get aiStep2 => 'Geef dit bestand aan de AI van jouw keuze en vraag om een routine.';

  @override
  String get aiStep3 => 'Sla het antwoord op als bestand — JSON of gewone tekst, beide werken.';

  @override
  String get aiStep4 =>
      'Importeer het hier. De namen worden met je bibliotheek vergeleken en de routine wordt gemaakt.';

  @override
  String aiMissing(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n namen stonden niet in je bibliotheek',
      one: '1 naam stond niet in je bibliotheek',
    );
    return '$_temp0';
  }

  @override
  String get importApps => 'Ondersteunde apps';

  @override
  String get importOtherCsv => 'Elke andere CSV met datum, oefening, herhalingen en gewicht';

  @override
  String get importAskApp => 'Heb je een andere app nodig? Vraag om ondersteuning';

  @override
  String get awardFirstStepName => 'Eerste stap';

  @override
  String get awardFirstStepLine => 'Welkom bij GymMane. Deze krijg je cadeau.';

  @override
  String get awardFirstWorkoutName => 'Eerste training';

  @override
  String get awardFirstWorkoutLine => 'De eerste is opgeslagen. Die is het moeilijkst.';

  @override
  String get awardFirstRoutineName => 'Eerste routine';

  @override
  String get awardFirstRoutineLine => 'Nu heb je een plan om naar terug te keren.';

  @override
  String get awardFirstRecordName => 'Eerste record';

  @override
  String get awardFirstRecordLine => 'Je hebt je beste resultaat bij een oefening verbeterd.';

  @override
  String get awardStreak3Name => 'Drie op rij';

  @override
  String get awardStreak3Line => 'Drie dagen op rij. Zo begint het.';

  @override
  String get awardTonne1Name => 'Eén ton';

  @override
  String get awardTonne1Line => 'In totaal duizend kilo getild over al je sets.';

  @override
  String get awardSets100Name => 'Honderd sets';

  @override
  String get awardSets100Line => 'Honderd sets voltooid, één voor één.';

  @override
  String get awardHours10Name => 'Tien uur';

  @override
  String get awardHours10Line => 'Tien trainingsuren op de teller.';

  @override
  String get awardWorkouts50Name => 'Vijftig trainingen';

  @override
  String get awardWorkouts50Line => 'Vijftig trainingen achter de rug.';

  @override
  String get awardHours50Name => 'Vijftig uur';

  @override
  String get awardHours50Line => 'Vijftig uur aan training besteed.';

  @override
  String get awardsTitle => 'Medailles';

  @override
  String get awardWon => 'Behaald';

  @override
  String get yearTitle => 'Jouw jaar';

  @override
  String get yearBestMonth => 'Beste maand';

  @override
  String get yearMonths => 'maanden';

  @override
  String get awardSpinHint => 'Veeg over de medaille om hem te draaien';

  @override
  String get awardUnlocked => 'Nieuwe prestatie ontgrendeld';

  @override
  String get awardNice => 'Lekker!';

  @override
  String get awardSaveImage => 'Afbeelding opslaan';

  @override
  String get awardSaved => 'Opgeslagen in je galerij';

  @override
  String get awardStreakBottom => 'reeks';

  @override
  String get awardStreak7Top => 'zeven dagen';

  @override
  String get awardStreak7Name => 'Zeven dagen';

  @override
  String get awardStreak7Line => 'Een hele week zonder een dag over te slaan.';

  @override
  String get awardStreak30Top => 'dertig dagen';

  @override
  String get awardStreak30Name => 'Dertig dagen';

  @override
  String get awardStreak30Line => 'Een maand op rij. Nu is het een gewoonte.';

  @override
  String get awardWorkouts100Top => 'honderd';

  @override
  String get awardWorkouts100Bottom => 'trainingen';

  @override
  String get awardWorkouts100Name => 'Honderd trainingen';

  @override
  String get awardWorkouts100Line => 'Honderd trainingen van begin tot eind gelogd.';

  @override
  String get awardTonnes100Top => 'honderd';

  @override
  String get awardTonnes100Bottom => 'tonnen';

  @override
  String get awardTonnes100Name => 'Honderd ton';

  @override
  String get awardTonnes100Line => 'Alles wat je hebt getild komt uit op 100.000 kg.';

  @override
  String get awardSets1000Top => 'duizend';

  @override
  String get awardSets1000Bottom => 'sets';

  @override
  String get awardSets1000Name => 'Duizend sets';

  @override
  String get awardSets1000Line => 'Eén set tegelijk, tot duizend.';

  @override
  String get profile => 'Profiel';

  @override
  String get editProfile => 'Profiel bewerken';

  @override
  String get pickBadge => 'Badge';

  @override
  String get badgeTitle => 'Jouw badge';

  @override
  String get statWorkouts => 'Trainingen';

  @override
  String get statTrained => 'Getraind';

  @override
  String get statSets => 'Sets';

  @override
  String get statLifted => 'Getild';

  @override
  String get statStreak => 'Reeks';

  @override
  String get statDays => 'dagen';

  @override
  String get unitHours => 'u';

  @override
  String get unitDays => 'dagen';

  @override
  String get snapshots => 'Foto\'s';

  @override
  String get snapNow => 'Nu maken';

  @override
  String get calendarLegend => 'Training · foto\'s';

  @override
  String get addCover => 'Omslag toevoegen';

  @override
  String get addTodayWidget => 'Training van vandaag gedaan of niet';

  @override
  String get monthTitle => 'Deze maand';

  @override
  String get photosCard => 'Jouw foto\'s';

  @override
  String get handleLabel => 'Gebruikersnaam';

  @override
  String get setupTitle => 'Vul deze gegevens in en de rest van de pagina wordt automatisch ingevuld';

  @override
  String get setupHint => 'Elk cijfer hier komt uit wat je logt. Niets wordt ergens naartoe gestuurd.';

  @override
  String get setupWorkout => 'Log je eerste training';

  @override
  String get setupWeight => 'Log je lichaamsgewicht';

  @override
  String get setupMeasures => 'Meet je lichaamsmaten';

  @override
  String get setupPhoto => 'Maak je eerste voortgangsfoto';

  @override
  String get progressTitle => 'Voortgang';

  @override
  String get tileVolume30 => 'Volume · 30 d';

  @override
  String get tileAddWeight => 'Jouw waarde toevoegen';

  @override
  String get heatToneTitle => 'Heatmapkleur';

  @override
  String get heatToneHint => 'Wijzigt alleen de kleur van het raster en het lichaam.';

  @override
  String get thisWeekTitle => 'Deze week';

  @override
  String get momentsEmptyTitle => 'Hier is nog niets';

  @override
  String get deletePhotoTitle => 'Deze foto verwijderen?';

  @override
  String get deletePhotoBody => 'Deze wordt permanent verwijderd.';

  @override
  String get awardsEarned => 'Behaald';

  @override
  String get awardsLocked => 'Vergrendeld';

  @override
  String get awardStreak100Name => 'Honderd dagen';

  @override
  String get awardWorkouts10Name => 'Tien trainingen';

  @override
  String get awardWorkouts10Line => 'De eerste tien maken het verschil.';

  @override
  String get awardWorkouts365Name => 'Driehonderdvijfenzestig';

  @override
  String get awardWorkouts365Line => 'Een training voor elke dag van een jaar, één voor één gelogd.';

  @override
  String get awardTonnes10Name => 'Tien ton';

  @override
  String get awardTonnes10Line => 'Tienduizend kilo ging door je handen.';

  @override
  String get awardHours100Name => 'Honderd uur';

  @override
  String get awardHours100Line => 'Honderd uur onder de stang, met de klok mee.';

  @override
  String awardWonOn(String date) {
    return 'Behaald op $date';
  }

  @override
  String awardProgressLabel(String value, String goal) {
    return '$value van $goal';
  }

  @override
  String badgeName(String id) {
    String _temp0 = intl.Intl.selectLogic(id, {
      'gold': 'Goud',
      'blue': 'Blauw',
      'green': 'Groen',
      'other': 'Badge',
    });
    return '$_temp0';
  }

  @override
  String memberSince(String date) {
    return 'Sinds $date';
  }

  @override
  String levelShort(int n) {
    return 'Niveau $n';
  }

  @override
  String levelToNext(int n, int next) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'Nog $n trainingen tot niveau $next',
      one: 'Nog 1 training tot niveau $next',
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
      'ember': 'Gloed',
      'green': 'Groen',
      'blue': 'Blauw',
      'mono': 'Grijs',
      'other': 'Kleur',
    });
    return '$_temp0';
  }

  @override
  String setsThisWeek(int n) {
    return '$n sets';
  }

  @override
  String weekOfGoal(int n, int goal) {
    return '$n van $goal deze week';
  }

  @override
  String momentCount(int n) {
    return '$n foto\'s';
  }

  @override
  String get badgeHint =>
      'Kies een kleur of tik op je huidige om hem te verwijderen. Alleen voor jou — niets wordt gecontroleerd en niets kost geld.';

  @override
  String get momentsEmptyHint =>
      'Maak een foto van de sportschool, het bord, een geladen stang — alles wat je wilt onthouden. Het blijft op je telefoon en alleen jij ziet het.';

  @override
  String get awardStreak100Line => 'Honderd dagen op rij. Dit is geen motivatie meer, dit is een gewoonte.';

  @override
  String get coverLabel => 'OMSLAG';

  @override
  String get removeCover => 'Omslag verwijderen';

  @override
  String get startTitle => 'Training starten';

  @override
  String get logTitle => 'Training loggen';

  @override
  String get logHint => 'Zonder timer — vul gewoon in wat je hebt gedaan.';

  @override
  String get orStartFrom => 'Of beginnen met';

  @override
  String get pickExercisesOption => 'Oefeningen kiezen';

  @override
  String get chooseFocusOption => 'Focus kiezen';

  @override
  String get plannedRoutine => 'GEPLAND';

  @override
  String get logWorkoutAction => 'TRAINING LOGGEN';

  @override
  String get logging => 'LOGGEN';

  @override
  String get placesLabel => 'Mijn plekken';

  @override
  String get undo => 'Ongedaan maken';

  @override
  String get deleteSet => 'Set verwijderen';

  @override
  String get setDeleted => 'Set verwijderd';

  @override
  String get removeWarmup => 'Warming-up weghalen';

  @override
  String get addWeightAction => 'Gewicht toevoegen';

  @override
  String get workoutOverview => 'Deze training';

  @override
  String get allExercisesShort => 'Alle';

  @override
  String setsDoneOf(int done, int total) {
    return '$done/$total sets';
  }

  @override
  String get nowLabel => 'Nu';

  @override
  String get deleteWorkout => 'Training verwijderen';

  @override
  String get deleteWorkoutBody => 'Deze training en al haar sets worden uit je geschiedenis verwijderd.';

  @override
  String get themeAuto => 'Auto';

  @override
  String get themeAutoHint => 'Volgt je telefoon';

  @override
  String get demoSizeTitle => 'Oefeningsdemo tijdens het trainen';

  @override
  String get demoLarge => 'Groot';

  @override
  String get demoSmall => 'Klein';

  @override
  String get demoOff => 'Verborgen';

  @override
  String get alarmStyleTitle => 'Als de rust voorbij is';

  @override
  String get alarmStyleLoud => 'Altijd afgaan';

  @override
  String get alarmStyleQuiet => 'Stille modus volgen';

  @override
  String get alarmStyleVibrate => 'Alleen trillen';

  @override
  String get alarmStyleHint =>
      'Altijd afgaan gebruikt het alarmvolume, ook op stil. Stille modus volgen gebruikt het meldingsvolume en trilt alleen als je telefoon op stil staat.';

  @override
  String get suggestedPicks => 'Voorgesteld voor jou';

  @override
  String get moreOptions => 'Meer opties';

  @override
  String get suggestInWorkouts => 'Voorstellen in snelle trainingen';

  @override
  String get suggestInWorkoutsHint =>
      'Uit houdt hem uit de voorstellen. Met de hand toevoegen kan nog steeds.';

  @override
  String get dontSuggest => 'Niet meer voorstellen';

  @override
  String get noLongerSuggested => 'Wordt niet meer voorgesteld';

  @override
  String get onbPlaceTitle => 'Waar train je?';

  @override
  String get onbPlaceWhy =>
      'Kies alle plekken waar je traint. We stellen alleen voor wat je op elke plek kunt doen.';

  @override
  String get onbPlaceGear => 'Wat heb je daar?';

  @override
  String distanceCol(String unit) {
    return 'AFSTAND ($unit)';
  }

  @override
  String get timeCol => 'TIJD';

  @override
  String get timeMinutesTitle => 'Tijd (minuten)';

  @override
  String get timeSecondsTitle => 'Tijd (seconden)';

  @override
  String distanceTitle(String unit) {
    return 'Afstand ($unit)';
  }

  @override
  String get holdLabel => 'Vasthouden';

  @override
  String get stopLabel => 'Stop';

  @override
  String startHold(String time) {
    return 'Start · $time';
  }

  @override
  String get exerciseTypeLabel => 'Vastleggen op';

  @override
  String get typeReps => 'Herhalingen en gewicht';

  @override
  String get typeTime => 'Tijd';

  @override
  String get typeCardio => 'Afstand en tijd';

  @override
  String get exerciseTypeHint =>
      'Cardio zoals hardlopen of zwemmen legt afstand en tijd vast. Houdingen zoals de plank leggen tijd vast.';

  @override
  String get howToLabel => 'Hoe (optioneel)';

  @override
  String get howToHint => 'Eén stap per regel';

  @override
  String get editExercise => 'Oefening bewerken';

  @override
  String get saveChanges => 'Wijzigingen opslaan';

  @override
  String get noStepsYet => 'Nog geen stappen. Schrijf je eigen stappen op zodat je onthoudt hoe je het doet.';

  @override
  String get addSteps => 'Stappen schrijven';

  @override
  String get setTypeRestPause => 'Rest-pause';

  @override
  String get planFormatNotes =>
      'Gebruik de oefeningnamen precies zoals ze in de lijst staan. \"sets\", \"reps\", \"weight\" (in de opgegeven eenheid), \"rest\" in seconden en \"days\" zijn optioneel. \"superset\": true koppelt een oefening aan de volgende. Voor meerdere weken groepeer je de routines in \"weeks\", zoals in het tweede voorbeeld.';

  @override
  String get planSets => 'Sets plannen';

  @override
  String get planSetsHint =>
      'Kies het type, de herhalingen en het gewicht van elke set. Laat het gewicht op Auto om vanaf je laatste training te beginnen.';

  @override
  String get autoValue => 'Auto';

  @override
  String get clearPlan => 'Plan wissen';

  @override
  String get planChip => 'Plan';

  @override
  String get shareRoutine => 'Routine delen';

  @override
  String get shareWeek => 'Mijn week delen';

  @override
  String get shareWeekHint => 'Al je routines en de dag waarop elke routine valt.';

  @override
  String shareMessage(String name) {
    return '$name — open het bestand met GymMane om het toe te voegen.';
  }

  @override
  String get importRoutines => 'Routines importeren';

  @override
  String get importPasteHint =>
      'Plak hier een routine: gedeeld vanuit GymMane, een AI-antwoord, JSON of CSV.';

  @override
  String get pasteAction => 'Plakken';

  @override
  String routineCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n routines', one: '1 routine');
    return '$_temp0';
  }

  @override
  String get useTheirSchedule => 'Ook het weekschema gebruiken';

  @override
  String get useTheirScheduleHint => 'De dagen die meekomen vervangen wat je op die dagen gepland had.';

  @override
  String get addToMyRoutines => 'Toevoegen aan mijn routines';

  @override
  String routinesAdded(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n routines toegevoegd',
      one: '1 routine toegevoegd',
    );
    return '$_temp0';
  }

  @override
  String get nothingToImport => 'Niets hier dat GymMane kan importeren';

  @override
  String get aiStepCopy =>
      'Kopieer het verzoek. Het bevat je oefeningenlijst en het formaat dat GymMane leest.';

  @override
  String get aiStepAsk => 'Plak het in een AI en zeg wat je wilt: dagen per week, doel, hoeveel weken.';

  @override
  String get aiStepPaste => 'Plak het antwoord hieronder en importeer het. Geen bestand nodig.';

  @override
  String get copyForAi => 'Kopiëren voor de AI';

  @override
  String get copiedDone => 'Gekopieerd';

  @override
  String get aiPasteHint => 'Plak hier het antwoord van de AI';

  @override
  String get importAction => 'Importeren';

  @override
  String get showFormat => 'Bekijk het formaat';

  @override
  String get shareAsFile => 'Delen als bestand';

  @override
  String get recoveryTab => 'Herstel';

  @override
  String recoveryOverall(int pct) {
    return 'Lichaam $pct% hersteld';
  }

  @override
  String get recoveryAllFresh => 'Alles is hersteld. Goede dag om alles te trainen.';

  @override
  String recoveryStill(String muscles) {
    return 'Nog aan het herstellen: $muscles';
  }

  @override
  String get recoveryTired => 'Vermoeid';

  @override
  String get recoveryFresh => 'Fris';

  @override
  String get recoveryHint =>
      'Tik op een spier om te zien hoe hersteld hij is. Recente sets tellen zwaarder, en zwaardere (op RPE) nog meer.';

  @override
  String recoveryPct(int pct) {
    return '$pct% hersteld';
  }

  @override
  String readyInHours(int h) {
    return 'klaar over ~$h u';
  }

  @override
  String get tplAbcd => 'Vier dagen: borst en triceps, rug en biceps, benen, schouders en buik.';

  @override
  String get tplAbcde => 'Vijf dagen, één spiergroep per dag: borst, rug, benen, schouders, armen.';

  @override
  String get elapsedCaps => 'VERSTREKEN';

  @override
  String get tapToSkip => 'Tik om over te slaan';

  @override
  String get tapToStop => 'Tik om te stoppen';

  @override
  String get screenLocked => 'Scherm vergrendeld';

  @override
  String get lockedHint => 'Houd de vingerafdruk bovenaan ingedrukt om te ontgrendelen';

  @override
  String get liveDoneSet => 'Set klaar';

  @override
  String get liveSkipRest => 'Rust overslaan';

  @override
  String get livePause => 'Pauze';

  @override
  String get liveResume => 'Hervatten';

  @override
  String get liveNext => 'Volgende';

  @override
  String liveUpNext(String name) {
    return 'Hierna: $name';
  }

  @override
  String get stickerOpen => 'Delen op een foto';

  @override
  String get stickerNoPhoto => 'Geen foto';

  @override
  String get stickerWorkout => 'Training';

  @override
  String get stickerStreak => 'Reeks';

  @override
  String get stickerDate => 'Datum';

  @override
  String get stickerHint => 'Sleep om te verplaatsen, knijp om te schalen of te draaien';

  @override
  String get stickerSaved => 'Opgeslagen in je galerij';

  @override
  String get stickerWeek => 'Deze week';

  @override
  String get getReady => 'Maak je klaar';

  @override
  String get stickerGallery => 'Galerij';

  @override
  String get stickerCamera => 'Camera';

  @override
  String get shareIntroTitle => 'Deel deze routine';

  @override
  String get shareIntroBody =>
      'Stuur hem naar je partner, een vriend of je familie. Ze krijgen een klein bestand dat in GymMane opent en hem met één tik toevoegt, met sets en gewichten.';

  @override
  String get removedFromRoutine => 'Uit de routine gehaald';

  @override
  String get radarTitle => 'Deze maand';

  @override
  String get radarHint => 'Zie welke zones meer werk nodig hebben';

  @override
  String get radarEmpty => 'Train deze maand om je balans te zien';

  @override
  String get radarBalanced => 'Tot nu toe mooi in balans';

  @override
  String radarFocus(String list) {
    return 'Meer nodig: $list';
  }

  @override
  String get countdownReady => 'Maak je klaar';

  @override
  String get countdownSkip => 'Tik om meteen te beginnen';

  @override
  String get countdownSetting => 'Aftellen voor de start';

  @override
  String get effortSetting => 'Inspanning noteren';

  @override
  String get effortHint =>
      'RPE: 10 is er geen meer kunnen doen, 8 is er nog twee over hebben. RIR telt de herhalingen die je nog had. Heeft een set er een, dan gebruikt de geschatte 1RM de RPE-tabel.';

  @override
  String get rirTitle => 'RESERVE (RIR)';

  @override
  String get rirHint => '0 is er geen meer kunnen doen, 2 is er nog twee over hebben.';

  @override
  String get addWeekWidget => 'Weekwidget toevoegen';

  @override
  String get gamificationSetting => 'Medailles en niveaus';
}
