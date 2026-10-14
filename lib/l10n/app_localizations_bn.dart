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
  String get allTimeSessions => 'সেশন';

  @override
  String get allTimeTime => 'সময়';

  @override
  String get allTimeSets => 'সেট';

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
  String get days90 => '৯০ দিন';

  @override
  String get days365 => '১ বছর';

  @override
  String get daysAll => 'সব';

  @override
  String get weeklyAvgTitle => 'সাপ্তাহিক গড়';

  @override
  String weekOfDate(String date) {
    return '$date-এর সপ্তাহ';
  }

  @override
  String weightChangeRange(String change) {
    return 'এই সময়ে $change';
  }

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
  String get personalRecords => 'ব্যক্তিগত রেকর্ড';

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
  String get kindLabel => 'ধরন';

  @override
  String get kindStrength => 'শক্তি (Strength)';

  @override
  String get kindCalisthenics => 'ক্যালিসথেনিক্স';

  @override
  String get kindCardio => 'কার্ডিও';

  @override
  String get kindStretch => 'স্ট্রেচিং';

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
  String get placesHint => 'প্রতিটি স্থানে কী সরঞ্জাম আছে জানান, লাইব্রেরিতে শুধু সেগুলোই দেখাবে।';

  @override
  String get placeAll => 'যেকোনো স্থান';

  @override
  String get placeNew => 'নতুন স্থান';

  @override
  String get placeNamePlaceholder => 'বাড়ি, জিম, পার্ক…';

  @override
  String get placeGearLabel => 'এখানে কী আছে';

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
  String get theme => 'থিম';

  @override
  String get darkTheme => 'ডার্ক';

  @override
  String get lightTheme => 'লাইট';

  @override
  String get amoledTheme => 'অ্যামোলেড ব্ল্যাক';

  @override
  String get editDuration => 'ওয়ার্কআউটের সময়কাল';

  @override
  String get sessionName => 'ওয়ার্কআউটের নাম';

  @override
  String get nameWorkout => 'নাম দিন';

  @override
  String get sessionNameHint => 'যেমন: লেগস, পুশ, ফুল বডি';

  @override
  String get secondaryPickHint => 'এই ব্যায়ামে কাজ করা অন্যান্য পেশী স্পর্শ করুন।';

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
  String get backupImported => 'ব্যাকআপ সফলভাবে পুনরুদ্ধার করা হয়েছে';

  @override
  String get backupFailed => 'ব্যাকআপ ব্যর্থ হয়েছে';

  @override
  String get nothingToExport => 'এক্সপোর্ট করার জন্য কোনো ডেটা নেই';

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
  String get muscleLowerBack => 'লোয়ার ব্যাক';

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
  String get streakCaps => 'ধারাবাহিকতা';

  @override
  String daysUnit(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'দিন', one: 'দিন');
    return '$_temp0';
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
  String get onbPhotoAdd => 'ছবি যোগ করুন';

  @override
  String get onbPhotoChange => 'ছবি পরিবর্তন';

  @override
  String get onbPhotoTitle => 'আপনার প্রোফাইলে ছবি যোগ করুন';

  @override
  String get onbPhotoWhy => 'ঐচ্ছিক। এটি ফোনেই থাকে এবং প্রোফাইল থেকে যেকোনো সময় পরিবর্তন করা যায়।';

  @override
  String get onbPhotoLater => 'পরে';

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
  String get reminderExactTime => 'নির্দিষ্ট সময়';

  @override
  String get toastSoundSetting => 'নোটিসের শব্দ';

  @override
  String get toastSoundHint => 'উপরে নোটিশ প্রদর্শিত হলে একটি মৃদু ধ্বনি।';

  @override
  String get notifTrainChannel => 'ট্রেনিং অনুস্মারক';

  @override
  String get notifTrainChannelWhy => 'জিম করার সময় হলে আপনাকে মনে করিয়ে দেয়';

  @override
  String get notifTrainTitle => 'আজকের ব্যায়ামের সময়';

  @override
  String get notifTrainBody => 'লোহা ডাকার সময় হয়েছে — আপনার সেশন প্রস্তুত।';

  @override
  String get planIntro => 'পরিকল্পনা বিবরণ';

  @override
  String get planFormat => 'পরিকল্পনার কাঠামো';

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
  String get awardStreak7Name => '৭ দিনের ধারাবাহিকতা';

  @override
  String get awardStreak7Line => 'টানা এক সপ্তাহ সক্রিয় থেকেছেন।';

  @override
  String get awardStreak30Name => '৩০ দিনের ধারাবাহিকতা';

  @override
  String get awardStreak30Line => 'টানা এক মাস লোহার সাথে অটুট।';

  @override
  String get awardWorkouts100Name => '১০০টি সেশন';

  @override
  String get awardWorkouts100Line => '১০০টি সম্পূর্ণ জিম সেশন সম্পন্ন!';

  @override
  String get awardTonnes100Name => '১০০ টন ক্লাব';

  @override
  String get awardTonnes100Line => '১,০০,০০০ কেজি লোহা স্থানান্তরিত করেছেন।';

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
  String get addCover => 'কভার ফটো যোগ করুন';

  @override
  String get addTodayWidget => 'আজকের উইজেট যোগ করুন';

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
  String photosSelected(int n) {
    return '$nটি নির্বাচিত';
  }

  @override
  String deletePhotosTitle(int n) {
    return '$nটি ছবি মুছবেন?';
  }

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
  String get demoLoopTitle => 'ডেমো অ্যানিমেশন';

  @override
  String get demoLoopAlways => 'লুপ';

  @override
  String get demoLoopShort => '১০ সেকেন্ড';

  @override
  String get demoLoopHint => 'প্রায় ১০ সেকেন্ড চলে শুরুর ভঙ্গিতে থামবে। পুনরায় দেখতে ডেমোতে ট্যাপ করুন।';

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
  String get setTypeNormalInfo => 'একটি নিয়মিত সেট। এটি ভলিউম ও রেকর্ডে যুক্ত হয়।';

  @override
  String get setTypeWarmupInfo => 'প্রস্তুতির জন্য হালকা সেট। এগুলো ভলিউম বা রেকর্ডে যুক্ত হয় না।';

  @override
  String get setTypeDropInfo => 'সেট শেষ করেই বিশ্রাম ছাড়া ওজন কমিয়ে অনুশীলন চালিয়ে যান।';

  @override
  String get setTypeFailureInfo =>
      'আর একটিও নিখুঁত রেপ না পারা পর্যন্ত চালিয়ে যান। প্রকৃত রেপ সংখ্যা লগ করুন।';

  @override
  String get setTypeRestPauseInfo => 'সেটের পর ১০-২০ সেকেন্ড বিশ্রাম নিন, তারপর আরও কয়েকটি রেপ করুন।';

  @override
  String get planFormatNotes => 'পরিকল্পনার কাঠামো সংক্রান্ত নোট';

  @override
  String get planSets => 'পরিকল্পিত সেট';

  @override
  String get planSetsHint => 'প্রতি সেশনে কাঙ্ক্ষিত সেটের লক্ষ্য';

  @override
  String get planHintReps => 'প্রতিটি সেটের ধরন ও রেপ নির্বাচন করুন। শেষ সেশন থেকে স্বয়ংক্রিয়ভাবে শুরু হবে।';

  @override
  String get planHintTime =>
      'প্রতিটি সেটের ধরন ও সময় নির্ধারণ করুন। আপনার শেষ সেশন থেকে স্বয়ংক্রিয়ভাবে শুরু হবে।';

  @override
  String get planHintTimeWeight => 'প্রতিটি সেটের ধরন, সময় ও ওজন বেছে নিন। শেষ সেশন থেকে শুরু হবে।';

  @override
  String get planHintCardio => 'প্রতিটি সেটের দূরত্ব ও সময় বেছে নিন। শেষ সেশন থেকে শুরু হবে।';

  @override
  String get timeOnly => 'শুধুমাত্র সময়';

  @override
  String get autoValue => 'স্বয়ংক্রিয়';

  @override
  String get clearPlan => 'পরিকল্পনা মুছুন';

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
  String get rirHint => '০ মানে শক্তিক্ষয়, ২ মানে আরও ২টি রেপ বাকি ছিল।';

  @override
  String get addWeekWidget => 'সাপ্তাহিক উইজেট যোগ করুন';

  @override
  String get gamificationSetting => 'মেডেল ও স্তর বিন্যাস';

  @override
  String repCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$nটি রেপ', one: '$nটি রেপ');
    return '$_temp0';
  }

  @override
  String get prBestSet => 'সেরা সেট';

  @override
  String get weekStartSetting => 'সপ্তাহ শুরু হয়';

  @override
  String get stepOutOfWorkout => 'স্থগিত করে প্রস্থান';

  @override
  String get saveToRoutine => 'রুটিনে পরিবর্তন সংরক্ষণ করুন';

  @override
  String get routineUpdated => 'রুটিন আপডেট হয়েছে';

  @override
  String saveChangesTitle(String name) {
    return '$name-এ পরিবর্তন সংরক্ষণ করবেন?';
  }

  @override
  String get saveChangesBody => 'পরের বার শুরু করলে রুটিনে এই পরিবর্তনগুলো থাকবে।';

  @override
  String get routineOrderChanged => 'ব্যায়ামের নতুন ক্রম';

  @override
  String get mineOnly => 'আপনার তৈরি';

  @override
  String createNamed(String name) {
    return 'খুঁজে পাননি? \"$name\" তৈরি করুন';
  }

  @override
  String get orStartWith => 'অথবা শুরু করুন';

  @override
  String get warmupFocus => 'ওয়ার্ম-আপ';

  @override
  String get warmupFocusHint => 'ওয়ার্ম-আপ ও পেশী সচল করা';

  @override
  String get cardioFocus => 'কার্ডিও';

  @override
  String get cardioFocusHint => 'দৌড়, সাইক্লিং, রোয়িং বা স্কিপিং';

  @override
  String get homeRecommended => 'হোমে সুপারিশকৃত';

  @override
  String get homeRoutines => 'হোমে রুটিনসমূহ';

  @override
  String get homeRoutinesHint => 'আপনার রুটিনসমূহ। শুরু করতে স্পর্শ করুন।';

  @override
  String get homeWeekStats => 'হোমে এই সপ্তাহের পরিসংখ্যান';

  @override
  String get homeWeekStatsHint => 'সপ্তাহের ভলিউম, সেট ও ব্যক্তিগত রেকর্ড।';

  @override
  String get stepsSetting => 'হেলথ কানেক্ট থেকে পদক্ষেপ';

  @override
  String get stepsSettingHint => 'হোম স্ক্রিনে আজকের পদক্ষেপ দেখায়। ফোন থেকে কোনো ডেটা বাইরে যায় না।';

  @override
  String get stepsToday => 'আজকের পদক্ষেপ';

  @override
  String stepsOfGoal(String goal) {
    return '$goal-এর মধ্যে';
  }

  @override
  String stepsTodayCount(String count) {
    return 'আজ $countটি পদক্ষেপ';
  }

  @override
  String get stepsGoal => 'দৈনিক পদক্ষেপ লক্ষ্য';

  @override
  String get stepsNoAccess => 'পদক্ষেপে অ্যাক্সেস নেই';

  @override
  String get stepsGrant => 'হেলথ কানেক্টে অনুমতি দিতে ট্যাপ করুন';

  @override
  String get stepsInfoRead =>
      'এটি শুধুমাত্র আপনার পদক্ষেপ সংখ্যা পড়ে। হেলথ কানেক্টে অন্য কিছু পড়ে না বা লেখে না।';

  @override
  String get stepsInfoLocal => 'পদক্ষেপের তথ্য কেবল ফোনে থাকে। অ্যাপ কোনো ইন্টারনেটের সাথে যুক্ত হয় না।';

  @override
  String get stepsInfoOff => 'সেটিংস বা হেলথ কানেক্টে যেকোনো সময় এটি বন্ধ করতে পারেন।';

  @override
  String get stepsManage => 'অনুমতি পরিচালনা';

  @override
  String get routineDoneToday => 'আজকের জন্য সম্পন্ন — চমৎকার!';

  @override
  String get trainAgain => 'পুনরায় অনুশীলন করুন';

  @override
  String lastDoneAgo(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n দিন আগে',
      one: 'গতকাল সম্পন্ন',
      zero: 'আজ সম্পন্ন',
    );
    return '$_temp0';
  }

  @override
  String get archivedFilter => 'আর্কাইভকৃত';

  @override
  String get archiveExercise => 'ব্যায়াম আর্কাইভ করুন';

  @override
  String get restoreExercise => 'পুনরুদ্ধার';

  @override
  String get archivedToast => 'ব্যায়াম আর্কাইভ করা হয়েছে';

  @override
  String get archivedToastHint => 'ব্যায়াম · আর্কাইভে পাবেন';

  @override
  String get archivedBanner =>
      'আর্কাইভ করা হয়েছে। এটি তালিকা ও পরামর্শ থেকে বাইরে থাকবে; আপনার ইতিহাস সংরক্ষিত থাকবে।';

  @override
  String get videoMarksHint => 'একটি ধাপে থামুন এবং পরবর্তীতে সেখানে যেতে পিন চাপুন।';

  @override
  String get videoMarkHere => 'এই ধাপটি এখানে চিহ্নিত করুন';

  @override
  String get sectionGeneral => 'সাধারণ';

  @override
  String get sectionTraining => 'প্রশিক্ষণ';

  @override
  String get sectionAlerts => 'রিমাইন্ডার ও অ্যালার্ম';

  @override
  String get sectionHome => 'হোম';

  @override
  String get sectionWidgets => 'উইজেট';

  @override
  String get sectionData => 'ডেটা ও ব্যাকআপ';

  @override
  String get multiPlanSetting => 'দিনে একাধিক রুটিন';

  @override
  String get multiPlanHint => 'এই দিনের জন্য প্রতিটি রুটিন স্পর্শ করুন। যোগ করার ক্রমানুসারে থাকবে।';

  @override
  String routineOfDay(int n, int total) {
    return 'আজ $total-এর মধ্যে $n';
  }

  @override
  String get nextToday => 'পরবর্তীতে আজ';

  @override
  String get planAboutMe => 'আমার পরিচয়:';

  @override
  String planBody(String sex, int age, String height, String weight) {
    return '$sex, বয়স $age বছর, উচ্চতা $height, ওজন $weight।';
  }

  @override
  String planDays(int n) {
    return 'আমি সপ্তাহে $n দিন অনুশীলন করতে চাই।';
  }

  @override
  String get planNoHistory => 'এখনও কোনো লগ নেই: আমাকে শিক্ষানবিস ধরে ভলিউম ও ওজন সাবধানে রাখুন।';

  @override
  String planHistory(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'গত ৩০ দিনে $nটি ওয়ার্কআউট লগ হয়েছে।',
      one: 'গত ৩০ দিনে ১টি ওয়ার্কআউট লগ হয়েছে।',
    );
    return '$_temp0';
  }

  @override
  String get planBestLifts => 'সাম্প্রতিক সেরা সেট';

  @override
  String get planAskFirst =>
      'আমার লক্ষ্য বা সময়কাল জানা না থাকলে সংক্ষেপে একটি বার্তায় জিজ্ঞেস করুন। তথ্য পেলে কেবল JSON ফরম্যাটে উত্তর দিন।';

  @override
  String get backToTop => 'উপরে যান';

  @override
  String get deleteExerciseTitle => 'এই ব্যায়ামটি মুছবেন?';

  @override
  String deleteExerciseBody(String name) {
    return '\"$name\" লাইব্রেরি ও রুটিন থেকে মুছে যাবে। অতীত সেট সংরক্ষিত থাকবে।';
  }

  @override
  String get exportForStravaHint =>
      'ব্রাউজারে strava.com/upload/select-এ আপলোড করুন। আপনার সেটের সাথে ওয়েট ট্রেনিং হিসেবে দেখাবে।';

  @override
  String get manualStartTime => 'শুরুর সময়';

  @override
  String get manualDuration => 'সময়কাল';

  @override
  String get manualDurationUnset => 'সময়কাল দিন';

  @override
  String get stravaRow => 'স্ট্রাভাতে এক্সপোর্ট (বেটা)';

  @override
  String get stravaBeta => 'বেটা';

  @override
  String get stravaIntro =>
      'স্ট্রাভাতে নিতে একটি ওয়ার্কআউট বেছে নিন। আপনি একটি .fit ফাইল পাবেন: ব্রাউজারে strava.com/upload/select-এ আপলোড করুন।';

  @override
  String get stravaEmpty => 'এক্সপোর্ট করার মতো কোনো ওয়ার্কআউট নেই।';

  @override
  String get tapToPause => 'স্থগিত করতে স্পর্শ করুন';

  @override
  String get holdPausedHint => 'স্থগিত — পুনরায় শুরু করতে চাপুন';

  @override
  String get finishHoldNow => 'সেট এখনই শেষ করুন';

  @override
  String get barWeightExercise => 'বার বা স্লেডের ওজন';

  @override
  String get barWeightHint => 'প্লেট ক্যালকুলেটরে ব্যবহৃত হয়';

  @override
  String get barWeightCustom => 'নিজের ওজন · রিসেট করতে ট্যাপ করুন';

  @override
  String get groupRename => 'গ্রুপের নাম পরিবর্তন';

  @override
  String get groupUngroup => 'গ্রুপ সরান, রুটিন রাখুন';

  @override
  String get groupDeleteAll => 'গ্রুপ ও রুটিন মুছুন';

  @override
  String groupDeleteTitle(String name) {
    return '\"$name\" মুছবেন?';
  }

  @override
  String groupDeleteBody(String count) {
    return '$countটি মুছে ফেলা হবে। ইতিহাস সংরক্ষিত থাকবে।';
  }

  @override
  String get tplRr => 'r/bodyweightfitness ক্লাসিক: সপ্তাহে তিন দিন ফুল বডি। সহজ মনে হলে পরবর্তী ধাপে যান।';

  @override
  String get levelUpKicker => 'পরবর্তী ধাপ';

  @override
  String levelUpBody(int reps, String name) {
    return '$name-এ পরপর দুটি ওয়ার্কআউটে ৩×$reps। পরবর্তী ধাপে যেতে প্রস্তুত?';
  }

  @override
  String levelUpSwap(String routine) {
    return '$routine-এ এটি প্রতিস্থাপন করুন';
  }

  @override
  String get levelUpSee => 'কীভাবে করতে হয় দেখুন';

  @override
  String get levelUpLater => 'এখন নয়';

  @override
  String get levelUpStay => 'এটাই রাখুন';

  @override
  String levelUpSwapped(String name, String routine) {
    return '$routine-এ এখন $name যুক্ত';
  }

  @override
  String get levelUpStayed => 'এটির জন্য আর কোনো উচ্চতর ধাপের পরামর্শ নেই';

  @override
  String get levelHintsSetting => 'পরবর্তী ধাপের পরামর্শ';

  @override
  String get heatmapLabelsSetting => 'অ্যাক্টিভিটি ম্যাপে দিন ও মাস';

  @override
  String get rmPercent => 'শতাংশ';

  @override
  String rmAtPercent(String pct) {
    return 'আপনার সর্বোচ্চ ওজনের $pct';
  }

  @override
  String get copyWorkout => 'টেক্সট হিসেবে কপি';

  @override
  String get goalSet => 'লক্ষ্য নির্ধারণ';

  @override
  String get goalTargetReps => 'লক্ষ্য রেপ্স';

  @override
  String goalToGo(String value) {
    return 'আরও $value বাকি';
  }

  @override
  String get goalReached => 'লক্ষ্য অর্জিত';

  @override
  String goalDaysLeft(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n দিন বাকি', one: '১ দিন বাকি');
    return '$_temp0';
  }

  @override
  String get goalOverdue => 'তারিখ পেরিয়ে গেছে';

  @override
  String get goalDeadline => 'সময়সীমা';

  @override
  String get goalNoDeadline => 'নির্দিষ্ট সময়সীমা নেই';

  @override
  String get goalRemove => 'লক্ষ্য সরান';

  @override
  String get exerciseNameMissing => 'একটি নাম দিন';

  @override
  String get aliasesLabel => 'বিকল্প নাম (ঐচ্ছিক)';

  @override
  String get aliasesHint => 'অন্যান্য নাম, কমা দিয়ে আলাদা করুন';

  @override
  String alsoCalled(String names) {
    return 'আরও পরিচিত: $names';
  }

  @override
  String get addToRoutine => 'রুটিনে যোগ করুন';

  @override
  String inRoutines(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$nটি রুটিনে রয়েছে',
      one: '১টি রুটিনে রয়েছে',
      zero: 'এখনও কোনো রুটিনে নেই',
    );
    return '$_temp0';
  }

  @override
  String get alreadyInRoutine => 'ইতিমধ্যেই যুক্ত আছে';

  @override
  String get restInRoutine => 'এই রুটিনে বিশ্রাম';

  @override
  String get restInRoutineHint => 'ব্যায়ামের মতোই';

  @override
  String get restInRoutineReset => 'শুধুমাত্র এখানে · বাতিল করতে ট্যাপ করুন';

  @override
  String get swapExercise => 'ব্যায়াম বদলান';

  @override
  String get swapShort => 'বদল';

  @override
  String swapHint(String name) {
    return 'শুধুমাত্র আজকের জন্য $name-এর বিকল্প। শেষ হলে রুটিনে স্থায়ী রাখতে পারেন।';
  }

  @override
  String get swapKeepsDone => 'যে সেটগুলো সম্পন্ন করেছেন তা লগ থাকবে; বাকি সেট নতুনটি দিয়ে চলবে।';

  @override
  String swapSameMuscle(String muscle) {
    return 'একই পেশী · $muscle';
  }

  @override
  String get swapDoneBefore => 'পূর্বে সম্পন্ন হয়েছে';

  @override
  String get multiPlanSettingHint => 'একই দিনে একাধিক রুটিন নির্ধারণ।';

  @override
  String get levelHintsHint => 'ব্যায়াম সহজ হয়ে গেলে এটি আপনাকে তুলনামূলক কঠিন সংস্করণের পরামর্শ দেবে।';

  @override
  String get focusCardHint => 'আজকের রুটিন, হোমের শীর্ষে।';

  @override
  String get gamificationHint => 'মেডেল, লেভেল ও ওয়ার্কআউট শেষের উৎসব。';

  @override
  String get exerciseSettings => 'এই ব্যায়ামের সেটিংস';

  @override
  String get placeActiveNow => 'আপনি এখন এখানে আছেন';

  @override
  String get placeTapToUse => 'এখানে অনুশীলন করতে স্পর্শ করুন';

  @override
  String get intervalDays => 'দিন';

  @override
  String goalDaysShort(int done, int target) {
    return '$done/$target দিন';
  }

  @override
  String get toolNameRpe => 'RPE লোড';

  @override
  String get toolTitleRpe => 'RPE অনুযায়ী লোড';

  @override
  String get toolDescRpe => 'আপনার কাঙ্ক্ষিত প্রচেষ্টার ওজন';

  @override
  String get toolNameDots => 'শক্তির স্তর';

  @override
  String get toolTitleDots => 'শক্তির স্তর (DOTS)';

  @override
  String get toolDescDots => 'শরীরের ওজন অনুযায়ী আপনার শারীরিক শক্তি';

  @override
  String rpeResultHint(int reps, String rpe) {
    return 'RPE $rpe-তে $repsটি রেপের জন্য';
  }

  @override
  String get rpeYourSet => 'আপনার করা একটি সেট';

  @override
  String get rpeGoal => 'আপনি কী অর্জন করতে চান';

  @override
  String rpeOneRmLine(String value) {
    return 'আনুমানিক 1RM: $value';
  }

  @override
  String get rpeExplain => 'RPE 10 মানে আর একটিও সম্ভব ছিল না; 8 মানে আরও ২টি রেপ বাকি ছিল।';

  @override
  String get dotsBestLifts => 'আপনার সেরা লিফটস';

  @override
  String get dotsSquat => 'স্কোয়াট';

  @override
  String get dotsBench => 'বেঞ্চ প্রেস';

  @override
  String get dotsDeadlift => 'ডেডলিফ্ট';

  @override
  String dotsTotalLine(String value) {
    return 'মোট: $value';
  }

  @override
  String get dotsExplain =>
      'ওজন নির্বিশেষে যে কারও শক্তির সাথে তুলনা করে। আপনার সেরা সিঙ্গেল রেপ বা আনুমানিক 1RM ব্যবহার করুন।';

  @override
  String get dotsLevel0 => 'শিক্ষানবিস';

  @override
  String get dotsLevel1 => 'মধ্যবর্তী';

  @override
  String get dotsLevel2 => 'উন্নত';

  @override
  String get dotsLevel3 => 'খুব উন্নত';

  @override
  String get dotsLevel4 => 'এলিট';

  @override
  String get toolNameWilks => 'উইল্কস';

  @override
  String get toolTitleWilks => 'উইল্কস স্কোর';

  @override
  String get toolDescWilks => 'পাওয়ারলিফটিংয়ের ঐতিহ্যবাহী স্কোর';

  @override
  String get wilksExplain =>
      'পাওয়ারলিফটিংয়ের ক্লাসিক সূত্র। ২০২০ সালে DOTS এটি প্রতিস্থাপন করলেও এখনও বহুল ব্যবহৃত।';

  @override
  String get toolNameFfmi => 'FFMI';

  @override
  String get toolTitleFfmi => 'ফ্যাট-ফ্রি মাস ইনডেক্স (FFMI)';

  @override
  String get toolDescFfmi => 'উচ্চতা অনুযায়ী পেশীর অনুপাত';

  @override
  String get ffmiBodyFat => 'শরীরের চর্বি (BODY FAT)';

  @override
  String ffmiLeanLine(String value) {
    return 'চর্বিহীন ভর: $value';
  }

  @override
  String get ffmiExplain =>
      'BMI-এর মতো, তবে চর্বি ছাড়া: এটি কেবল চর্বিহীন ভর গণনা করে। উচ্চতার সাথে সামঞ্জস্যপূর্ণ হওয়ায় যে কারও সাথে তুলনা করা যায়।';

  @override
  String get ffmiLevel0 => 'গড়ের নিচে';

  @override
  String get ffmiLevel1 => 'গড়';

  @override
  String get ffmiLevel2 => 'গড়ের উপরে';

  @override
  String get ffmiLevel3 => 'চমৎকার';

  @override
  String get ffmiLevel4 => 'ব্যতিক্রমী';

  @override
  String get rpeEffortLabel => 'প্রচেষ্টা (RPE)';

  @override
  String get restRowHint => 'সেটের মাঝে বিশ্রাম, ব্যায়ামের নিজস্ব সময় না থাকলে।';

  @override
  String get effortRowHint => 'প্রতিটি সেটে RPE বা RIR লগ করুন।';

  @override
  String get countdownHint => 'প্রথম সেটের পূর্বে ৩, ২, ১ কাউন্টডাউন।';

  @override
  String get keepScreenOnHint => 'অনুশীলনের সময় স্ক্রিন সক্রিয় থাকবে।';

  @override
  String get demoSizeRowHint => 'ওয়ার্কআউটের সময় ব্যায়ামের চিত্র।';

  @override
  String get demoLoopRowHint => 'অ্যানিমেশন পুনরায় চলবে নাকি থামবে।';

  @override
  String get trainReminderRowHint => 'যেদিন আপনি অনুশীলন করবেন সেদিন একটি নোটিফিকেশন।';

  @override
  String get alarmSoundRowHint => 'বিশ্রাম শেষ হলে যে সুর বাজবে।';

  @override
  String get alarmStyleRowHint => 'সাইলেন্ট মোডে বাজবে কিনা।';

  @override
  String get recommendedRowHint => 'হোম স্ক্রিনে প্রস্তাবিত ব্যায়াম।';

  @override
  String get weightStepSetting => 'ওজন পরিবর্তনের ধাপ';

  @override
  String get weightStepHint => '− এবং + বোতামে যে পরিমাণ যোগ বা বিয়োগ হবে।';

  @override
  String get prBestWorkout => 'সেরা ওয়ার্কআউট';

  @override
  String get mergeExercise => 'একত্রীকরণ';

  @override
  String mergeExerciseInto(String name) {
    return '\"$name\" একত্রীকরণ করুন…';
  }

  @override
  String get mergeExerciseTitle => 'ব্যায়াম একত্রিত করবেন?';

  @override
  String mergeExerciseBody(String from, String to) {
    return '\"$from\"-এর সমস্ত ইতিহাস \"$to\"-তে যুক্ত হবে। \"$from\" লাইব্রেরিতেই থাকবে। এটি পূর্বাবস্থায় ফেরানো যাবে না।';
  }

  @override
  String get mergedToast => 'ইতিহাস একত্রিত হয়েছে';

  @override
  String get nutrition => 'পুষ্টি';

  @override
  String get nutritionHomeEmpty => 'পানি, প্রোটিন ও ক্যালোরি';

  @override
  String nutritionHomeDetail(String energy, int protein) {
    return '$energy · $protein গ্রাম প্রোটিন';
  }

  @override
  String get nutritionToday => 'আজ';

  @override
  String get nutritionYesterday => 'গতকাল';

  @override
  String get nutritionGoals => 'দৈনিক লক্ষ্য';

  @override
  String get kcalLabel => 'ক্যালোরি';

  @override
  String get kcalOver => 'অতিরিক্ত';

  @override
  String get waterLabel => 'পানি';

  @override
  String get waterDone => 'লক্ষ্য পূরণ হয়েছে';

  @override
  String get waterCustom => 'অন্যান্য পরিমাণ';

  @override
  String get glassSize => 'গ্লাসের আকার';

  @override
  String get supplementsLabel => 'সাপ্লিমেন্ট';

  @override
  String get supplementsEmpty => 'যোগ করতে ট্যাপ করুন, অথবা নিজেরটি তৈরি করতে + চাপুন।';

  @override
  String get addSupplement => 'নতুন সাপ্লিমেন্ট';

  @override
  String get supplementNameHint => 'ক্রিয়েটিন, ভিটামিন ডি…';

  @override
  String removeSupplementTitle(String name) {
    return '$name সরাবেন?';
  }

  @override
  String get removeSupplementBody => 'যে দিনগুলোতে এটি গ্রহণ করেছেন সেই লগগুলো মুছে যাবে।';

  @override
  String get suppCreatine => 'ক্রিয়েটিন';

  @override
  String get suppVitaminD => 'ভিটামিন ডি';

  @override
  String get suppOmega3 => 'ওমেগা-৩';

  @override
  String get suppMagnesium => 'ম্যাগনেসিয়াম';

  @override
  String get suppMultivitamin => 'মাল্টিভিটামিন';

  @override
  String get suppCaffeine => 'ক্যাফেইন';

  @override
  String get myFoods => 'আমার খাবার';

  @override
  String get newFood => 'নতুন খাবার';

  @override
  String get editFood => 'খাবার সম্পাদনা';

  @override
  String get foodNameHint => 'হুই প্রোটিন, ওটস, রুটি…';

  @override
  String get servingLabel => 'পরিবেশন';

  @override
  String get servingHint => '১ স্কুপ · ৩০ গ্রাম';

  @override
  String get perServing => 'প্রতি পরিবেশন';

  @override
  String get servingsLabel => 'পরিবেশন সংখ্যা';

  @override
  String get foodPhotoHint => 'সাদা ব্যাকগ্রাউন্ডে তুললে এটি স্টিকারে রূপ নেবে।';

  @override
  String get cutoutWorking => 'কাটআউট করা হচ্ছে…';

  @override
  String get cutoutTry => 'কাটআউট';

  @override
  String get cutoutKeep => 'সম্পূর্ণ ছবি';

  @override
  String deleteFoodTitle(String name) {
    return '$name মুছবেন?';
  }

  @override
  String get deleteFoodBody => 'এটি আপনার খাবার তালিকা থেকে সরবে। ইতিমধ্যেই যা লগ করেছেন তা থাকবে।';

  @override
  String get mealBreakfast => 'সকালের নাস্তা';

  @override
  String get mealLunch => 'দুপুরের খাবার';

  @override
  String get mealDinner => 'রাতের খাবার';

  @override
  String get mealSnacks => 'স্ন্যাক্স';

  @override
  String get nothingLogged => 'এখনও কিছু লগ করা হয়নি।';

  @override
  String addToMeal(String meal) {
    return '$meal-এ যোগ করুন';
  }

  @override
  String get quickAdd => 'দ্রুত যোগ';

  @override
  String get quickAddHint => 'খাবার সংরক্ষণ ছাড়া কেবল পুষ্টিমান যোগ।';

  @override
  String get quickAddName => 'এটি কী ছিল? (ঐচ্ছিক)';

  @override
  String get logFood => 'যোগ করুন';

  @override
  String loggedToast(String meal) {
    return '$meal-এ যোগ করা হয়েছে';
  }

  @override
  String get entryRemoved => 'মুছে ফেলা হয়েছে';

  @override
  String get goalsFromProfile => 'প্রোফাইল থেকে গণনা করুন';

  @override
  String get goalsFromProfileHint =>
      'প্রোফাইল অনুযায়ী ক্যালোরি, এবং কেজি প্রতি ১.৮ গ্রাম প্রোটিন ও ৩৫ মিলি পানি।';

  @override
  String get kcalEaten => 'গ্রহণকৃত';

  @override
  String get kcalRemaining => 'অবশিষ্ট';

  @override
  String waterTapHint(String amount) {
    return 'গ্লাসে ট্যাপ করুন: + $amount';
  }

  @override
  String get shakeEmpty => 'শেক বেছে নিতে ট্যাপ করুন';

  @override
  String shakeTapHint(String name) {
    return 'ট্যাপ করুন: + $name';
  }

  @override
  String get shakePick => 'আপনার শেক';

  @override
  String get shakePickHint => 'শেক স্পর্শ করলেই এক ক্লিকে লগ হয়ে যাবে।';

  @override
  String get proteinLetter => 'প্রো';

  @override
  String get carbsLetter => 'কা';

  @override
  String get fatLetter => 'চ';

  @override
  String get addBurnedLabel => 'বার্ন করা ক্যালোরি যোগ করুন';

  @override
  String get addBurnedHint =>
      'আপনার লক্ষ্য ইতিমধ্যেই আপনার স্বাভাবিক দৈনন্দিন পরিশ্রমকে গণ্য করে। কেবল নিষ্ক্রিয় জীবনযাপন বেছে নিলে এটি চালু করুন: এটি বিশ্রামের ক্যালোরির সাথে প্রতিটি ওয়ার্কআউটের বার্ন যোগ করে।';

  @override
  String get amountLabel => 'পরিমাণ';

  @override
  String amountIn(String unit) {
    return 'পরিমাণ ($unit)';
  }

  @override
  String get bodyweightLabel => 'শারীরিক ওজন';

  @override
  String copiedMealToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি খাবার কপি হয়েছে',
      one: '১টি খাবার কপি হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String get deleteSavedMealBody => 'ইতিমধ্যেই লগ করা খাবারে কোনো পরিবর্তন হবে না।';

  @override
  String get fiberLabel => 'ফাইবার';

  @override
  String get sugarLabel => 'চিনি';

  @override
  String get sodiumLabel => 'সোডিয়াম';

  @override
  String get foodDatabase => 'খাদ্য ডেটাবেস';

  @override
  String get kcalBurned => 'বার্নকৃত';

  @override
  String get mealOptions => 'খাবারের বিকল্প';

  @override
  String get moreNutrients => 'ফাইবার, চিনি ও সোডিয়াম';

  @override
  String ofGoal(int goal, String unit) {
    return '$goal $unit-এর মধ্যে';
  }

  @override
  String per100(String unit) {
    return 'প্রতি ১০০ $unit';
  }

  @override
  String get perServingShort => 'প্রতি পরিবেশন';

  @override
  String portionUnit(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count পিস', one: '১ পিস');
    return '$_temp0';
  }

  @override
  String portionSlice(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count টুকরা', one: '১ টুকরা');
    return '$_temp0';
  }

  @override
  String portionScoop(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count স্কুপ', one: '১ স্কুপ');
    return '$_temp0';
  }

  @override
  String portionTbsp(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count টেবিল চামচ',
      one: '১ টেবিল চামচ',
    );
    return '$_temp0';
  }

  @override
  String portionTsp(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count চা চামচ',
      one: '১ চা চামচ',
    );
    return '$_temp0';
  }

  @override
  String portionCup(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count কাপ', one: '১ কাপ');
    return '$_temp0';
  }

  @override
  String portionGlass(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count গ্লাস', one: '১ গ্লাস');
    return '$_temp0';
  }

  @override
  String get recentFoods => 'সাম্প্রতিক';

  @override
  String recipeItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি উপাদান',
      one: '১টি উপাদান',
    );
    return '$_temp0';
  }

  @override
  String get renameLabel => 'নাম পরিবর্তন';

  @override
  String get repeatFrom => 'পুনরাবৃত্তি করুন';

  @override
  String get repeatNone => 'অন্যান্য দিনে এই খাবারের কোনো লগ নেই।';

  @override
  String get restDayGoals => 'বিশ্রামের দিনে ভিন্ন লক্ষ্য';

  @override
  String get trainingDays => 'প্রশিক্ষণের দিনসমূহ';

  @override
  String get restDays => 'বিশ্রামের দিন';

  @override
  String get trainingDay => 'প্রশিক্ষণের দিন';

  @override
  String get saveAsMeal => 'খাবার হিসেবে সংরক্ষণ';

  @override
  String get savedMealNameHint => 'যেমন: সকালের নিয়মিত নাস্তা';

  @override
  String get savedMealToast => 'খাবার সংরক্ষিত হয়েছে';

  @override
  String get savedMeals => 'সংরক্ষিত খাবার';

  @override
  String get searchFoodsHint => 'খাবার খুঁজুন';

  @override
  String get searchFoodsEmpty => 'ছবির সাথে ৫০০+ খাবার খুঁজুন, অথবা নিজেরটি তৈরি করুন।';

  @override
  String searchFoodsNone(String query) {
    return '\"$query\"-এর জন্য কিছু মেলেনি। এটি নিজস্ব খাবার হিসেবে তৈরি করুন।';
  }

  @override
  String get servingWeight => 'গ্রাম';

  @override
  String get weekAverage => 'এই সপ্তাহ';

  @override
  String get weekAvgEnergy => 'দৈনিক গড়';

  @override
  String get weekAvgProtein => 'দৈনিক প্রোটিন';

  @override
  String get weekEnergyOnTarget => 'লক্ষ্য অনুযায়ী ক্যালোরি';

  @override
  String get weekProteinOnTarget => 'লক্ষ্য অনুযায়ী প্রোটিন';

  @override
  String weekProteinAvg(int grams) {
    return 'দৈনিক $grams গ্রাম প্রোটিন';
  }

  @override
  String weekDaysOnTarget(int met, int days) {
    return '$days দিনের মধ্যে $met দিন লক্ষ্য পূরণ';
  }

  @override
  String weekLoggedDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন লগ হয়েছে',
      one: '১ দিন লগ হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String get weekNoData => 'এখনও কিছু লগ করা হয়নি';

  @override
  String get weekOnTargetHint => 'লক্ষ্যে পৌঁছানো: ক্যালোরি ১০%-এর মধ্যে এবং প্রোটিন কমপক্ষে ৯০%।';

  @override
  String get weightGoalLabel => 'লক্ষ্য ওজন';

  @override
  String weightGoalTitle(String unit) {
    return 'লক্ষ্য ওজন ($unit)';
  }

  @override
  String weightGoalLine(String weight) {
    return 'লক্ষ্য $weight';
  }

  @override
  String get weightGoalNone => 'লক্ষ্য সেট করতে চেপে ধরুন';

  @override
  String get weightGoalReached => 'লক্ষ্য পূরণ হয়েছে';

  @override
  String weightToLose(String weight) {
    return '$weight কমাতে হবে';
  }

  @override
  String weightToGain(String weight) {
    return '$weight বাড়াতে হবে';
  }

  @override
  String get aminoHis => 'হিস্টিডিন';

  @override
  String get aminoIle => 'আইসোলিউসিন';

  @override
  String get aminoLeu => 'লিউসিন';

  @override
  String get aminoLys => 'লাইসিন';

  @override
  String get aminoSaa => 'মেথিওনিন';

  @override
  String get aminoAaa => 'ফেনিল্যালানিন';

  @override
  String get aminoThr => 'থ্রিওনিন';

  @override
  String get aminoTrp => 'ট্রিপ্টোফ্যান';

  @override
  String get aminoVal => 'ভ্যালিন';

  @override
  String get animalProtein => 'প্রাণিজ প্রোটিন';

  @override
  String get proteinQuality => 'প্রোটিনের গুণমান';

  @override
  String get qualityComplete => 'সম্পূর্ণ';

  @override
  String get qualityAlmost => 'প্রায় সম্পূর্ণ';

  @override
  String get qualityIncomplete => 'অসম্পূর্ণ';

  @override
  String get qualityNoData => 'কোনো ডেটা নেই';

  @override
  String get qualityNoDataHint => 'অ্যামিনো অ্যাসিড দেখতে ডেটাবেস থেকে খাবার লগ করুন।';

  @override
  String get qualityAllCovered => 'সবকটি নয়টি প্রয়োজনীয় অ্যামিনো অ্যাসিড বিদ্যমান।';

  @override
  String qualityLimiting(String amino) {
    return '$amino-এর ঘাটতি রয়েছে। এটি সমৃদ্ধ খাবারের সাথে গ্রহণ করুন।';
  }

  @override
  String qualityCoverage(int pct) {
    return '$pct% প্রোটিনের উপর ভিত্তি করে: আপনার নিজস্ব খাবারে অ্যামিনো অ্যাসিডের ডেটা নেই।';
  }

  @override
  String get fatTypes => 'চর্বির প্রকারভেদ';

  @override
  String get fatSaturated => 'স্যাচুরেটেড';

  @override
  String get fatMono => 'মনো';

  @override
  String get fatPoly => 'পলি';

  @override
  String satLimitLine(String grams, int limit) {
    return 'স্যাচুরেটেড $grams গ্রাম (সর্বোচ্চ $limit গ্রাম, মোট ক্যালোরির ১০%)';
  }

  @override
  String get sugarSodium => 'চিনি ও সোডিয়াম';

  @override
  String get shakeCard => 'প্রোটিন শেক';

  @override
  String get mealOther => 'খাবার';

  @override
  String get mealAdd => 'খাবার যোগ করুন';

  @override
  String get mealAddHint => 'যেমন: প্রি-ওয়ার্কআউট';

  @override
  String get mealsOfDay => 'দিনের খাবারসমূহ';

  @override
  String get mealsHint => 'যত ইচ্ছা তৈরি করুন। একটি মুছলে তার ভেতরের লগ উপরেরটিতে চলে যাবে।';

  @override
  String get trackersTitle => 'কাস্টমাইজ';

  @override
  String get trackersHint => 'যা ট্র্যাক করতে চান কেবল তা-ই দেখান।';

  @override
  String get trackersDaily => 'দৈনিক সারাংশ';

  @override
  String get trackersDetail => 'বিস্তারিত';

  @override
  String get trackersCards => 'কার্ড';

  @override
  String get prepTitle => 'মিল প্রেপ';

  @override
  String get prepNewShort => 'নতুন ব্যাচ';

  @override
  String get prepNew => 'নতুন ব্যাচ';

  @override
  String get prepEdit => 'ব্যাচ সম্পাদনা';

  @override
  String get prepHint => 'পুরো রান্নার উপাদান একবার লগ করুন, তারপর প্রয়োজনমতো অংশ খান।';

  @override
  String get prepEmpty => 'একসাথে অনেক রান্না করেছেন? একবার লগ করুন এবং অবশিষ্ট অংশের কতটুকু খেলেন তা দিন।';

  @override
  String get prepNameHint => 'যেমন: চিকেন ও রাইস';

  @override
  String get prepDefaultName => 'ব্যাচ';

  @override
  String get prepIngredients => 'উপাদানসমূহ';

  @override
  String get prepAddIngredient => 'উপাদান যোগ করুন';

  @override
  String get prepCookedWeight => 'রান্না করা ওজন';

  @override
  String prepCookedHint(String grams) {
    return 'সঠিক পরিমাপের জন্য রান্নার পর পুরো পাত্র ওজন করুন। খালি রাখলে কাঁচা মোট ওজন ($grams গ্রাম) ব্যবহার হবে।';
  }

  @override
  String get prepNeedWeight => 'রান্না করা ওজন দিন: কিছু উপাদানের গ্রাম নেই।';

  @override
  String prepLeftOf(String left, String total) {
    return '$total-এর মধ্যে $left অবশিষ্ট';
  }

  @override
  String get prepOfWhatsLeft => 'অবশিষ্ট অংশের %';

  @override
  String get prepAll => 'সব';

  @override
  String prepLogAmount(String grams) {
    return '$grams গ্রাম লগ করুন';
  }

  @override
  String get prepWeighLeft => 'অবশিষ্ট ওজন মাপুন';

  @override
  String get prepFinished => 'এই ব্যাচ শেষ হয়েছে।';

  @override
  String get approxValues => 'আনুমানিক';

  @override
  String get editValues => 'মান সম্পাদনা';

  @override
  String get editValuesHint =>
      'শুধুমাত্র এই লগের জন্য পরিবর্তন হবে। স্থায়ী করতে \'আমার খাবার\' থেকে সম্পাদন করুন।';

  @override
  String get editLibraryHint => 'একই ছবিসহ নিজের খাবার হিসেবে সংরক্ষিত';

  @override
  String per100Line(String energy, String unit) {
    return 'প্রতি ১০০ $unit-এ $energy';
  }

  @override
  String get rawLabel => 'কাঁচা';

  @override
  String get cookedLabel => 'রান্না করা';

  @override
  String get rawHint => 'রান্নার আগের ওজন';

  @override
  String cookedHint(String factor) {
    return 'রান্না করার পরের ওজন (কাঁচা ওজনের ×$factor)';
  }

  @override
  String get servingsUnit => 'পরিবেশন';

  @override
  String logAmount(String energy) {
    return 'লগ · $energy';
  }

  @override
  String get catFruit => 'ফলমূল';

  @override
  String get catVeg => 'শাকসবজি';

  @override
  String get catMeat => 'মাংস';

  @override
  String get catFish => 'মাছ';

  @override
  String get catEgg => 'ডিম';

  @override
  String get catDairy => 'দুগ্ধজাত';

  @override
  String get catGrain => 'শস্যদানা';

  @override
  String get catBakery => 'বেকারি';

  @override
  String get catLegume => 'ডাল ও শিম';

  @override
  String get catNut => 'বাদাম';

  @override
  String get catOil => 'তেল';

  @override
  String get catPantry => 'প্যান্ট্রি';

  @override
  String get catDrink => 'পানীয়';

  @override
  String get catSauce => 'সস';

  @override
  String get catSpice => 'মশলা';

  @override
  String get searchFoodsPrompt => 'আপনি কী খেয়েছেন?';

  @override
  String get shelfEmpty => 'খাবার খুঁজুন বা ছবি তুলুন: সর্বাধিক লগ করা খাবার এখানে দেখাবে।';

  @override
  String get repeatEntry => 'পুনরায় লগ করুন';

  @override
  String get notifSuppChannel => 'সাপ্লিমেন্ট';

  @override
  String get notifSuppChannelWhy => 'সাপ্লিমেন্ট নেওয়ার দৈনিক অনুস্মারক';

  @override
  String get energySplit => 'ক্যালোরির উৎস';

  @override
  String get typicalServing => 'স্বাভাবিক পরিবেশন';

  @override
  String cookedYieldLine(String factor) {
    return 'কাঁচা ওজনের তুলনায় $factor× ওজন';
  }

  @override
  String get readyDishes => 'Dishes';

  @override
  String weightLastLine(String weight) {
    return 'Last weigh-in $weight';
  }

  @override
  String get proteinAnimalShort => 'Animal';

  @override
  String get proteinPlantShort => 'Plant';

  @override
  String kcalFromMacros(String value) {
    return 'These macros add up to about $value';
  }

  @override
  String get useValue => 'Use';

  @override
  String get suppRowHint => 'Tap to mark · hold for details';

  @override
  String get suppPhoto => 'Photo';

  @override
  String get suppDose => 'Dose';

  @override
  String get suppDoseHint => '5 g, 2 capsules…';

  @override
  String get suppRemind => 'Remind me';

  @override
  String mealPlanDefault(int n) {
    return 'Plan $n';
  }

  @override
  String get mealPlansTitle => 'Meal plans';

  @override
  String get mealPlanNew => 'New plan';

  @override
  String fromPlan(String name) {
    return 'From $name';
  }

  @override
  String get logPlan => 'Log';

  @override
  String get planFromDay => 'Copy this day';

  @override
  String get planNewHint => 'Plan your days like your routines, then log a whole meal with one tap.';

  @override
  String get planLogDay => 'Log the empty meals';

  @override
  String planLogged(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n foods logged',
      one: '1 food logged',
    );
    return '$_temp0';
  }

  @override
  String get planNoPlan => 'No plan';

  @override
  String get planWeekHint => 'Tap a day to give it a plan.';

  @override
  String get planDuplicate => 'Duplicate';

  @override
  String planDeleteTitle(String name) {
    return 'Delete $name?';
  }

  @override
  String get planDeleteBody => 'Your logged days stay as they are.';

  @override
  String get sectionBeta => 'বেটা';

  @override
  String get nutritionBeta => 'পুষ্টি (Nutrition)';

  @override
  String get nutritionBetaHint =>
      'খাবার, পানি, প্রোটিন ও সাপ্লিমেন্ট। এটি বন্ধ রাখলেও আপনার ডেটা সংরক্ষিত থাকবে।';

  @override
  String get nutritionAboutTitle => 'পুষ্টি সম্পর্কে';

  @override
  String get nutritionAboutSub => 'এটি কী এবং এটি কখনো কী হবে না।';

  @override
  String get nutritionAboutWhatTitle => 'আপনার প্রশিক্ষণের অংশ';

  @override
  String get nutritionAboutWhat =>
      'আপনার ওয়ার্কআউটের পাশাপাশি খাবার, পানি, প্রোটিন ও সাপ্লিমেন্ট লগের সহজ উপায়। Open-GYM মূলত জিম অ্যাপ: নিউট্রিশন যুক্ত করা হয়েছে যাতে সবকিছু এক জায়গায় থাকে, কোনো আলাদা ডায়েট অ্যাপের বিকল্প হিসেবে নয়।';

  @override
  String get nutritionAboutScanTitle => 'স্ক্যানার কখনোই থাকবে না';

  @override
  String get nutritionAboutScan =>
      'বারকোড স্ক্যান করে সব তথ্য নিজে থেকে পূরণ হওয়া সুবিধাজনক মনে হতে পারে। তবে এর জন্য ইন্টারনেট ও বিশাল অনলাইন ফুড ডেটাবেস প্রয়োজন, যার ফলে আপনার খাদ্যাভ্যাস অন্যের সার্ভারে চলে যায়। সেই তথ্যে থাকে আপনি কখন খান, কী খান এবং শরীরের যত্ন কীভাবে নেন—যা বিজ্ঞাপন বা বড় কোম্পানির কাছে পৌঁছাতে পারে। তাই কোনো স্ক্যানার নেই এবং কখনো থাকবেও না।';

  @override
  String get nutritionAboutLocalTitle => 'সবকিছু আপনার ফোনেই সংরক্ষিত';

  @override
  String get nutritionAboutLocal =>
      'অ্যাপের ভেতর ৫০০টির বেশি ছবির সাথে খাবার দেওয়া আছে। আপনি নিজের খাবার যুক্ত করতে, ছবি বদলাতে এবং পুষ্টিমান সম্পাদনা করতে পারেন। সবকিছু ফোনেই থাকে।';

  @override
  String get nutritionAboutBetaTitle => 'এখনও বেটা সংস্করণে রয়েছে';

  @override
  String get nutritionAboutBeta =>
      'কিছু যোগ করতে চাইলে GitHub-এ পরামর্শ দিন। স্ক্যানিং বা বিশাল অনলাইন ডেটাবেস যুক্ত করা হবে না। নিউট্রিশন না চাইলে সেটিংসে বন্ধ রাখুন।';

  @override
  String get nutritionAboutSuggest => 'পরামর্শ দিন';

  @override
  String get nutritionAboutOk => 'বুঝেছি';

  @override
  String get planShare => 'Share';

  @override
  String get planImport => 'Import a plan';

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
  String get planImportNone => 'That file has no meal plans.';

  @override
  String get planMoveUp => 'Move up';

  @override
  String get planMoveDown => 'Move down';

  @override
  String get cutoutEdit => 'Touch up cutout';

  @override
  String get cutoutEditHint =>
      'Drag to erase or restore. Tap an area to remove or bring it back whole. Pinch to zoom.';

  @override
  String get cutoutErase => 'Erase';

  @override
  String get cutoutRestore => 'Restore';

  @override
  String get cutoutReset => 'Back to automatic';

  @override
  String get cutoutByHand => 'Cut out by hand';

  @override
  String notifSuppTitleFor(String names) {
    return 'Time to take: $names';
  }

  @override
  String get notifSuppTap => 'Tick it off in GymMane once you\'ve taken it.';

  @override
  String get suppNoneToday => 'Nothing to take today.';

  @override
  String get suppOtherDays => 'Other days';

  @override
  String suppEveryN(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'Every $n days', one: 'Every day');
    return '$_temp0';
  }

  @override
  String get suppDaily => 'Every day';

  @override
  String suppFromDate(String date) {
    return 'from $date';
  }

  @override
  String suppUntilDate(String date) {
    return 'until $date';
  }

  @override
  String get suppSomeDays => 'Some days';

  @override
  String get suppEveryShort => 'Every X days';

  @override
  String get suppWhen => 'When';

  @override
  String get suppEveryLead => 'Every';

  @override
  String suppEveryTail(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'days', one: 'day');
    return '$_temp0';
  }

  @override
  String get suppStarts => 'Starts';

  @override
  String get suppEnds => 'Ends';

  @override
  String get suppTomorrow => 'Tomorrow';

  @override
  String get suppPickDate => 'Pick a date';

  @override
  String get suppNever => 'Never';

  @override
  String get suppOneWeek => 'In 1 week';

  @override
  String get suppOneMonth => 'In 1 month';

  @override
  String get planPickHint => 'Pick the plan for this day, or make a new one.';

  @override
  String planSetForDay(String day) {
    return 'Plan set for $day';
  }

  @override
  String get planSaved => 'Plan saved';

  @override
  String get planDiscardTitle => 'Discard changes?';

  @override
  String get planDiscardBody => 'What you changed won\'t be saved.';

  @override
  String get planDiscard => 'Discard';

  @override
  String get planEdit => 'Edit plan';

  @override
  String get planNameHint => 'Plan name';

  @override
  String get planDaysQuestion => 'Which days?';

  @override
  String get planDaysHint => 'On those days it shows up in Nutrition so you can log it in one tap.';

  @override
  String get planDaysNone => 'Pick at least one day, or it won\'t show up anywhere.';

  @override
  String get planNothingToLog => 'Those meals are already logged';

  @override
  String get planSave => 'Save plan';

  @override
  String get planToday => 'Today\'s plan';

  @override
  String get planLogRest => 'Log the rest';

  @override
  String get dishNew => 'Create my dish';

  @override
  String get dishNewHint => 'Pick ingredients and amounts, save it and log it in one tap.';

  @override
  String get dishEdit => 'Edit dish';

  @override
  String get dishNameHint => 'E.g. Mum\'s lentils';

  @override
  String get dishIngredients => 'Ingredients';

  @override
  String get dishEmptyHint => 'Add what goes in it with the amount you usually eat.';

  @override
  String get dishSave => 'Save dish';

  @override
  String get dishNeedsName => 'Give it a name';

  @override
  String get dishNeedsItems => 'Add at least one ingredient';

  @override
  String get suppHistory => 'Last 14 days';

  @override
  String suppTakenOf(int n, int total) {
    return '$n of $total taken';
  }

  @override
  String get suppNoReminder => 'No reminder';

  @override
  String get suppMarkTaken => 'Mark as taken';

  @override
  String get suppUnmark => 'Unmark';

  @override
  String get suppEdit => 'Edit';

  @override
  String get mealMoveTo => 'Move to';

  @override
  String get mealClear => 'Clear meal';

  @override
  String get mealCleared => 'Meal cleared';

  @override
  String movedMealToast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count foods moved',
      one: '1 food moved',
    );
    return '$_temp0';
  }

  @override
  String get repeatWholeDay => 'Repeat the whole day';

  @override
  String createFoodNamed(String name) {
    return 'Create “$name”';
  }

  @override
  String get entryDay => 'Day';

  @override
  String get movedToDay => 'Moved';

  @override
  String get favFoodsHint => 'Tap ☆ on a food';

  @override
  String get favFoodsEmpty => 'Tap the star on any food to keep it here, one tap away.';

  @override
  String savedMealsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count meals', one: '1 meal');
    return '$_temp0';
  }

  @override
  String get savedMealsEmpty => 'Save a meal from its ••• menu, or build your own dish.';

  @override
  String get sugarLimitLabel => 'Sugar limit';

  @override
  String get sodiumLimitLabel => 'Sodium limit';

  @override
  String get waterOptions => 'Water options';

  @override
  String get waterNone => 'No water logged yet.';

  @override
  String get waterDailyGoal => 'Daily water';

  @override
  String get trackersScreen => 'Screen';

  @override
  String get vesselMotion => 'Moving water and shake';

  @override
  String get vesselMotionHint =>
      'Turn it off if the screen feels slow: the glasses still fill up, they just stop moving.';
}
