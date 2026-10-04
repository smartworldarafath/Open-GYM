// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get languageName => 'বাংলা';

  @override
  String vsLastMonthLabel(String pct) {
    return 'গত মাসের তুলনায় $pct%';
  }

  @override
  String levelStreakLabel(int level, String streak) {
    return 'লেভেল $level · $streak';
  }

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get cancel => 'বাতিল';

  @override
  String get cancelCaps => 'বাতিল';

  @override
  String get deleteCaps => 'মুছুন';

  @override
  String get done => 'সম্পন্ন';

  @override
  String get set => 'সেট';

  @override
  String get home => 'হোম';

  @override
  String get progress => 'উন্নতি';

  @override
  String get exercises => 'ব্যায়াম';

  @override
  String get settings => 'সেটিংস';

  @override
  String get today => 'আজ';

  @override
  String get thisWeek => 'এই সপ্তাহ';

  @override
  String get recommended => 'সুপারিশকৃত';

  @override
  String get goal => 'লক্ষ্য';

  @override
  String get volume => 'ভলিউম';

  @override
  String get setsToday => 'আজকের সেট';

  @override
  String get prs => 'রেকর্ড (PR)';

  @override
  String get todaysFocus => 'আজকের ফোকাস';

  @override
  String get todaysRoutine => 'আজকের রুটিন';

  @override
  String get startWorkout => 'ব্যায়াম শুরু করুন';

  @override
  String get routines => 'রুটিন';

  @override
  String get tools => 'টুলস';

  @override
  String get firstSessionHint => 'পেশী বেছে নিয়ে আপনার প্রথম সেশন লগ করুন';

  @override
  String exerciseCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$nটি ব্যায়াম',
      one: '$nটি ব্যায়াম',
    );
    return '$_temp0';
  }

  @override
  String get pushDay => 'পুশ ডে';

  @override
  String get pullDay => 'পুল ডে';

  @override
  String get legDay => 'লেগ ডে';

  @override
  String get pushFocus => 'বুক · কাঁধ · ট্রাইসেপ্স';

  @override
  String get pullFocus => 'পিঠ · বাইসেপ্স · ট্র্যাপস';

  @override
  String get legFocus => 'কোয়াডস · হ্যামস্ট্রিংস · গ্লুটস';

  @override
  String get train => 'ট্রেন';

  @override
  String get step1 => 'ধাপ ১ / ২';

  @override
  String get step2 => 'ধাপ ২ / ২';

  @override
  String get chooseFocus => 'ফোকাস নির্বাচন করুন';

  @override
  String get buildSession => 'সেশন সাজান';

  @override
  String get tapMuscles => 'যে পেশীগুলো ট্রেন করতে চান স্পর্শ করুন — সামনে এবং পিছনে।';

  @override
  String get noMusclesYet => 'এখনও কোনো পেশী নির্বাচিত হয়নি — শুরু করতে শরীরে স্পর্শ করুন।';

  @override
  String get continueBtn => 'চালিয়ে যান';

  @override
  String get nothingForFocus => 'এই ফোকাসে এখনও কিছু নেই';

  @override
  String get goBackPick => 'ফিরে যান এবং লাইব্রেরির ব্যায়ামযুক্ত পেশী নির্বাচন করুন।';

  @override
  String pickedHint(int n) {
    return 'আমরা আপনার জন্য একটি সেশন বেছে নিয়েছি — $nটি থেকে যেকোনোটি যোগ বা বাদ দিন।';
  }

  @override
  String get pickAnExercise => 'ব্যায়াম বেছে নিন';

  @override
  String get searchAllExercises => 'যেকোনো ব্যায়াম খুঁজুন…';

  @override
  String get noExercisesMatch => 'কোনো ব্যায়াম মেলেনি';

  @override
  String get createItInstead => 'তার পরিবর্তে নিজের মতো নতুন ব্যায়াম তৈরি করুন';

  @override
  String startCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$nটি ব্যায়াম',
      one: '$nটি ব্যায়াম',
    );
    return 'শুরু · $_temp0';
  }

  @override
  String get inProgress => 'চলমান';

  @override
  String get paused => 'স্থগিত';

  @override
  String get last => 'সর্বশেষ';

  @override
  String get rest => 'বিশ্রাম';

  @override
  String get skip => 'এড়িয়ে যান';

  @override
  String get addSet => '+ সেট যোগ করুন';

  @override
  String get finishSession => 'সেশন সমাপ্ত করুন';

  @override
  String get setDone => 'সেট সম্পন্ন';

  @override
  String get nextExercise => 'পরবর্তী ব্যায়াম';

  @override
  String get skipExercise => 'এই ব্যায়ামটি এড়িয়ে যাবেন?';

  @override
  String skipExerciseBody(String name) {
    return 'আপনি কোনো সেট সম্পন্ন করেননি, তাই \"$name\"-এর জন্য কিছুই সংরক্ষিত হবে না।';
  }

  @override
  String get dropExerciseAction => 'ব্যায়াম বাদ দিন';

  @override
  String get restOff => 'বন্ধ';

  @override
  String get setCol => '#';

  @override
  String get repsCol => 'রেপস';

  @override
  String weightCol(String unit) {
    return 'ওজন ($unit)';
  }

  @override
  String get repsTitle => 'রেপস';

  @override
  String weightTitle(String unit) {
    return 'ওজন ($unit)';
  }

  @override
  String get sessionComplete => 'ব্যায়াম সম্পন্ন';

  @override
  String get finishHeadlinePr => 'নতুন ব্যক্তিগত রেকর্ড';

  @override
  String get finishHeadlineGoal => 'সাপ্তাহিক লক্ষ্য অর্জিত';

  @override
  String get finishHeadlineStreak => 'ধারাবাহিকতা বজায় রয়েছে';

  @override
  String get finishHeadlineDefault => 'আরেকটি সেশন সফলভাবে শেষ';

  @override
  String finishBodyPr(int prs) {
    String _temp0 = intl.Intl.pluralLogic(
      prs,
      locale: localeName,
      other: '$prsটি ব্যায়ামে',
      one: 'একটি ব্যায়ামে',
    );
    return 'আপনি $_temp0 আগের চেয়ে বেশি ওজন তুলেছেন। এটি রেকর্ডে যুক্ত হলো।';
  }

  @override
  String get finishBodyGoal => 'আপনি এই সপ্তাহের নির্ধারিত সেশন লক্ষ্য পূরণ করেছেন।';

  @override
  String finishBodyStreak(int streak) {
    return 'টানা $streak দিন। সবচেয়ে গুরুত্বপূর্ণ হলো থমকে না যাওয়া।';
  }

  @override
  String get finishBodyDefault => 'লগ ও গণনা সম্পন্ন। ধারাবাহিকতাই আসল অগ্রগতি।';

  @override
  String get vsLastTime => 'গতবারের তুলনায়';

  @override
  String get firstTime => 'প্রথমবার লগ করা হয়েছে';

  @override
  String prCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$nটি নতুন রেকর্ড',
      one: '$nটি নতুন রেকর্ড',
    );
    return '$_temp0';
  }

  @override
  String get saveAndExit => 'সংরক্ষণ করে প্রস্থান করুন';

  @override
  String get duration => 'সময়কাল';

  @override
  String get setsCaps => 'সেট';

  @override
  String exerciseXofY(int i, int n) {
    return 'ব্যায়াম $i / $n';
  }

  @override
  String get decrease => 'কমান';

  @override
  String get increase => 'বাড়ান';

  @override
  String markSet(int n) {
    return 'সেট $n সম্পন্ন চিহ্নিত করুন';
  }

  @override
  String get pauseWorkout => 'ব্যায়াম স্থগিত করুন';

  @override
  String get resumeWorkout => 'ব্যায়াম পুনরায় শুরু করুন';

  @override
  String get discardTitle => 'ব্যায়াম বাতিল করবেন?';

  @override
  String get discardBody => 'এই সেশনের সমস্ত সেট মুছে যাবে।';

  @override
  String get keepTraining => 'ট্রেনিং চালিয়ে যান';

  @override
  String get discard => 'বাতিল করুন';

  @override
  String get notifRestChannel => 'বিশ্রামের টাইমার';

  @override
  String get notifRestChannelWhy => 'সেটের মাঝে বিশ্রাম শেষ হলে আপনাকে জানায়';

  @override
  String get notifAlertChannel => 'বিশ্রামের টাইমার (অ্যালার্ট)';

  @override
  String get notifAlertChannelWhy => 'বিশ্রাম শেষ হওয়ার সাথে সাথে ব্যানার প্রদর্শন করে';

  @override
  String get restOverTitle => 'বিশ্রাম শেষ';

  @override
  String get restOverBody => 'কাজে ফিরে আসুন — পরবর্তী সেট অপেক্ষা করছে।';

  @override
  String get totalVolume30d => 'মোট ভলিউম · ৩০ দিন';

  @override
  String get volumeCumulative => 'আপনার উত্তোলন করা প্রতি কেজির মোট যোগফল';

  @override
  String get volumeChartEmpty => 'একটি সেশন লগ করুন এবং চার্ট এখানে শুরু হবে';

  @override
  String get weekRhythm => 'সাপ্তাহিক ছন্দ';

  @override
  String get weekRhythmHint => 'সপ্তাহের কোন দিনগুলোতে আপনি উপস্থিত থাকেন।';

  @override
  String weekRhythmBest(String day) {
    return '$day আপনার সেরা দিন';
  }

  @override
  String get weekRhythmEmpty => 'সেশন লগ করুন এবং আপনার সপ্তাহের রুটিন এখানে রূপ নেবে।';

  @override
  String get allTime => 'সর্বমোট';

  @override
  String get allTimeSessions => 'সেশন';

  @override
  String get allTimeTime => 'সময়';

  @override
  String get allTimeVolume => 'উত্তোলিত';

  @override
  String get allTimeSets => 'সেট';

  @override
  String allTimeAvg(String time) {
    return 'গড়ে প্রতি সেশনে $time';
  }

  @override
  String hoursShort(int n) {
    return '$nঘণ্টা';
  }

  @override
  String get consistency => 'ধারাবাহিকতা';

  @override
  String sessionsLogged(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$nটি সেশন লগ হয়েছে',
      one: '$nটি সেশন লগ হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String streakDays(int n) {
    return '$n দিনের ধারাবাহিকতা';
  }

  @override
  String get bodyweight => 'শরীরের ওজন';

  @override
  String get notLoggedYet => 'এখনও লগ করা হয়নি';

  @override
  String get logShort => '+ লগ';

  @override
  String get logBodyweight => 'শরীরের ওজন লগ করুন';

  @override
  String get trackWeight => 'সময়ের সাথে আপনার ওজনের পরিবর্তন ট্র্যাক করুন';

  @override
  String get muscleMap => 'পেশীর মানচিত্র';

  @override
  String get days7 => '৭ দিন';

  @override
  String get days30 => '৩০ দিন';

  @override
  String get heatLow => 'অব্যবহৃত';

  @override
  String get heatHigh => 'সর্বোচ্চ ভলিউম';

  @override
  String get muscleMapEmpty => 'একটি সেশন লগ করুন এবং শরীর এখানে সক্রিয় হয়ে উঠবে।';

  @override
  String get muscleMapHint => 'পেশীতে ট্যাপ করে বিস্তারিত দেখুন।';

  @override
  String muscleMapBehind(String names) {
    return 'পিছিয়ে রয়েছে: $names';
  }

  @override
  String ofTarget(int pct) {
    return 'লক্ষ্যের $pct%';
  }

  @override
  String get muscleSplit => 'পেশীর বিভাজন';

  @override
  String get splitEmpty => 'পেশীভিত্তিক ভলিউম ভাগ দেখতে ব্যায়াম করুন।';

  @override
  String get personalRecords => 'ব্যক্তিগত রেকর্ড';

  @override
  String get prEmpty => 'সেট লগ করার সাথে সাথে আপনার রেকর্ড এখানে প্রদর্শিত হবে।';

  @override
  String get strength1rm => 'শক্তি · আনুমানিক 1RM';

  @override
  String get strengthEmpty => 'যেকোনো ব্যায়াম দুইবার লগ করলে তার শক্তির গ্রাফ এখানে দেখা যাবে।';

  @override
  String oneRmEst(String w) {
    return 'আনুমানিক 1RM $w';
  }

  @override
  String get restDayShort => 'বিশ্রামের দিন';

  @override
  String get restDay => 'বিশ্রামের দিন — কিছুই লগ করা হয়নি।';

  @override
  String get delete => 'মুছুন';

  @override
  String get deleteEntry => 'এই এন্ট্রি মুছে ফেলবেন?';

  @override
  String deleteEntryBody(String name) {
    return '\"$name\" আজকের দিন, রেকর্ড এবং চার্ট থেকে মুছে ফেলা হবে।';
  }

  @override
  String get bodyweightHistory => 'ইতিহাস';

  @override
  String get noBodyweightYet => 'এখনও কিছু লগ করা হয়নি।';

  @override
  String get exercisesCaps => 'ব্যায়াম';

  @override
  String get timeCaps => 'সময়';

  @override
  String libraryCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'লাইব্রেরিতে $nটি ব্যায়াম',
      one: 'লাইব্রেরিতে $nটি ব্যায়াম',
    );
    return '$_temp0';
  }

  @override
  String get searchExercises => 'ব্যায়াম খুঁজুন';

  @override
  String get muscleFilter => 'পেশী';

  @override
  String get levelFilter => 'লেভেল';

  @override
  String get newExercise => 'নতুন ব্যায়াম';

  @override
  String get exerciseName => 'ব্যায়ামের নাম';

  @override
  String get equipmentLabel => 'সরঞ্জাম';

  @override
  String get addExercise => 'ব্যায়াম যোগ করুন';

  @override
  String get advanced => 'উন্নত';

  @override
  String get demoMedia => 'ডেমো';

  @override
  String get addMedia => 'মিডিয়া যোগ করুন';

  @override
  String get mediaHint => 'ছবি, জিআইএফ বা ভিডিও';

  @override
  String get changeMedia => 'পরিবর্তন';

  @override
  String get videoSelected => 'ভিডিও নির্বাচিত';

  @override
  String get favouritesOnly => 'প্রিয়গুলো';

  @override
  String get noFavouritesYet => 'এখনও কোনো প্রিয় ব্যায়াম নেই';

  @override
  String get noFavouritesHint => 'ব্যায়ামে তারা চিহ্নে ট্যাপ করে এখানে যুক্ত করুন।';

  @override
  String get clearFilters => 'ফিল্টার মুছুন';

  @override
  String get noExercisesFound => 'কোনো ব্যায়াম পাওয়া যায়নি';

  @override
  String get noExercisesHint => 'ভিন্ন অনুসন্ধান করুন বা ফিল্টার সাফ করুন।';

  @override
  String get personalRecord => 'ব্যক্তিগত রেকর্ড';

  @override
  String get history => 'ইতিহাস';

  @override
  String get noHistory => 'এখনও কোনো সেশন নেই। ইতিহাস গড়তে এই ব্যায়ামটি করুন।';

  @override
  String get notes => 'নোট';

  @override
  String get notePlaceholder => 'পয়েন্ট, সেটআপ, কেমন অনুভব হয়েছে…';

  @override
  String showAllNotes(int n) {
    return 'সব $nটি নোট দেখুন';
  }

  @override
  String notHere(String gear, String place) {
    return '$place-এ কোনো $gear নেই';
  }

  @override
  String get notHereWhy => 'আজ যা ব্যবহার করতে পারবেন তা দিয়ে বদলে নিন।';

  @override
  String get altHere => 'এখানে যা করতে পারেন';

  @override
  String get places => 'আমার স্থানসমূহ';

  @override
  String get placesShort => 'স্থানসমূহ';

  @override
  String get placesHint => 'প্রতিটি স্থানে কী সরঞ্জাম আছে জানান, লাইব্রেরিতে শুধু সেগুলোই দেখাবে।';

  @override
  String get placeAll => 'যেকোনো স্থান';

  @override
  String get placeNew => 'নতুন স্থান';

  @override
  String get placeNameLabel => 'নাম';

  @override
  String get placeNamePlaceholder => 'বাড়ি, জিম, পার্ক…';

  @override
  String get placeGearLabel => 'এখানে কী আছে';

  @override
  String placeGearCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n ধরণের সরঞ্জাম',
      one: '১ ধরণের সরঞ্জাম',
      zero: 'কিছুই চিহ্নিত নেই',
    );
    return '$_temp0';
  }

  @override
  String placeExercises(int n) {
    return 'এখানে $nটি ব্যায়াম রয়েছে';
  }

  @override
  String get placeEmptyTitle => 'যেখানেই থাকুন অনুশীলন করুন';

  @override
  String get placeEmptyBody => 'স্থান হলো সরঞ্জামের তালিকা। শুরু করতে একটি নির্বাচন করুন।';

  @override
  String get placeDeleteTitle => 'স্থান মুছুন';

  @override
  String get placeDeleteBody => 'কেবল স্থানটি মুছে যাবে — আপনার ব্যায়াম এবং সেশন অক্ষত থাকবে।';

  @override
  String get placeGym => 'জিম';

  @override
  String get placeHome => 'বাড়ি';

  @override
  String get placeOutdoors => 'খোলা মাঠ';

  @override
  String get placeFilterLabel => 'স্থান';

  @override
  String get noGearOnly => 'সরঞ্জাম ছাড়া';

  @override
  String placeActive(String name) {
    return '$name-এ ট্রেনিং';
  }

  @override
  String get journal => 'জার্নাল';

  @override
  String noteCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$nটি নোট',
      one: '১টি নোট',
      zero: 'কোনো নোট নেই',
    );
    return '$_temp0';
  }

  @override
  String get noteKindNote => 'নোট';

  @override
  String get noteKindPlan => 'পরিকল্পনা';

  @override
  String get noteKindDone => 'সাফল্য';

  @override
  String get noteKindPain => 'ব্যথা';

  @override
  String get noteFilterAll => 'সকল';

  @override
  String get newNote => 'নতুন নোট';

  @override
  String get editNote => 'নোট সম্পাদনা';

  @override
  String get addNote => 'নোট যোগ করুন';

  @override
  String get noteEmptyTitle => 'আপনার চিন্তাভাবনা লিখুন';

  @override
  String get noteEmptyBody => 'আপনার ট্রেনিংয়ের নোট, অনুভূতি ও পরিকল্পনা এখানে সংরক্ষণ করুন।';

  @override
  String get noteNoneForExercise => 'এই ব্যায়ামের জন্য কোনো নোট নেই';

  @override
  String get noteKindLabel => 'ধরন';

  @override
  String get noteTextLabel => 'নোট';

  @override
  String get noteDateLabel => 'তারিখ';

  @override
  String get noteExerciseLabel => 'ব্যায়াম (ঐচ্ছিক)';

  @override
  String get noteMediaLabel => 'ছবি বা ভিডিও';

  @override
  String get noteGeneral => 'সাধারণ নোট';

  @override
  String get noteAttach => 'সংযুক্ত করুন';

  @override
  String get noteRemoveMedia => 'মিডিয়া সরান';

  @override
  String get deleteNoteTitle => 'নোট মুছবেন?';

  @override
  String get deleteNoteBody => 'এই নোটটি চিরতরে মুছে ফেলা হবে।';

  @override
  String get noteToday => 'আজ';

  @override
  String get noteYesterday => 'গতকাল';

  @override
  String get noteAllNotes => 'সকল নোট';

  @override
  String get noteCalendar => 'ক্যালেন্ডার';

  @override
  String get noteNoneOnDay => 'এই দিনে কোনো নোট নেই';

  @override
  String get noteAddOnDay => 'এই দিনে নোট যোগ করুন';

  @override
  String get notePrevMonth => 'পূর্ববর্তী মাস';

  @override
  String get noteNextMonth => 'পরবর্তী মাস';

  @override
  String noteMonthCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$nটি নোট', one: '$nটি নোট');
    return '$_temp0';
  }

  @override
  String get measures => 'পরিমাপ';

  @override
  String get measuresHint => 'শরীরের বিভিন্ন অংশের পরিমাপ ট্র্যাক করুন';

  @override
  String measureCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$nটি পরিমাপ', one: '$nটি পরিমাপ');
    return '$_temp0';
  }

  @override
  String get measureNoneYet => 'এখনও কোনো পরিমাপ নেই';

  @override
  String get measureHistory => 'পরিমাপের ইতিহাস';

  @override
  String get measureNeck => 'ঘাড়';

  @override
  String get measureShoulders => 'কাঁধ';

  @override
  String get measureChest => 'বুক';

  @override
  String get measureArm => 'বাহু';

  @override
  String get measureForearm => 'অগ্রবাহু';

  @override
  String get measureWaist => 'কোমর';

  @override
  String get measureHips => 'নিতম্ব';

  @override
  String get measureThigh => 'উরুর মাপ';

  @override
  String get measureCalf => 'কাফ';

  @override
  String get measureBodyfat => 'শরীরের চর্বি';

  @override
  String get timeline => 'টাইমলাইন';

  @override
  String get timelineHint => 'শরীরের রূপান্তরের ছবি';

  @override
  String get timelineEmptyTitle => 'আপনার রূপান্তর পর্যবেক্ষণ করুন';

  @override
  String photoCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$nটি ছবি', one: '$nটি ছবি');
    return '$_temp0';
  }

  @override
  String get poseFront => 'সামনে';

  @override
  String get poseSide => 'পাশ থেকে';

  @override
  String get poseBack => 'পিছনে';

  @override
  String get photoEvery => 'ছবি তোলার ব্যবধান';

  @override
  String photoEveryDays(int n) {
    return 'প্রতি $n দিন অন্তর';
  }

  @override
  String get photoEveryOff => 'বন্ধ';

  @override
  String get timelineEvery => 'প্রতিটি দলভুক্ত করুন';

  @override
  String get custom => 'কাস্টম';

  @override
  String photoNextIn(int n) {
    return 'পরবর্তী ছবি $n দিন পর';
  }

  @override
  String get photoDueNow => 'আজ ছবি তোলার সময় হয়েছে';

  @override
  String get addTodayPhotos => 'আজকের ছবি যোগ করুন';

  @override
  String posePhoto(String pose) {
    return '$pose পোজের ছবি';
  }

  @override
  String get compare => 'তুলনা করুন';

  @override
  String get compareNeedTwo => 'তুলনা করার জন্য অন্তত ২টি ছবি প্রয়োজন';

  @override
  String dayNumber(int n) {
    return '$nতম দিন';
  }

  @override
  String daysApart(int n) {
    return '$n দিনের ব্যবধান';
  }

  @override
  String get deleteEntryTitle => 'এন্ট্রি মুছবেন?';

  @override
  String get deleteDayBody => 'এই দিনের সমস্ত ছবি মুছে যাবে।';

  @override
  String get timelinePhotos => 'ছবি';

  @override
  String get timelineBody => 'শারীরিক রূপান্তর';

  @override
  String get timelineBodyEmpty => 'ছবি যোগ করে রূপান্তরের গতিধারা দেখুন।';

  @override
  String get timelineBodyHint => 'নিয়মিত ছবি তুললে অগ্রগতি সহজে বোঝা যায়।';

  @override
  String timelineWindow(String from, String to) {
    return '$from – $to';
  }

  @override
  String sessionCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$nটি সেশন', one: '$nটি সেশন');
    return '$_temp0';
  }

  @override
  String get notifPhotoChannel => 'অগ্রগতির ছবি অনুস্মারক';

  @override
  String get notifPhotoChannelWhy => 'নতুন অগ্রগতি ছবি তোলার সময় হলে মনে করিয়ে দেয়';

  @override
  String get notifPhotoTitle => 'অগ্রগতির ছবি তোলার সময়';

  @override
  String notifPhotoBody(int n) {
    return 'পূর্বের ছবির পর $n দিন পেরিয়ে গেছে। একই ভঙ্গিমা, একই আলো বজায় রাখুন।';
  }

  @override
  String get share => 'শেয়ার';

  @override
  String get sharePick => 'শেয়ার করার অংশ বেছে নিন';

  @override
  String get shareSession => 'সেশন শেয়ার করুন';

  @override
  String get shareStreak => 'ধারাবাহিকতা শেয়ার করুন';

  @override
  String get shareBody => 'অগ্রগতি শেয়ার করুন';

  @override
  String get shareCompare => 'তুলনামূলক ছবি শেয়ার করুন';

  @override
  String get shareHint => 'কার্ড হিসেবে শেয়ার করুন';

  @override
  String get shareFailed => 'শেয়ার করা সম্ভব হয়নি';

  @override
  String get shareWeekOf => 'গত ৭ দিন';

  @override
  String get shareStreakLabel => 'টানা দিন';

  @override
  String get shareSessionsLabel => 'সেশন';

  @override
  String get shareVolumeLabel => 'মোট উত্তোলিত';

  @override
  String get shareSetsLabel => 'সেট';

  @override
  String get shareNothing => 'শেয়ার করার মতো তথ্য নেই';

  @override
  String get restForExercise => 'এই ব্যায়ামের বিশ্রাম';

  @override
  String get restUsingDefault => 'ডিফল্ট বিশ্রাম ব্যবহার করা হচ্ছে';

  @override
  String get restCustom => 'কাস্টম বিশ্রাম';

  @override
  String get setType => 'সেটের ধরন';

  @override
  String get setTypeNormal => 'সাধারণ সেট';

  @override
  String get setTypeWarmup => 'ওয়ার্মআপ সেট';

  @override
  String get setTypeDrop => 'ড্রপ সেট';

  @override
  String get setTypeFailure => 'ব্যর্থতা পর্যন্ত (Failure)';

  @override
  String get setTypeHint => 'সেটের তীব্রতা এবং উদ্দেশ্য চিহ্নিত করুন';

  @override
  String get addWarmup => '+ ওয়ার্মআপ যোগ করুন';

  @override
  String platesPerSide(String plates) {
    return 'প্রতি পাশে: $plates';
  }

  @override
  String get howTo => 'কীভাবে করবেন';

  @override
  String get similar => 'অনুরূপ ব্যায়াম';

  @override
  String get primaryLabel => 'প্রধান';

  @override
  String get secondaryLabel => 'সহায়ক';

  @override
  String get none => 'কিছুই নয়';

  @override
  String setCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$nটি সেট', one: '$nটি সেট');
    return '$_temp0';
  }

  @override
  String volumeSuffix(String v) {
    return '$v ভলিউম';
  }

  @override
  String get weeklyPlan => 'সাপ্তাহিক পরিকল্পনা';

  @override
  String get yourRoutines => 'আপনার রুটিনসমূহ';

  @override
  String get noRoutines => 'এখনও কোনো রুটিন নেই';

  @override
  String get newRoutine => 'নতুন রুটিন';

  @override
  String get routineName => 'রুটিনের নাম';

  @override
  String get schedule => 'সময়সূচী';

  @override
  String get addFromList => 'তালিকা থেকে যোগ করুন';

  @override
  String get addExercises => 'ব্যায়াম যোগ করুন';

  @override
  String get deleteRoutine => 'রুটিন মুছুন';

  @override
  String exercisesWithCount(int n) {
    return '$nটি ব্যায়াম';
  }

  @override
  String setDay(String day) {
    return '$day নির্ধারণ করুন';
  }

  @override
  String get newRoutineName => 'নতুন রুটিন';

  @override
  String get dragToReorder => 'ক্রম পরিবর্তন করতে টানুন';

  @override
  String reorderHandle(String name) {
    return '$name এর ক্রম পরিবর্তন করুন';
  }

  @override
  String get removeFromRoutine => 'রুটিন থেকে সরান';

  @override
  String get dropExercise => 'ব্যায়াম বাদ দেবেন?';

  @override
  String dropExerciseBody(String name) {
    return '\"$name\" এই ওয়ার্কআউট থেকে বাদ পড়বে। পূর্বে সেভ করা কিছু হারাবে না।';
  }

  @override
  String get drop => 'বাদ দিন';

  @override
  String get addToWorkout => 'ওয়ার্কআউটে যোগ করুন';

  @override
  String get resetData => 'সব ডেটা রিসেট করুন';

  @override
  String get resetTitle => 'সমস্ত ডেটা রিসেট করবেন?';

  @override
  String get resetBody =>
      'আপনার সমস্ত সেশন, রুটিন এবং অগ্রগতি মুছে যাবে। এই পদক্ষেপটি ফিরিয়ে নেওয়া যাবে না।';

  @override
  String get resetConfirm => 'সব মুছে ফেলুন';

  @override
  String get resetDone => 'ডেটা সফলভাবে রিসেট হয়েছে';

  @override
  String get support => 'সহায়তা';

  @override
  String get reportBug => 'সমস্যার কথা জানান';

  @override
  String get requestFeature => 'নতুন ফিচারের অনুরোধ করুন';

  @override
  String get starOnGithub => 'গিটহাবে স্টার দিন';

  @override
  String get buyCoffee => 'একটি কফি খাওয়ান';

  @override
  String get cantOpenLink => 'লিঙ্কটি খোলা যায়নি';

  @override
  String get preferences => 'পছন্দসমূহ';

  @override
  String get theme => 'থিম';

  @override
  String get darkTheme => 'ডার্ক';

  @override
  String get lightTheme => 'লাইট';

  @override
  String get languageLabel => 'ভাষা';

  @override
  String get unitsLabel => 'একক';

  @override
  String get restTimer => 'বিশ্রামের টাইমার';

  @override
  String get alarmBlockedTitle => 'অ্যালার্ম বন্ধ রয়েছে';

  @override
  String get alarmBlockedBody => 'বিশ্রামের অ্যালার্ম বাজানোর জন্য নোটিফিকেশনের অনুমতি প্রয়োজন।';

  @override
  String get alarmBlockedAction => 'সেটিংসে যান';

  @override
  String get alarmSound => 'অ্যালার্মের শব্দ';

  @override
  String get alarmDefaultName => 'ডিফল্ট বিপ';

  @override
  String get alarmSoundHint => 'সেট শেষের শব্দ নির্ধারণ করুন';

  @override
  String get alarmChoose => 'কাস্টম অডিও বেছে নিন';

  @override
  String get alarmPreview => 'শব্দ শুনুন';

  @override
  String get alarmReset => 'ডিফল্টে ফেরত যান';

  @override
  String get alarmTooLong => 'অডিওটি খুব বড়';

  @override
  String get alarmInvalid => 'অকার্যকর অডিও ফাইল';

  @override
  String alarmChanged(String name) {
    return 'অ্যালার্ম সাউন্ড \"$name\"-এ সেট করা হয়েছে';
  }

  @override
  String get alarmChangedDefault => 'ডিফল্ট শব্দে ফেরত এসেছে';

  @override
  String get homeWidgets => 'হোম উইজেট';

  @override
  String get addActivityWidget => 'অ্যাক্টিভিটি উইজেট যোগ করুন';

  @override
  String get addStatsWidget => 'পরিসংখ্যান উইজেট যোগ করুন';

  @override
  String get pinUnsupported => 'ডিভাইসে উইজেট পিন সমর্থিত নয়';

  @override
  String get background => 'পটভূমি';

  @override
  String get bgNone => 'সাদামাটা';

  @override
  String get bgDots => 'ডট প্যাটার্ন';

  @override
  String get bgGrid => 'গ্রিড প্যাটার্ন';

  @override
  String get data => 'ডেটা';

  @override
  String get exportCsv => 'CSV এক্সপোর্ট করুন';

  @override
  String get exportBackup => 'ব্যাকআপ এক্সপোর্ট করুন';

  @override
  String get importBackup => 'ব্যাকআপ ইম্পোর্ট করুন';

  @override
  String get importHint => 'জিপ বা জেসন ব্যাকআপ ফাইল নির্বাচন করুন';

  @override
  String get import => 'ইম্পোর্ট';

  @override
  String get chooseFile => 'ফাইল নির্বাচন করুন';

  @override
  String get importFromApp => 'অন্য অ্যাপ থেকে ইম্পোর্ট';

  @override
  String get importUnknownFormat => 'অজানা ফাইল ফরম্যাট';

  @override
  String get importZipNoWeights => 'জিপ ফাইলে কোনো ওজন ডেটা নেই';

  @override
  String importWeights(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$nটি ওজন পরিমাপ ইম্পোর্ট করা হয়েছে',
      one: '$nটি ওজন পরিমাপ ইম্পোর্ট করা হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String get importReadFailed => 'ফাইল পড়া সম্ভব হয়নি';

  @override
  String get importUnitTitle => 'ওজনের একক নির্বাচন করুন';

  @override
  String get importUnitBody => 'ইম্পোর্ট করা ডেটা কোন এককে সংরক্ষিত?';

  @override
  String get importNothing => 'ইম্পোর্ট করার মতো ডেটা পাওয়া যায়নি';

  @override
  String importDone(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$nটি সেশন ইম্পোর্ট করা হয়েছে',
      one: '$nটি সেশন ইম্পোর্ট করা হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String get aboutGymmane => 'Open GYM সম্পর্কে';

  @override
  String get yourProfile => 'আপনার প্রোফাইল';

  @override
  String get autofills => 'ক্যালকুলেটরে স্বয়ংক্রিয় পূরণ';

  @override
  String get nameLabel => 'নাম';

  @override
  String get sexLabel => 'লিঙ্গ';

  @override
  String get macroProtein => 'প্রোটিন';

  @override
  String get macroCarbs => 'কার্বস';

  @override
  String get macroFat => 'ফ্যাট';

  @override
  String get male => 'পুরুষ';

  @override
  String get female => 'মহিলা';

  @override
  String get ageLabel => 'বয়স';

  @override
  String get heightLabel => 'উচ্চতা';

  @override
  String get weightLabel => 'ওজন';

  @override
  String get weeklyGoal => 'সাপ্তাহিক লক্ষ্য';

  @override
  String get activityLabel => 'দৈনিক কার্যক্ষমতা';

  @override
  String get addPhoto => 'ছবি যোগ করুন';

  @override
  String get removePhoto => 'ছবি সরান';

  @override
  String get takePhoto => 'ছবি তুলুন';

  @override
  String get chooseGallery => 'গ্যালারি থেকে বেছে নিন';

  @override
  String get backupCopied => 'ব্যাকআপ ক্লিপবোর্ডে কপি করা হয়েছে';

  @override
  String get backupImported => 'ব্যাকআপ সফলভাবে পুনরুদ্ধার করা হয়েছে';

  @override
  String get backupFailed => 'ব্যাকআপ ব্যর্থ হয়েছে';

  @override
  String get nothingToExport => 'এক্সপোর্ট করার জন্য কোনো ডেটা নেই';

  @override
  String get athlete => 'অ্যাথলিট';

  @override
  String calculatorsCount(int n) {
    return '$nটি ক্যালকুলেটর';
  }

  @override
  String get result => 'ফলাফল';

  @override
  String get weightLifted => 'উত্তোলিত ওজন';

  @override
  String get repsPerformed => 'সম্পন্ন রেপস';

  @override
  String get neck => 'ঘাড়';

  @override
  String get waist => 'কোমর';

  @override
  String get hip => 'নিতম্ব';

  @override
  String get targetWeight => 'কাঙ্ক্ষিত ওজন';

  @override
  String get workingWeight => 'ওয়ার্কিং ওজন';

  @override
  String get activityLevel => 'শারীরিক সক্রিয়তা';

  @override
  String get barWeight => 'রড/বারের ওজন';

  @override
  String get perSide => 'প্রতি পাশে';

  @override
  String get justTheBar => 'শুধুমাত্র বার';

  @override
  String perSideCount(int n) {
    return 'প্রতি পাশে $n';
  }

  @override
  String rampSet(String pct, int reps) {
    return '$pct · $reps রেপ';
  }

  @override
  String get toolNameRm => 'ওয়ান-রেপ ম্যাক্স';

  @override
  String get toolNameBmi => 'বিএমআই ক্যালকুলেটর';

  @override
  String get toolNameCal => 'ক্যালোরি ক্যালকুলেটর';

  @override
  String get toolNameBf => 'বডি ফ্যাট ক্যালকুলেটর';

  @override
  String get toolNamePlate => 'প্লেট ক্যালকুলেটর';

  @override
  String get toolNameWarmup => 'ওয়ার্মআপ ক্যালকুলেটর';

  @override
  String get toolTitleRm => 'ওয়ান-রেপ ম্যাক্স';

  @override
  String get toolTitleBmi => 'বডি ম্যাস ইনডেক্স';

  @override
  String get toolTitleCal => 'দৈনিক ক্যালোরি প্রয়োজন';

  @override
  String get toolTitleBf => 'শরীরের চর্বির শতকরা হার';

  @override
  String get toolTitlePlate => 'প্লেটের হিসাব';

  @override
  String get toolTitleWarmup => 'ওয়ার্মআপ রুটিন';

  @override
  String get toolHintRm => 'যেকোনো ওজনের রেপস থেকে সর্বাধিক উত্তোলন হিসাব করুন';

  @override
  String get toolHintCal => 'বজায় রাখা, কমানো বা বাড়ানোর ক্যালোরি হিসাব';

  @override
  String get toolHintBf => 'ইউএস নেভি পদ্ধতিতে শারীরিক চর্বির পরিমাপ';

  @override
  String get toolHintPlate => 'বারে কোন প্লেটগুলো সাজাতে হবে তা দেখুন';

  @override
  String get toolHintWarmup => 'ভারী সেটের আগে নিরাপদ ওয়ার্মআপ সেট প্রস্তুত করুন';

  @override
  String get toolDescRm => 'আপনার সর্বাধিক সক্ষমতা আনুমান করুন।';

  @override
  String get toolDescBmi => 'উচ্চতা এবং ওজনের সুষম অনুপাত জানুন।';

  @override
  String get toolDescCal => 'আপনার লক্ষ্যের জন্য উপযুক্ত খাদ্য পরিমাপ করুন।';

  @override
  String get toolDescBf => 'শরীরের চর্বির আনুমানিক শতাংশ জানুন।';

  @override
  String get toolDescPlate => 'বারে প্লেট সাজানোর সঠিক নির্দেশিকা।';

  @override
  String get toolDescWarmup => 'আঘাত এড়িয়ে সর্বোচ্চ কার্যক্ষমতার জন্য প্রস্তুতি নিন।';

  @override
  String get bmiUnderweight => 'কম ওজন';

  @override
  String get bmiNormal => 'স্বাভাবিক ওজন';

  @override
  String get bmiOverweight => 'অতিরিক্ত ওজন';

  @override
  String get bmiObese => 'স্থূলতা';

  @override
  String get actSedentary => 'অলস / বসে কাজ';

  @override
  String get actLight => 'হালকা সক্রিয় (১-৩ দিন/সপ্তাহ)';

  @override
  String get actActive => 'অত্যন্ত সক্রিয় (৬-৭ দিন/সপ্তাহ)';

  @override
  String get actModerate => 'মাঝারি সক্রিয় (৩-৫ দিন/সপ্তাহ)';

  @override
  String get muscleChest => 'বুক';

  @override
  String get muscleBack => 'পিঠ';

  @override
  String get muscleShoulders => 'কাঁধ';

  @override
  String get muscleBiceps => 'বাইসেপ্স';

  @override
  String get muscleTriceps => 'ট্রাইসেপ্স';

  @override
  String get muscleForearm => 'অগ্রবাহু';

  @override
  String get muscleTrapezius => 'ট্র্যাপেজিয়াস';

  @override
  String get muscleAbdomen => 'অ্যাবস / পেট';

  @override
  String get muscleObliques => 'অবলিক্স';

  @override
  String get muscleQuads => 'কোয়াড্রিসেপ্স';

  @override
  String get muscleHamstrings => 'হ্যামস্ট্রিংস';

  @override
  String get muscleGlutes => 'গ্লুটস';

  @override
  String get muscleCalves => 'কাফ';

  @override
  String get mgChest => 'বুক';

  @override
  String get mgBack => 'পিঠ';

  @override
  String get mgLegs => 'পা';

  @override
  String get mgShoulders => 'কাঁধ';

  @override
  String get mgArms => 'হাত';

  @override
  String get mgCore => 'কোর';

  @override
  String get equipBarbell => 'বারবেল';

  @override
  String get equipDumbbell => 'ডাম্বেল';

  @override
  String get equipCable => 'কেবল';

  @override
  String get equipMachine => 'মেশিন';

  @override
  String get equipBodyweight => 'শরীরের ওজন';

  @override
  String get equipWeighted => 'অতিরিক্ত ওজনযুক্ত';

  @override
  String get equipBand => 'রেজিস্ট্যান্স ব্যান্ড';

  @override
  String get equipKettlebell => 'কেটলবেল';

  @override
  String get equipRings => 'জিমন্যাস্টিক রিংস';

  @override
  String get equipOther => 'অন্যান্য';

  @override
  String get diffBeginner => 'শিক্ষানবিস';

  @override
  String get diffAdvanced => 'উন্নত';

  @override
  String get diffIntermediate => 'মাঝারি';

  @override
  String get about => 'সম্পর্কে';

  @override
  String version(String v) {
    return 'সংস্করণ $v';
  }

  @override
  String get aboutBlurb => 'বিজ্ঞাপনহীন, সম্পূর্ণ অফলাইন ওপেন সোর্স জিম লগ।';

  @override
  String get freeForever => 'চিরকাল বিনামূল্যে';

  @override
  String get freeForeverWhy => 'কোনো পেওয়াল নেই, কোনো সাবস্ক্রিপশন নেই।';

  @override
  String get fullyOffline => 'সম্পূর্ণ অফলাইন';

  @override
  String get fullyOfflineWhy => 'আপনার ডেটা আপনার ডিভাইসেই সুরক্ষিত থাকে।';

  @override
  String get yoursToTake => 'আপনার ডেটা আপনার নিয়ন্ত্রণেই';

  @override
  String get yoursToTakeWhy => 'যেকোনো সময় ব্যাকআপ নিন বা এক্সপোর্ট করুন।';

  @override
  String get whatsInside => 'অ্যাপের বৈশিষ্ট্যসমূহ';

  @override
  String exercisesInside(int n) {
    return '$nটি ব্যায়াম';
  }

  @override
  String get exercisesInsideWhy => 'সঠিক ফর্ম এবং পদক্ষেপসহ শত শত ব্যায়াম।';

  @override
  String get calculatorsInside => 'প্রয়োজনীয় ক্যালকুলেটর';

  @override
  String get calculatorsInsideWhy => '1RM, BMI, ক্যালোরি এবং প্লেট ক্যালকুলেটর।';

  @override
  String get mathInside => 'স্মার্ট বিশ্লেষণ';

  @override
  String get mathInsideWhy => 'ভলিউম, ছন্দ এবং রেকর্ডের নিখুঁত হিসাব।';

  @override
  String get yourNumbers => 'আপনার পরিসংখ্যান';

  @override
  String get sessionsCaps => 'সেশন';

  @override
  String get liftedCaps => 'উত্তোলিত';

  @override
  String get streakCaps => 'ধারাবাহিকতা';

  @override
  String daysUnit(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'দিন', one: 'দিন');
    return '$_temp0';
  }

  @override
  String get restDefaultLabel => 'ডিফল্ট বিশ্রাম';

  @override
  String restDefault(int s) {
    return 'ডিফল্ট $s সেকেন্ড — সেটিংসে পরিবর্তন করুন';
  }

  @override
  String get reset => 'রিসেট';

  @override
  String get welcomeKicker => 'স্বাগতম';

  @override
  String get welcomeBlurb => 'চলুন আপনার ট্রেনিং প্রোফাইল সেট আপ করি।';

  @override
  String get welcomeStart => 'শুরু করুন';

  @override
  String onbStep(int i, int n) {
    return 'ধাপ $i / $n';
  }

  @override
  String get onbNameTitle => 'আপনার নাম কী?';

  @override
  String get onbNameHint => 'আপনার নাম লিখুন';

  @override
  String get onbNameWhy => 'অ্যাপটি ব্যক্তিগতকৃত করতে এটি ব্যবহৃত হয়।';

  @override
  String get onbBodyTitle => 'শারীরিক গঠন';

  @override
  String get onbBodyWhy => 'ক্যালকুলেটর এবং অনুপাত নিখুঁত করতে ব্যবহৃত হয়।';

  @override
  String get onbGoalTitle => 'সাপ্তাহিক লক্ষ্য';

  @override
  String get onbGoalWhy => 'সপ্তাহে কত দিন জিম করতে চান?';

  @override
  String perWeek(int n) {
    return 'সপ্তাহে $n দিন';
  }

  @override
  String get onbUnitsTitle => 'ওজনের একক';

  @override
  String get next => 'পরবর্তী';

  @override
  String get back => 'পিছনে';

  @override
  String get skip2 => 'এড়িয়ে যান';

  @override
  String get madeWithLoveBy => 'MADE BY Arafath';

  @override
  String get sourceCode => 'সোর্স কোড';

  @override
  String get suggested => 'প্রস্তাবিত';

  @override
  String get results => 'ফলাফল';

  @override
  String get noMatches => 'কোনো মিল পাওয়া যায়নি';

  @override
  String get tapToEdit => 'সম্পাদনা করতে স্পর্শ করুন';

  @override
  String get editEntry => 'এন্ট্রি সম্পাদনা';

  @override
  String get editEntryHint => 'ওজন বা রেপস পরিবর্তন করুন';

  @override
  String get removeSet => 'সেট মুছুন';

  @override
  String get continueWorkout => 'ব্যায়াম চালিয়ে যাবেন?';

  @override
  String get continueWorkoutBody => 'আপনার একটি অসমাপ্ত সেশন রয়েছে।';

  @override
  String get addBodyWidget => 'বডি উইজেট যোগ করুন';

  @override
  String get repsOnly => 'শুধুমাত্র রেপস';

  @override
  String get repsOnlyHint => 'ওজন ছাড়া শুধুমাত্র পুনরাবৃত্তির হিসাব রাখুন';

  @override
  String get useDefaultArt => 'ডিফল্ট ছবি ব্যবহার করুন';

  @override
  String daysShort(int n) {
    return '$n দিন';
  }

  @override
  String get focusCard => 'আজকের ফোকাস কার্ড';

  @override
  String get autoAdvance => 'স্বয়ংক্রিয় পরবর্তী সেট';

  @override
  String get keepScreenOn => 'স্ক্রিন চালু রাখুন';

  @override
  String get lockWorkout => 'সেশন লক করুন';

  @override
  String get unlockWorkout => 'আনলক করুন';

  @override
  String get lockedCaps => 'লক করা';

  @override
  String get holdToUnlock => 'আনলক করতে চেপে রাখুন';

  @override
  String get liveChannel => 'লাইভ সেশন';

  @override
  String get liveChannelWhy => 'চলমান সেশনের অবস্থা নোটিফিকেশনে প্রদর্শন করে';

  @override
  String liveSet(int n, int total) {
    return 'সেট $n / $total';
  }

  @override
  String get liveResting => 'বিশ্রাম';

  @override
  String get liveAllDone => 'সব সেট সম্পন্ন!';

  @override
  String get autoAdvanceHint => 'সেট সম্পন্ন হলে স্বয়ংক্রিয়ভাবে বিশ্রামের টাইমার চালু হবে';

  @override
  String get autoProgress => 'স্বয়ংক্রিয় ওজন বৃদ্ধি';

  @override
  String autoProgressHint(String w) {
    return 'প্রতিটি রেপ সম্পন্ন করুন এবং পরবর্তী সেশন $w ভারী ওজন দিয়ে শুরু হবে।';
  }

  @override
  String get placePlates => 'উপলব্ধ প্লেটসমূহ';

  @override
  String get platesAll => 'সকল প্লেট';

  @override
  String platesOwned(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$nটি সাইজ', one: '$nটি সাইজ');
    return '$_temp0';
  }

  @override
  String get platePairs => 'প্লেটের জোড়া';

  @override
  String plateAchievable(String w) {
    return 'সর্বোচ্চ কাছাকাছি লোড: $w';
  }

  @override
  String get autoWarmup => 'স্বয়ংক্রিয় ওয়ার্মআপ';

  @override
  String get autoWarmupHint => 'ভারী কাজের সেটের আগে প্রয়োজনীয় ওয়ার্মআপ সেট যোগ করে';

  @override
  String get trainReminder => 'ট্রেনিং অনুস্মারক';

  @override
  String get trainReminderHint => 'প্রতিদিন ব্যায়ামের নির্দিষ্ট সময়ে নোটিফিকেশন পান';

  @override
  String get notifTrainChannel => 'ট্রেনিং অনুস্মারক';

  @override
  String get notifTrainChannelWhy => 'জিম করার সময় হলে আপনাকে মনে করিয়ে দেয়';

  @override
  String get notifTrainTitle => 'আজকের ব্যায়ামের সময়';

  @override
  String get notifTrainBody => 'লোহা ডাকার সময় হয়েছে — আপনার সেশন প্রস্তুত।';

  @override
  String get exportCatalog => 'ক্যাটালগ এক্সপোর্ট করুন';

  @override
  String get importRoutine => 'রুটিন ইম্পোর্ট করুন';

  @override
  String get planIntro => 'পরিকল্পনা বিবরণ';

  @override
  String get planFormat => 'পরিকল্পনার কাঠামো';

  @override
  String planImported(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'রুটিনে $nটি ব্যায়াম যোগ করা হয়েছে',
      one: 'রুটিনে $nটি ব্যায়াম যোগ করা হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String get planNothing => 'কোনো পরিকল্পনা পাওয়া যায়নি';

  @override
  String get planFailed => 'পরিকল্পনা ইম্পোর্ট ব্যর্থ হয়েছে';

  @override
  String get routineGroup => 'রুটিন গ্রুপ';

  @override
  String get newGroup => 'নতুন গ্রুপ';

  @override
  String get noGroup => 'গ্রুপ ছাড়া';

  @override
  String get groupNameHint => 'গ্রুপের নাম লিখুন';

  @override
  String get filters => 'ফিল্টার';

  @override
  String get setsPlannedHint => 'পরিকল্পিত সেটের সংখ্যা';

  @override
  String get nextTime => 'পরের বার';

  @override
  String get nextHold => 'পরবর্তী ধরে রাখুন';

  @override
  String get bgPhoto => 'পটভূমির ছবি';

  @override
  String get bgPhotoPick => 'ছবি নির্বাচন করুন';

  @override
  String get bgPhotoChange => 'ছবি পরিবর্তন করুন';

  @override
  String get bgPhotoRemove => 'ছবি সরান';

  @override
  String get bgDim => 'ছবির অন্ধকার মাত্রা';

  @override
  String get dimSoft => 'হালকা';

  @override
  String get dimMedium => 'মাঝারি';

  @override
  String get dimStrong => 'গাঢ়';

  @override
  String get bgPhotoHint => 'অ্যাপের পটভূমিতে আপনার নিজস্ব ছবি সেট করুন';

  @override
  String get reminderSmart => 'স্মার্ট অনুস্মারক';

  @override
  String get reminderFixed => 'নির্দিষ্ট সময়ে';

  @override
  String get reminderSmartHint =>
      'আপনার পূর্ববর্তী সেশনের সময়ের ওপর ভিত্তি করে স্বয়ংক্রিয়ভাবে মনে করিয়ে দেয়';

  @override
  String get reminderSmartEmpty => 'পর্যাপ্ত ডেটা নেই';

  @override
  String habitFocus(String day) {
    return 'যা সাধারণত আপনি $day-এ অনুশীলন করেন';
  }

  @override
  String get duplicateRoutine => 'রুটিন কপি করুন';

  @override
  String copySuffix(String name) {
    return '$name (কপি)';
  }

  @override
  String get saveAsRoutine => 'রুটিন হিসেবে সংরক্ষণ করুন';

  @override
  String get savedAsRoutine => 'রুটিন হিসেবে সংরক্ষিত হয়েছে';

  @override
  String get templates => 'টেমপ্লেটসমূহ';

  @override
  String get templatesHint => 'জনপ্রিয় ওয়ার্কআউট টেমপ্লেট থেকে দ্রুত শুরু করুন';

  @override
  String templateAdded(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$nটি রুটিন যোগ করা হয়েছে',
      one: '$nটি রুটিন যোগ করা হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String get tplFullbody => 'ফুল বডি ওয়ার্কআউট';

  @override
  String get tplPpl => 'পুশ পুল লেগ্স (PPL)';

  @override
  String get tplUpperlower => 'আপার / লোয়ার বডি';

  @override
  String get tplStronglifts => 'স্ট্রংলিফটস ৫×৫';

  @override
  String get tplStartingstrength => 'স্টার্টিং স্ট্রেন্থ';

  @override
  String get tplHome => 'হোম বডিওয়েট ওয়ার্কআউট';

  @override
  String dayCount(int n) {
    return '$n দিন';
  }

  @override
  String get logRpe => 'RPE বা RIR লগ করুন';

  @override
  String get rpeTitle => 'প্রচেষ্টার তীব্রতা (RPE)';

  @override
  String get rpeHint => '১ থেকে ১০ স্কেলে সেটের পরিশ্রমের মাত্রা চিহ্নিত করুন';

  @override
  String get superset => 'সুপারসেট';

  @override
  String get supersetLink => 'সুপারসেট হিসেবে যুক্ত করুন';

  @override
  String get supersetHint => 'বিশ্রাম ছাড়া পরপর দুটি ব্যায়াম সম্পাদন করুন';

  @override
  String get aiRoutine => 'স্মার্ট রুটিন জেনারেটর';

  @override
  String get aiIntro => 'আপনার লক্ষ্য ও সরঞ্জামের ভিত্তিতে নিখুঁত রুটিন তৈরি করুন';

  @override
  String get aiStep1 => 'আপনার লক্ষ্য বেছে নিন';

  @override
  String get aiStep2 => 'উপলব্ধ সরঞ্জাম নির্বাচন করুন';

  @override
  String get aiStep3 => 'সাপ্তাহিক দিন সংখ্যা';

  @override
  String get aiStep4 => 'প্রস্তুতকৃত রুটিন যাচাই করুন';

  @override
  String aiMissing(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'লাইব্রেরিতে $nটি নাম ছিল না',
      one: 'লাইব্রেরিতে ১টি নাম ছিল না',
    );
    return '$_temp0';
  }

  @override
  String get importApps => 'অ্যাপ থেকে ইম্পোর্ট';

  @override
  String get importOtherCsv => 'অন্যান্য CSV ফাইল';

  @override
  String get importAskApp => 'কোন অ্যাপের ব্যাকআপ এটি?';

  @override
  String get awardFirstStepName => 'প্রথম পদক্ষেপ';

  @override
  String get awardFirstStepLine => 'আপনার প্রথম সেশন সফলভাবে সম্পন্ন হয়েছে।';

  @override
  String get awardFirstWorkoutName => 'প্রথম ওয়ার্কআউট';

  @override
  String get awardFirstWorkoutLine => 'যাত্রার সূচনা — প্রথম দিন সম্পন্ন।';

  @override
  String get awardFirstRoutineName => 'প্রথম রুটিন';

  @override
  String get awardFirstRoutineLine => 'একটি নিজস্ব রুটিন তৈরি করেছেন।';

  @override
  String get awardFirstRecordName => 'প্রথম পিআর';

  @override
  String get awardFirstRecordLine => 'আপনার প্রথম ব্যক্তিগত রেকর্ড।';

  @override
  String get awardStreak3Name => '৩ দিনের ধারাবাহিকতা';

  @override
  String get awardStreak3Line => 'টানা ৩ দিন ব্যায়াম সম্পন্ন।';

  @override
  String get awardTonne1Name => '১ টন উত্তোলন';

  @override
  String get awardTonne1Line => 'মোট ১,০০০ কেজি ওজন উত্তোলন করেছেন।';

  @override
  String get awardSets100Name => '১০০টি সেট';

  @override
  String get awardSets100Line => '১০০টি কার্যকরী সেট সম্পন্ন করেছেন।';

  @override
  String get awardHours10Name => '১০ ঘণ্টা শ্রম';

  @override
  String get awardHours10Line => 'জিমে ১০ ঘণ্টা ঘাম ঝরিয়েছেন।';

  @override
  String get awardWorkouts50Name => '৫০টি সেশন';

  @override
  String get awardWorkouts50Line => '৫০তম সেশন উদযাপন করুন।';

  @override
  String get awardHours50Name => '৫০ ঘণ্টা সম্পন্ন';

  @override
  String get awardHours50Line => '৫০ ঘণ্টা নিষ্ঠার সাথে ট্রেনিং করেছেন।';

  @override
  String get awardsTitle => 'অর্জন ও মেডেল';

  @override
  String get awardWon => 'অর্জিত মেডেল!';

  @override
  String get yearTitle => 'বার্ষিক পর্যালোচনা';

  @override
  String get yearBestMonth => 'সেরা মাস';

  @override
  String get yearMonths => 'মাসিক হিসাব';

  @override
  String get awardSpinHint => 'ঘুরিয়ে মেডেলটি দেখুন';

  @override
  String get awardUnlocked => 'নতুন মেডেল আনলক হয়েছে!';

  @override
  String get awardNice => 'অসাধারণ!';

  @override
  String get awardSaveImage => 'মেডেলের ছবি সংরক্ষণ করুন';

  @override
  String get awardSaved => 'মেডেল গ্যালারিতে সংরক্ষিত হয়েছে';

  @override
  String get awardStreakBottom => 'টানা দিন';

  @override
  String get awardStreak7Top => '১ সপ্তাহ';

  @override
  String get awardStreak7Name => '৭ দিনের ধারাবাহিকতা';

  @override
  String get awardStreak7Line => 'টানা এক সপ্তাহ সক্রিয় থেকেছেন।';

  @override
  String get awardStreak30Top => '১ মাস';

  @override
  String get awardStreak30Name => '৩০ দিনের ধারাবাহিকতা';

  @override
  String get awardStreak30Line => 'টানা এক মাস লোহার সাথে অটুট।';

  @override
  String get awardWorkouts100Top => 'শতক';

  @override
  String get awardWorkouts100Bottom => 'সেশন';

  @override
  String get awardWorkouts100Name => '১০০টি সেশন';

  @override
  String get awardWorkouts100Line => '১০০টি সম্পূর্ণ জিম সেশন সম্পন্ন!';

  @override
  String get awardTonnes100Top => '১০০ টন';

  @override
  String get awardTonnes100Bottom => 'উত্তোলিত';

  @override
  String get awardTonnes100Name => '১০০ টন ক্লাব';

  @override
  String get awardTonnes100Line => '১,০০,০০০ কেজি লোহা স্থানান্তরিত করেছেন।';

  @override
  String get awardSets1000Top => '১,০০০';

  @override
  String get awardSets1000Bottom => 'সেট';

  @override
  String get awardSets1000Name => '১,০০০ সেট';

  @override
  String get awardSets1000Line => '১,০০০টি সেট সফলভাবে শেষ করেছেন।';

  @override
  String get profile => 'প্রোফাইল';

  @override
  String get editProfile => 'প্রোফাইল সম্পাদনা';

  @override
  String get pickBadge => 'ব্যাজ নির্বাচন করুন';

  @override
  String get badgeTitle => 'ভেরিফায়েড অ্যাথলিট ব্যাজ';

  @override
  String get statWorkouts => 'ওয়ার্কআউট';

  @override
  String get statTrained => 'ট্রেনিং সময়';

  @override
  String get statSets => 'সেট';

  @override
  String get statLifted => 'উত্তোলিত ওজন';

  @override
  String get statStreak => 'ধারাবাহিকতা';

  @override
  String get statDays => 'দিন';

  @override
  String get unitHours => 'ঘণ্টা';

  @override
  String get unitDays => 'দিন';

  @override
  String get snapshots => 'স্ন্যাপশট';

  @override
  String get snapNow => 'এখন ছবি তুলুন';

  @override
  String get calendarLegend => 'ক্যালেন্ডার সংকেত';

  @override
  String get addCover => 'কভার ফটো যোগ করুন';

  @override
  String get addTodayWidget => 'আজকের উইজেট যোগ করুন';

  @override
  String get monthTitle => 'এই মাস';

  @override
  String get photosCard => 'অগ্রগতির ছবি';

  @override
  String get handleLabel => 'ইউজারনেম / হ্যান্ডেল';

  @override
  String get setupTitle => 'দ্রুত শুরু করুন';

  @override
  String get setupHint => 'আপনার প্রোফাইল সম্পূর্ণ করুন';

  @override
  String get setupWorkout => 'প্রথম সেশন শুরু করুন';

  @override
  String get setupWeight => 'শরীরের ওজন যোগ করুন';

  @override
  String get setupMeasures => 'পরিমাপ যুক্ত করুন';

  @override
  String get setupPhoto => 'প্রথম ছবি তুলুন';

  @override
  String get progressTitle => 'আপনার শারীরিক উন্নতি';

  @override
  String get tileVolume30 => '৩০ দিনের ভলিউম';

  @override
  String get tileAddWeight => 'ওজন লিখুন';

  @override
  String get heatToneTitle => 'হিটম্যাপের রঙ';

  @override
  String get heatToneHint => 'পেশীর সক্রিয়তার রঙের প্যালেট';

  @override
  String get thisWeekTitle => 'এই সপ্তাহের পারফরম্যান্স';

  @override
  String get momentsEmptyTitle => 'কোনো বিশেষ মুহূর্ত নেই';

  @override
  String get deletePhotoTitle => 'ছবি মুছবেন?';

  @override
  String get deletePhotoBody => 'এই ছবিটি টাইমলাইন থেকে চিরতরে মুছে যাবে।';

  @override
  String get awardsEarned => 'অর্জিত মেডেল';

  @override
  String get awardsLocked => 'লক করা মেডেল';

  @override
  String get awardStreak100Name => '১০০ দিনের ধারাবাহিকতা';

  @override
  String get awardWorkouts10Name => '১০টি সেশন';

  @override
  String get awardWorkouts10Line => '১০টি সেশন সম্পূর্ণ করেছেন।';

  @override
  String get awardWorkouts365Name => '৩৬৫টি সেশন';

  @override
  String get awardWorkouts365Line => 'বছরের প্রতিটি দিনের সমপরিমাণ ব্যায়াম।';

  @override
  String get awardTonnes10Name => '১০ টন ক্লাব';

  @override
  String get awardTonnes10Line => '১০,০০০ কেজি উত্তোলিত হয়েছে।';

  @override
  String get awardHours100Name => '১০০ ঘণ্টা ট্রেনিং';

  @override
  String get awardHours100Line => '১০০ ঘণ্টার নিষ্ঠাবান অনুশীলন।';

  @override
  String awardWonOn(String date) {
    return '$date-এ অর্জিত';
  }

  @override
  String awardProgressLabel(String value, String goal) {
    return '$goal-এর মধ্যে $value';
  }

  @override
  String badgeName(String id) {
    String _temp0 = intl.Intl.selectLogic(id, {
      'gold': 'গোল্ড',
      'blue': 'ব্লু',
      'green': 'গ্রিন',
      'red': 'রেড',
      'black': 'ব্ল্যাক',
      'violet': 'ভায়োলেট',
      'other': 'ব্যাজ',
    });
    return '$_temp0';
  }

  @override
  String memberSince(String date) {
    return '$date থেকে সদস্য';
  }

  @override
  String levelShort(int n) {
    return 'লেভেল $n';
  }

  @override
  String levelToNext(int n, int next) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'লেভেল $next-এ পৌঁছাতে আর $nটি ওয়ার্কআউট',
      one: 'লেভেল $next-এ পৌঁছাতে আর ১টি ওয়ার্কআউট',
    );
    return '$_temp0';
  }

  @override
  String heightCm(int n) {
    return '$n সেমি';
  }

  @override
  String heatToneName(String id) {
    String _temp0 = intl.Intl.selectLogic(id, {
      'ember': 'অ্যাম্বার',
      'green': 'সবুজ',
      'blue': 'নীল',
      'mono': 'ধূসর',
      'other': 'রং',
    });
    return '$_temp0';
  }

  @override
  String setsThisWeek(int n) {
    return 'এই সপ্তাহে $nটি সেট';
  }

  @override
  String weekOfGoal(int n, int goal) {
    return 'এই সপ্তাহে $goal-এর মধ্যে $n';
  }

  @override
  String momentCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$nটি মুহূর্ত', one: '$nটি মুহূর্ত');
    return '$_temp0';
  }

  @override
  String get badgeHint => 'প্রোফাইলে প্রদর্শিত ভেরিফিকেশন টিক চিহ্ন';

  @override
  String get momentsEmptyHint => 'সেশন শেষে ছবি তুলে মুহূর্তগুলো ধরে রাখুন।';

  @override
  String get awardStreak100Line => 'টানা ১০০ দিন ব্যায়ামের অনন্য রেকর্ড!';

  @override
  String get coverLabel => 'কভার ফটো';

  @override
  String get removeCover => 'কভার সরান';

  @override
  String get startTitle => 'শুরু করুন';

  @override
  String get logTitle => 'সেশন লগ করুন';

  @override
  String get logHint => 'সরাসরি বা রুটিন থেকে শুরু করুন';

  @override
  String get orStartFrom => 'অথবা শুরু করুন এখান থেকে';

  @override
  String get pickExercisesOption => 'ব্যায়াম নির্বাচন করুন';

  @override
  String get chooseFocusOption => 'পেশীর ফোকাস বেছে নিন';

  @override
  String get plannedRoutine => 'পরিকল্পিত রুটিন';

  @override
  String get logWorkoutAction => 'লগ শুরু করুন';

  @override
  String get logging => 'লগিং চলছে';

  @override
  String get placesLabel => 'স্থান';

  @override
  String get undo => 'পূর্বাবস্থায় ফেরান';

  @override
  String get deleteSet => 'সেট মুছুন';

  @override
  String get setDeleted => 'সেট মুছে ফেলা হয়েছে';

  @override
  String get removeWarmup => 'ওয়ার্মআপ সরান';

  @override
  String get addWeightAction => 'ওজন যোগ করুন';

  @override
  String get workoutOverview => 'ওয়ার্কআউট সারাংশ';

  @override
  String get allExercisesShort => 'সকল ব্যায়াম';

  @override
  String setsDoneOf(int done, int total) {
    return '$total-এর মধ্যে $doneটি সম্পন্ন';
  }

  @override
  String get nowLabel => 'এখন';

  @override
  String get deleteWorkout => 'ওয়ার্কআউট মুছবেন?';

  @override
  String get deleteWorkoutBody => 'এই সেশন এবং এর সমস্ত তথ্য স্থায়ীভাবে মুছে যাবে।';

  @override
  String get themeAuto => 'সিস্টেম ডিফল্ট';

  @override
  String get themeAutoHint => 'ডিভাইসের সিস্টেম থিম অনুসরণ করবে';

  @override
  String get demoSizeTitle => 'ডেমো প্রিভিউ সাইজ';

  @override
  String get demoLarge => 'বড়';

  @override
  String get demoSmall => 'ছোট';

  @override
  String get demoOff => 'বন্ধ';

  @override
  String get alarmStyleTitle => 'অ্যালার্মের ধরন';

  @override
  String get alarmStyleLoud => 'শব্দসহ';

  @override
  String get alarmStyleQuiet => 'মৃদু শব্দ';

  @override
  String get alarmStyleVibrate => 'শুধুমাত্র কম্পন';

  @override
  String get alarmStyleHint => 'বিশ্রাম শেষ হলে কীভাবে সতর্ক করবে তা নির্ধারণ করুন';

  @override
  String get suggestedPicks => 'প্রস্তাবিত পছন্দ';

  @override
  String get moreOptions => 'আরও অপশন';

  @override
  String get suggestInWorkouts => 'ওয়ার্কআউটে প্রস্তাব করুন';

  @override
  String get suggestInWorkoutsHint => 'সেশন তৈরির সময় এই ব্যায়ামটি সুপারিশ করবে';

  @override
  String get dontSuggest => 'প্রস্তাব করবেন না';

  @override
  String get noLongerSuggested => 'আর প্রস্তাব করা হবে না';

  @override
  String get onbPlaceTitle => 'আপনি কোথায় ব্যায়াম করেন?';

  @override
  String get onbPlaceWhy => 'আপনার স্থান নির্বাচন করুন যাতে সঠিক ব্যায়াম সুপারিশ করা যায়।';

  @override
  String get onbPlaceGear => 'উপলব্ধ সরঞ্জাম';

  @override
  String distanceCol(String unit) {
    return 'দূরত্ব ($unit)';
  }

  @override
  String get timeCol => 'সময়';

  @override
  String get timeMinutesTitle => 'মিনিট';

  @override
  String get timeSecondsTitle => 'সেকেন্ড';

  @override
  String distanceTitle(String unit) {
    return 'দূরত্ব ($unit)';
  }

  @override
  String get holdLabel => 'ধরে রাখুন';

  @override
  String get stopLabel => 'থামুন';

  @override
  String startHold(String time) {
    return 'শুরু · $time';
  }

  @override
  String get exerciseTypeLabel => 'ব্যায়ামের ধরন';

  @override
  String get typeReps => 'ওজন ও রেপস';

  @override
  String get typeTime => 'সময়ভিত্তিক';

  @override
  String get typeCardio => 'কার্ডিও / দূরত্ব';

  @override
  String get exerciseTypeHint => 'ব্যায়ামটি কীভাবে ট্র্যাক করবেন তা নির্বাচন করুন';

  @override
  String get howToLabel => 'নির্দেশনা';

  @override
  String get howToHint => 'ব্যায়ামটি সঠিকভাবে করার পদক্ষেপগুলো';

  @override
  String get editExercise => 'ব্যায়াম সম্পাদনা';

  @override
  String get saveChanges => 'পরিবর্তন সংরক্ষণ করুন';

  @override
  String get noStepsYet => 'এখনও কোনো পদক্ষেপ যোগ করা হয়নি';

  @override
  String get addSteps => 'পদক্ষেপ যোগ করুন';

  @override
  String get setTypeRestPause => 'রেস্ট-পজ সেট';

  @override
  String get planFormatNotes => 'পরিকল্পনার কাঠামো সংক্রান্ত নোট';

  @override
  String get planSets => 'পরিকল্পিত সেট';

  @override
  String get planSetsHint => 'প্রতি সেশনে কাঙ্ক্ষিত সেটের লক্ষ্য';

  @override
  String get autoValue => 'স্বয়ংক্রিয়';

  @override
  String get clearPlan => 'পরিকল্পনা মুছুন';

  @override
  String get planChip => 'প্ল্যান';

  @override
  String get shareRoutine => 'রুটিন শেয়ার করুন';

  @override
  String get shareWeek => 'সপ্তাহ শেয়ার করুন';

  @override
  String get shareWeekHint => 'পুরো সপ্তাহের পারফরম্যান্স কার্ড';

  @override
  String shareMessage(String name) {
    return '$name — এটি যোগ করতে Open GYM দিয়ে ফাইলটি খুলুন।';
  }

  @override
  String get importRoutines => 'রুটিন ইম্পোর্ট';

  @override
  String get importPasteHint => 'ক্লিপবোর্ড থেকে রুটিন টেক্সট পেস্ট করুন';

  @override
  String get pasteAction => 'পেস্ট করুন';

  @override
  String routineCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$nটি রুটিন', one: '$nটি রুটিন');
    return '$_temp0';
  }

  @override
  String get useTheirSchedule => 'তাদের সময়সূচী গ্রহণ করুন';

  @override
  String get useTheirScheduleHint => 'রুটিনের নির্ধারিত দিনগুলো আপনার ক্যালেন্ডারে যুক্ত হবে';

  @override
  String get addToMyRoutines => 'আমার রুটিনে যোগ করুন';

  @override
  String routinesAdded(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$nটি রুটিন যুক্ত হয়েছে',
      one: '১টি রুটিন যুক্ত হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String get nothingToImport => 'ইম্পোর্ট করার মতো কিছু নেই';

  @override
  String get aiStepCopy => '১. তথ্য কপি করুন';

  @override
  String get aiStepAsk => '২. এআই-কে জিজ্ঞাসা করুন';

  @override
  String get aiStepPaste => '৩. ফলাফল পেস্ট করুন';

  @override
  String get copyForAi => 'এআই-এর জন্য কপি করুন';

  @override
  String get copiedDone => 'ক্লিপবোর্ডে কপি করা হয়েছে';

  @override
  String get aiPasteHint => 'এআই-এর তৈরি করা টেক্সট এখানে পেস্ট করুন';

  @override
  String get importAction => 'ইম্পোর্ট করুন';

  @override
  String get showFormat => 'ফরম্যাট দেখুন';

  @override
  String get shareAsFile => 'ফাইল হিসেবে শেয়ার করুন';

  @override
  String get recoveryTab => 'রিকভারি';

  @override
  String recoveryOverall(int pct) {
    return 'শরীর $pct% রিকভার হয়েছে';
  }

  @override
  String get recoveryAllFresh => 'সমস্ত পেশী প্রস্তুত';

  @override
  String recoveryStill(String muscles) {
    return 'এখনও রিকভার হচ্ছে: $muscles';
  }

  @override
  String get recoveryTired => 'ক্লান্ত পেশী';

  @override
  String get recoveryFresh => 'সতেজ';

  @override
  String get recoveryHint => 'পেশীর বিশ্রাম ও পুনরায় প্রশিক্ষণের প্রস্তুতি নির্দেশ করে';

  @override
  String recoveryPct(int pct) {
    return '$pct% প্রস্তুত';
  }

  @override
  String readyInHours(int h) {
    return '~$h ঘণ্টার মধ্যে প্রস্তুত';
  }

  @override
  String get tplAbcd => '৪-দিনের স্প্লিট (ABCD)';

  @override
  String get tplAbcde => '৫-দিনের ব্রো স্প্লিট (ABCDE)';

  @override
  String get elapsedCaps => 'অতিবাহিত সময়';

  @override
  String get tapToSkip => 'এড়িয়ে যেতে স্পর্শ করুন';

  @override
  String get tapToStop => 'থামাতে স্পর্শ করুন';

  @override
  String get screenLocked => 'স্ক্রিন লক করা';

  @override
  String get lockedHint => 'আনলক করতে চেপে ধরে রাখুন';

  @override
  String get liveDoneSet => 'সেট সম্পন্ন';

  @override
  String get liveSkipRest => 'বিশ্রাম এড়িয়ে যান';

  @override
  String get livePause => 'বিরতি';

  @override
  String get liveResume => 'চালিয়ে যান';

  @override
  String get liveNext => 'পরবর্তী';

  @override
  String liveUpNext(String name) {
    return 'পরবর্তীতে: $name';
  }

  @override
  String get stickerOpen => 'স্টিকার খুলুন';

  @override
  String get stickerNoPhoto => 'কোনো ছবি পাওয়া যায়নি';

  @override
  String get stickerWorkout => 'ওয়ার্কআউট স্টিকার';

  @override
  String get stickerStreak => 'ধারাবাহিকতার স্টিকার';

  @override
  String get stickerDate => 'তারিখের স্টিকার';

  @override
  String get stickerHint => 'সোশ্যাল মিডিয়ার জন্য স্টাইলিশ স্টিকার';

  @override
  String get stickerSaved => 'স্টিকার গ্যালারিতে সংরক্ষিত হয়েছে';

  @override
  String get stickerWeek => 'সাপ্তাহিক স্টিকার';

  @override
  String get getReady => 'প্রস্তুত হন';

  @override
  String get stickerGallery => 'গ্যালারি থেকে ছবি';

  @override
  String get stickerCamera => 'ক্যামেরা দিয়ে তুলুন';

  @override
  String get shareIntroTitle => 'আপনার সাফল্য তুলে ধরুন';

  @override
  String get shareIntroBody => 'অনুপ্রেরণাদায়ী কার্ড আকারে বন্ধুদের সাথে শেয়ার করুন।';

  @override
  String get removedFromRoutine => 'রুটিন থেকে সরানো হয়েছে';

  @override
  String get radarTitle => 'পেশীর ভারসাম্য বিশ্লেষণ';

  @override
  String get radarHint => 'শরীরের বিভিন্ন অংশের ভলিউম অনুপাত';

  @override
  String get radarEmpty => 'ভারসাম্য দেখতে অন্তত কয়েকটি সেশন সম্পন্ন করুন';

  @override
  String get radarBalanced => 'শারীরিক ভারসাম্য চমৎকার';

  @override
  String radarFocus(String list) {
    return 'আরও প্রয়োজন: $list';
  }

  @override
  String get countdownReady => 'শুরু করতে প্রস্তুত?';

  @override
  String get countdownSkip => 'কাউন্টডাউন এড়িয়ে যান';

  @override
  String get countdownSetting => 'শুরুর আগে কাউন্টডাউন';

  @override
  String get effortSetting => 'সেট প্রতি প্রচেষ্টার মাত্রা রেকর্ড';

  @override
  String get effortHint => 'RPE: ১০ মানে আর সম্ভব নয়, ৮ মানে আরও ২টি রেপ বাকি ছিল।';

  @override
  String get rirTitle => 'অবশিষ্ট রেপস (RIR)';

  @override
  String get rirHint => '০ মানে শক্তিক্ষয়, ২ মানে আরও ২টি রেপ বাকি ছিল।';

  @override
  String get addWeekWidget => 'সাপ্তাহিক উইজেট যোগ করুন';

  @override
  String get gamificationSetting => 'মেডেল ও স্তর বিন্যাস';
}
