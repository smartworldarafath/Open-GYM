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
  String get miniRest => 'রেস্ট-পজ ও ক্লাস্টার রেস্ট';

  @override
  String get miniRestHint => 'রেস্ট-পজ বা ক্লাস্টার সেটের আগে';

  @override
  String get gymPass => 'জিম পাস';

  @override
  String get gymPassEmpty => 'আপনার জিমের কোড এখানে রাখুন এবং কার্ড ছাড়াই প্রবেশ করুন';

  @override
  String get gymPassAdd => 'পাস যোগ করুন';

  @override
  String get gymPassScan => 'কোডের ছবি তুলুন';

  @override
  String get gymPassScanHint => 'আপনার ফোনের ক্যামেরা দিয়ে';

  @override
  String get gymPassPhoto => 'ছবি বা স্ক্রিনশট থেকে';

  @override
  String get gymPassPhotoHint => 'যেমন: আপনার জিম অ্যাপের স্ক্রিনশট';

  @override
  String get gymPassType => 'নম্বর লিখুন';

  @override
  String get gymPassTypeHint => 'বারকোডের নিচে মুদ্রিত নম্বরটি';

  @override
  String get gymPassNotFound => 'ছবিতে কোনো কোড পাওয়া যায়নি। স্পষ্ট ছবি তুলুন অথবা নম্বর লিখুন।';

  @override
  String get gymPassName => 'জিমের নাম';

  @override
  String get gymPassDefaultName => 'আমার জিম';

  @override
  String get gymPassCode => 'Code';

  @override
  String get gymPassFormat => 'কোডের ধরন';

  @override
  String get gymPassInvalid => 'এই নম্বরটি এই কোড ধরনের সাথে মেলে না';

  @override
  String get gymPassShowHint => 'স্ক্যানারের সামনে ধরুন। উজ্জ্বলতা নিজে থেকেই বৃদ্ধি পাবে।';

  @override
  String get gymPassDeleted => 'পাস মুছে ফেলা হয়েছে';

  @override
  String get gymPassEdit => 'পাস সম্পাদনা করুন';

  @override
  String get gymPassShow => 'দরজায় দেখান';

  @override
  String get gymPassPrivate => 'শুধুমাত্র আপনার ফোনে সংরক্ষিত থাকবে। কোনো তথ্য আপলোড হবে না।';

  @override
  String get gymPassColor => 'রং';

  @override
  String get gymPassRescan => 'কোড পুনরায় স্ক্যান করুন';

  @override
  String get gymPassReading => 'কোড পড়া হচ্ছে…';

  @override
  String get gymPassSettingHint => 'আপনার প্রোফাইলে জিম কার্ড';

  @override
  String get gymPassMember => 'সদস্য';

  @override
  String get widgetHintActivity => 'আপনার অনুশীলনের দিনের মানচিত্র';

  @override
  String get widgetHintStats => 'এই সপ্তাহের স্ট্রিক, ভলিউম এবং সেশন';

  @override
  String get widgetHintBody => 'যেসব পেশীতে আপনি কাজ করেছেন';

  @override
  String get widgetHintToday => 'আজকের দিনে আপনি কি ব্যায়াম করেছেন?';

  @override
  String get widgetHintWeek => 'দিন অনুযায়ী আপনার পুরো সপ্তাহের পরিকল্পনা';

  @override
  String get supportHintBug => 'কী সমস্যা হয়েছে GitHub-এ জানান';

  @override
  String get supportHintFeature => 'অ্যাপের জন্য নতুন আইডিয়া প্রস্তাব করুন';

  @override
  String get supportHintStar => 'অন্যান্য ব্যবহারকারীদের অ্যাপটি খুঁজে পেতে সাহায্য করে';

  @override
  String get supportHintCoffee => 'উন্নয়নে সহায়তা করুন। সম্পূর্ণ ফ্রি এবং বিজ্ঞাপনহীন';

  @override
  String get bodyweightNoteHint => 'নোট যোগ করুন: কেমন লাগছে, কী চেষ্টা করছেন… (ঐচ্ছিক)';

  @override
  String exerciseUnitSwitch(String unit) {
    return 'এই অনুশীলনের জন্য $unit ব্যবহার করুন';
  }

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
  String get quickAddAmount => 'কতটুকু নিয়েছিলেন';

  @override
  String get homeCardsTitle => 'Home cards';

  @override
  String get homeCardsHint => 'What you switch on shows up in Home';

  @override
  String get homeCardFocus => 'Today';

  @override
  String get homeCardSteps => 'Steps';

  @override
  String get homeCardWeek => 'This week';

  @override
  String get homeCardRoutines => 'Routines';

  @override
  String get homeCardRecommended => 'Suggested';

  @override
  String get textSizeSetting => 'Text size';

  @override
  String get textSizeSmall => 'Small';

  @override
  String get textSizeNormal => 'Normal';

  @override
  String get textSizeLarge => 'Large';

  @override
  String get textSizeHint => 'On top of your phone\'s text size';

  @override
  String get calmMotionSetting => 'Reduce motion';

  @override
  String get calmMotionHint => 'Screens appear without sliding in';

  @override
  String get dishArchive => 'Archive';

  @override
  String get dishUnarchive => 'Restore';

  @override
  String get dishArchivedToast => 'Dish archived';

  @override
  String get filterShowLabel => 'Show';

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
  String get hidePhotos => 'Hide photos';

  @override
  String get showPhotos => 'Show photos';

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
  String get onbUnitsWhy => 'For weights, measurements and distances. You can change it anytime in Settings.';

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
  String get eachSide => 'Each side';

  @override
  String get eachSideHint => 'The timer runs once per side and the rest starts after both.';

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
  String get tplArnold => 'Chest and back, shoulders and arms, legs. The classic six-day split.';

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
  String get supersetUnlink => 'Unchain from the next one';

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
  String get timePerSideCol => 'TIME / SIDE';

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
  String get tapToChange => 'Tap to change';

  @override
  String get swipeToSkipHint => 'Swipe the timer sideways to skip the rest.';

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
  String sideOfTwo(String n) {
    return 'Side $n of 2';
  }

  @override
  String get switchSides => 'Switch sides';

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
  String get nutrition => 'পুষ্টি ও ডায়েট';

  @override
  String get nutritionHomeEmpty => 'আজকের খাবার ও পানি ট্র্যাক করুন';

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
  String get foodCategory => 'CATEGORY';

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
      'আপনার ওয়ার্কআউটের পাশাপাশি খাবার, পানি, প্রোটিন ও সাপ্লিমেন্ট ট্র্যাক করার সহজ উপায়। Open-GYM মূলত একটি জিম অ্যাপ: সবকিছু এক জায়গায় রাখার সুবিধার্থে পুষ্টি ফিচারটি দেওয়া হয়েছে।';

  @override
  String get nutritionAboutScanTitle => 'স্ক্যানার কখনোই থাকবে না';

  @override
  String get nutritionAboutScan =>
      'বারকোড স্ক্যান করে সব তথ্য নিজে থেকে পূরণ হওয়া সুবিধাজনক মনে হতে পারে। তবে এর জন্য ইন্টারনেট ও বিশাল অনলাইন ফুড ডেটাবেস প্রয়োজন, যার ফলে আপনার খাদ্যাভ্যাস অন্যের সার্ভারে চলে যায়। সেই তথ্যে থাকে আপনি কখন খান, কী খান এবং শরীরের যত্ন কীভাবে নেন—যা বিজ্ঞাপন বা বড় কোম্পানির কাছে পৌঁছাতে পারে। তাই কোনো স্ক্যানার নেই এবং কখনো থাকবেও না।';

  @override
  String get nutritionAboutLocalTitle => 'সবকিছু আপনার ফোনেই সংরক্ষিত';

  @override
  String get nutritionAboutLocal =>
      'অ্যাপটিতে ৫০০টিরও বেশি খাবারের পুষ্টিমান দেওয়া আছে। আপনি নিজের খাবার যোগ করতে, ছবি পরিবর্তন করতে এবং মান সম্পাদনা করতে পারবেন। বাকি Open-GYM-এর মতোই সবকিছু আপনার ফোনেই সংরক্ষিত থাকে।';

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
  String get notifSuppTap => 'নেওয়ার পর Open-GYM-এ সম্পন্ন হিসেবে চিহ্নিত করুন।';

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

  @override
  String get planFixedWeek => 'Fixed week';

  @override
  String get planRotation => 'Rotation';

  @override
  String get rotationTitle => 'ROTATION';

  @override
  String get rotationHint => 'Next up is whatever follows your last workout, whatever the day.';

  @override
  String get rotationEmpty => 'Add your routines in the order you’ll do them: A, B, C…';

  @override
  String rotationProgress(int done, int total) {
    return '$done of $total done this round';
  }

  @override
  String get rotationNext => 'Next';

  @override
  String get rotationAdd => 'Add routines';

  @override
  String get rotationPickHint => 'They go in the order you tap them.';

  @override
  String get rotationSkip => 'Skip to the next one';

  @override
  String get rotationRestart => 'Start a new round';

  @override
  String get rotationMakeNext => 'Make it the next one';

  @override
  String get rotationRemove => 'Remove from rotation';

  @override
  String rotationPlace(int n, int total) {
    return '$n of $total in the rotation';
  }

  @override
  String get moveToDay => 'Move to another day';

  @override
  String get moveToDayHint => 'Just this once; your weekly plan stays the same.';

  @override
  String get movedToast => 'Workout moved';

  @override
  String get backToPlan => 'Back to the weekly plan';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get untrainedTab => 'Untrained';

  @override
  String get untrainedRecent => 'Recent';

  @override
  String get untrainedLong => 'Long ago';

  @override
  String untrainedWaiting(String list) {
    return 'Waiting the longest: $list';
  }

  @override
  String get untrainedAllRecent => 'Every muscle got work this week. Nice.';

  @override
  String trainedAgo(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n days ago',
      one: 'Trained yesterday',
      zero: 'Trained today',
    );
    return '$_temp0';
  }

  @override
  String get neverTrained => 'Not trained yet';

  @override
  String get layoutSetting => 'Workout layout';

  @override
  String get layoutCards => 'Cards';

  @override
  String get layoutList => 'List';

  @override
  String get layoutHint =>
      'Cards show one exercise at a time. List shows the whole workout on one screen, set by set.';

  @override
  String get layoutRowHint => 'One exercise at a time, or the whole workout as a list';

  @override
  String get previousCol => 'PREVIOUS';

  @override
  String get usePrevious => 'Use last time’s numbers';

  @override
  String get skipShort => 'Skip';

  @override
  String get moveUp => 'Move up';

  @override
  String get moveDown => 'Move down';

  @override
  String get widgetNutritionOff => 'Turn on Nutrition in Settings › Beta to use this widget.';

  @override
  String get widgetPickShake => 'Pick your shake';

  @override
  String get heatRangeSetting => 'Activity calendar';

  @override
  String get heatRangeWeeks => '12 weeks';

  @override
  String get heatRangeYear => '12 months';

  @override
  String get heatRangeHint =>
      '12 months shows the whole year. Swipe it sideways to go back, all the way to your first workout.';

  @override
  String get pdfPlan => 'Plan as PDF';

  @override
  String get pdfPlanHint => 'A clean sheet with your week and every routine, ready to print or send.';

  @override
  String get pdfExport => 'Export as PDF';

  @override
  String get pdfFooter => 'Free, open source and offline';

  @override
  String get shakeTag => 'It’s a shake';

  @override
  String get shakeTagHint => 'It shows up in Your shake';

  @override
  String get shakeNone => 'Mark your shakes and only those show up here.';

  @override
  String get shakeMarkLabel => 'MARK AS A SHAKE';

  @override
  String get shakeNew => 'New shake';

  @override
  String get shakeUntag => 'Not a shake';

  @override
  String get pdfKicker => 'TRAINING PLAN';

  @override
  String get pdfStatDays => 'DAYS / WEEK';

  @override
  String get pdfStatMinutes => 'MIN / WORKOUT';

  @override
  String pdfMinutes(int n) {
    return '≈ $n min';
  }

  @override
  String get workoutNotesTitle => 'Exercise notes';

  @override
  String get workoutNoteEvery => 'Every time';

  @override
  String get workoutNoteNext => 'Next time';

  @override
  String get workoutNoteEveryHint =>
      'Shows each time you do this exercise. Good for seat or pulley settings.';

  @override
  String get workoutNoteNextHint => 'Shows the next time only, then goes away.';

  @override
  String workoutNoteFromLast(String date) {
    return 'From last time · $date';
  }

  @override
  String get workoutNoteHint => 'Seat in hole 2, pulley at 19…';

  @override
  String get notePinWorkout => 'Show during workouts';

  @override
  String get assistedSetting => 'Assisted machine';

  @override
  String get assistedSettingHint =>
      'The weight helps you, so less is better: your records and suggestions go down.';

  @override
  String get assistedRecordHint => 'Least assistance';

  @override
  String get trainAgainLabel => 'Haven’t trained yet? Remind me again';

  @override
  String get trainAgainOff => 'No';

  @override
  String trainAgainAfter(int n) {
    return '+$n h';
  }

  @override
  String get trainAgainHint => 'Just once, and only if you haven’t logged a workout that day.';

  @override
  String get notifTrainAgainBody => 'There’s still time to train today.';

  @override
  String nextDeload(int n) {
    return 'lighter: $n workouts in a row without every rep';
  }

  @override
  String get historyTitle => 'History';

  @override
  String historyWorkouts(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n WORKOUTS', one: '1 WORKOUT');
    return '$_temp0';
  }

  @override
  String get historyEmpty => 'No workouts this month';

  @override
  String get historyEmptyHint => 'Swipe sideways or use the arrows to see other months.';

  @override
  String historyMore(int n) {
    return '+$n more';
  }

  @override
  String get stopwatch => 'Stopwatch';

  @override
  String get proteinSource => 'Protein source';

  @override
  String get proteinMixedShort => 'Mixed';

  @override
  String get kcalActive => 'active';

  @override
  String get kcalEstimated => 'estimated';

  @override
  String get kcalYours => 'your value';

  @override
  String kcalTotalRest(String value) {
    return '$value in total, counting what you burn at rest';
  }

  @override
  String get inclineLabel => 'Incline';

  @override
  String get kcalUseOwn => 'Use my value';

  @override
  String get kcalBackToEstimate => 'Back to the estimate';

  @override
  String get kcalNeedsData => 'Add distance and time to estimate the calories';

  @override
  String get kcalHowEstimated => 'Estimated from distance, time, incline and your weight (ACSM formula).';

  @override
  String get kcalOwnTitle => 'Active calories';

  @override
  String get planMine => 'My plan';

  @override
  String get planNew => 'New plan';

  @override
  String get planSaveWeek => 'Save this week';

  @override
  String get planSaveWeekHint => 'Keep the current week as a plan you can come back to';

  @override
  String get planEmptyWeek => 'Start an empty week';

  @override
  String get planEmptyWeekHint => 'Your current week stays saved as a plan';

  @override
  String get planName => 'Plan name';

  @override
  String get planRename => 'Rename';

  @override
  String get planDelete => 'Delete plan';

  @override
  String get plansHint => 'Changes to the week are saved in the selected plan';

  @override
  String get progression => 'Progression';

  @override
  String get progManual => 'Manual';

  @override
  String get progManualHint => 'No suggestions: you choose every weight.';

  @override
  String get progLinear => 'Linear';

  @override
  String get progLinearHint => 'Hit every rep and the weight goes up.';

  @override
  String get progDouble => 'Double progression';

  @override
  String get progDoubleHint => 'More reps up to the top of the range, then more weight.';

  @override
  String get progVolume => 'Reps, sets and weight';

  @override
  String get progVolumeHint => 'Reps to the top, then one more set, then more weight.';

  @override
  String get progAmrap => 'Last set all-out';

  @override
  String get progAmrapHint => 'Last set: as many reps as you can. Double the target and it jumps twice.';

  @override
  String get progStep => 'Weight jump';

  @override
  String get progRange => 'Rep range';

  @override
  String get progSets => 'Sets';

  @override
  String get progDeload => 'Lighter after';

  @override
  String progFails(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n misses', one: '1 miss');
    return '$_temp0';
  }

  @override
  String get progDeloadPct => 'Lighten by';

  @override
  String get progApply => 'Fill in the next workout';

  @override
  String get progApplyHint => 'Off, it only shows as a suggestion.';

  @override
  String get nextMoreReps => 'same weight, one more rep';

  @override
  String get nextAddSet => 'one more set';

  @override
  String get nextAmrap => 'last set: as many as you can';

  @override
  String fillDay(String amount) {
    return 'Fill your day · $amount';
  }

  @override
  String leftAfterKcal(String kcal) {
    return 'You\'ll have $kcal left';
  }

  @override
  String leftAfterBoth(String kcal, String grams) {
    return 'You\'ll have $kcal and $grams g protein left';
  }

  @override
  String leftAfterOver(String kcal) {
    return '$kcal over your goal';
  }

  @override
  String perDayUnit(String unit) {
    return '$unit a day';
  }

  @override
  String get byZone => 'By area';

  @override
  String get importAlreadyHave => 'You already have these routines. You can add them again as a copy.';

  @override
  String get importAsCopy => 'Add as a copy';

  @override
  String get importOwned => 'Already yours';

  @override
  String get setDuplicated => 'Set duplicated';

  @override
  String get setTypeCluster => 'Cluster';

  @override
  String get setTypeClusterInfo =>
      'One set split into small blocks with 15–30 seconds between them. Log the total reps.';

  @override
  String timesBodyweight(String value) {
    return '$value× your bodyweight';
  }

  @override
  String get archiveRoutine => 'Archive routine';

  @override
  String get routineArchived => 'Routine archived';

  @override
  String get archivedRoutines => 'Archived';

  @override
  String get autoBackup => 'Auto backup';

  @override
  String get autoBackupHint =>
      'Saves a ZIP with all your data to a folder you choose. Point Nextcloud, Syncthing or any sync app at that folder to keep a copy off your phone.';

  @override
  String get autoBackupFolder => 'Choose folder';

  @override
  String get autoBackupNoFolder => 'No folder yet';

  @override
  String get autoBackupOff => 'Off';

  @override
  String get autoBackupWorkout => 'After each workout';

  @override
  String get autoBackupDaily => 'Once a day';

  @override
  String get autoBackupWeekly => 'Once a week';

  @override
  String get autoBackupOnLeave => 'When you leave the app';

  @override
  String get autoBackupKeep => 'Copies to keep';

  @override
  String get autoBackupNow => 'Back up now';

  @override
  String autoBackupLast(String when) {
    return 'Last backup $when';
  }

  @override
  String get autoBackupNever => 'No backup yet';

  @override
  String get autoBackupLost => 'Couldn\'t save the last backup. Choose the folder again.';

  @override
  String get autoBackupSaved => 'Backup saved';

  @override
  String get prepPortions => 'Portions';

  @override
  String get rotationAddRest => 'Add a rest day';

  @override
  String get rotationRestHint => 'Moves on by itself the next day';

  @override
  String get rotationRestToday => 'Today';

  @override
  String get rotationSkipRest => 'Skip this rest day';

  @override
  String rotationRestUpNext(String name) {
    return 'Next: $name';
  }

  @override
  String get trainAnyway => 'Train anyway';

  @override
  String get healthTitle => 'Health';

  @override
  String get healthSetting => 'Health data';

  @override
  String get healthSettingHint => 'Health Connect data in Progress';

  @override
  String get healthPickTitle => 'Health data';

  @override
  String get healthPickHint =>
      'Pick what to bring from Health Connect. Android asks once for each one. It\'s only read, and it never leaves your phone.';

  @override
  String get healthGroupHeart => 'Heart';

  @override
  String get healthGroupVitals => 'Vitals';

  @override
  String get healthGroupActivity => 'Activity';

  @override
  String get healthRestingHr => 'Resting heart rate';

  @override
  String get healthHeartRate => 'Average heart rate';

  @override
  String get healthHrv => 'Heart rate variability';

  @override
  String get healthSpo2 => 'Blood oxygen';

  @override
  String get healthRespiration => 'Breathing rate';

  @override
  String get healthBloodPressure => 'Blood pressure';

  @override
  String get healthTemperature => 'Body temperature';

  @override
  String get healthSleep => 'Sleep';

  @override
  String get healthDistance => 'Distance';

  @override
  String get healthFloors => 'Floors climbed';

  @override
  String get healthElevation => 'Elevation gained';

  @override
  String get healthActiveKcal => 'Active calories';

  @override
  String get healthNoData => 'No data yet';

  @override
  String get healthReadFailed => 'Couldn\'t read it';

  @override
  String get healthAllow => 'Tap to allow';

  @override
  String get healthLast7 => 'Last 7 days';

  @override
  String get healthAvg30 => '30-day avg';

  @override
  String get healthLow => 'Lowest';

  @override
  String get healthHigh => 'Highest';

  @override
  String get healthFrom => 'From Health Connect · last 30 days';

  @override
  String get healthBpm => 'bpm';

  @override
  String get healthBreaths => 'br/min';

  @override
  String get weekTab => 'Week';

  @override
  String get muscleSetsList => 'Sets per muscle';

  @override
  String get fatTrans => 'Trans';

  @override
  String get fatTypesHint => 'Optional. Leave blank what the label doesn\'t say.';

  @override
  String get sessionPhotos => 'Workout photos';

  @override
  String get sessionPhotosAdd => 'Add photos';

  @override
  String get sessionPhotosHint => 'They\'re also kept in Your photos.';

  @override
  String get ladderTitle => 'Progression';

  @override
  String get ladderHint =>
      'ধাপগুলো সহজ থেকে কঠিন ক্রমে সাজান। পরপর দুটি সেশনে ৩ সেটে ৮টি রেপ সম্পন্ন করলে, Open-GYM পরবর্তী ধাপ প্রস্তাব করবে।';

  @override
  String get ladderBuiltIn =>
      'Starts from the app\'s progression. Add, remove or reorder steps and it becomes this routine\'s own.';

  @override
  String get ladderNone => 'None yet. Tap to build one.';

  @override
  String ladderStep(int n, int total) {
    return 'Step $n of $total';
  }

  @override
  String get ladderAdd => 'Add step';

  @override
  String get ladderInRoutine => 'In the routine';

  @override
  String get ladderClear => 'Use the app\'s progression';

  @override
  String get ladderPick => 'Pick a step';

  @override
  String get periodWeek => 'this week';

  @override
  String get periodMonth => 'this month';

  @override
  String get periodYear => 'this year';

  @override
  String get periodAll => 'all time';

  @override
  String get settingsSearch => 'Search settings';

  @override
  String get settingsNoResults => 'No setting with that name';

  @override
  String get settingsGroupApp => 'Your app';

  @override
  String get settingsGroupHome => 'Home and extras';

  @override
  String get settingsGroupData => 'Data and help';

  @override
  String get healthAllowAll => 'Turn all on';

  @override
  String get healthSeeAll => 'See all';

  @override
  String get healthPinTitle => 'On the card';

  @override
  String get healthPinHint => 'Pick up to 3 for the Progress card.';

  @override
  String get blurSetting => 'Blur effects';

  @override
  String get blurSettingHint => 'Turn off if your phone feels slow';

  @override
  String get lowEndTitle => 'Your phone is short on memory';

  @override
  String get lowEndBody =>
      'Turning blur off makes everything smoother on it. You can bring it back in Settings → General.';

  @override
  String get lowEndOff => 'Turn blur off';

  @override
  String get lowEndKeep => 'Keep it';

  @override
  String get momentsThisMonth => 'This month';

  @override
  String get momentsDays => 'Days with a photo';

  @override
  String get awardsPick => 'Choose for your profile';

  @override
  String get awardsPickHint => 'Tap the ones you want on your profile';

  @override
  String get gymPassPicture => 'Save a picture of the code';

  @override
  String get gymPassPictureHint => 'For codes the app can\'t read: it shows your photo at full brightness';

  @override
  String get gymPassPictureFormat => 'Photo';

  @override
  String get gymPassUsePicture => 'Save the photo';

  @override
  String get gymPassChangePicture => 'Change the photo';

  @override
  String get cropTitle => 'Crop the code';

  @override
  String get cropHint => 'Drag the corners so only the code is inside';

  @override
  String get rotatePhoto => 'Rotate';

  @override
  String get cardioNoSets => 'Cardio doesn\'t add to your weekly sets per muscle';

  @override
  String get countsAsWater => 'Counts toward water';

  @override
  String get countsAsWaterHint => 'For shakes made with water: logging it adds to your water too';

  @override
  String get waterPerServing => 'Water per serving';

  @override
  String get estOneRm => 'est. 1RM';

  @override
  String get newInWorkout => 'New in this workout';

  @override
  String newInWorkoutHint(String routine) {
    return 'Add it to $routine with the sets you just did. The rest of the routine stays as it is.';
  }

  @override
  String get addedToRoutine => 'Added';

  @override
  String get addShort => 'Add';

  @override
  String get allTimeLifted => 'LIFTED';

  @override
  String get pctBodyweight => '% bodyweight';

  @override
  String get ofBodyweight => 'of your bodyweight';

  @override
  String get recoveryStateMid => 'Recovering';

  @override
  String get recoveryStateReady => 'Ready';

  @override
  String recoveringIn(String time) {
    return 'Recovering in $time';
  }

  @override
  String readyIn(String time) {
    return 'Ready in $time';
  }

  @override
  String get recoveryReadyNow => 'Ready to train it again';

  @override
  String get restAfterThisSet => 'Rest after this set';

  @override
  String restUsual(String time) {
    return 'Usual: $time';
  }

  @override
  String get restJustToday => 'Only for this set, today';

  @override
  String get restUseUsual => 'Back to the usual rest';

  @override
  String get restChange => 'Change';

  @override
  String get noRestTimer => 'No timer';

  @override
  String get sessionMuscles => 'Muscles in this workout';

  @override
  String get sessionMusclesHint =>
      'Faint is still to come, bright is done. Sets per muscle, secondary ones count half.';

  @override
  String get miniBodySetting => 'Small body map on routines';

  @override
  String get miniBodySettingHint => 'Muscles each routine works';

  @override
  String get balanceTitle => 'Strength balance';

  @override
  String get balanceWhy => 'How it works';

  @override
  String get balanceGood => 'Your main lifts are in balance';

  @override
  String balanceBehind(String lift, String gap) {
    return '$lift is lagging: about $gap to catch up';
  }

  @override
  String get balanceHint =>
      'Compares your estimated 1RMs from the last 4 months against classic proportions: squat 100%, deadlift 120%, bench 75%, row 52%, overhead press 45%. A lift far below the rest is usually a weak spot worth more work.';

  @override
  String get balanceEven => 'In balance';

  @override
  String get balanceBehindShort => 'Behind';

  @override
  String get balanceAheadShort => 'Ahead';

  @override
  String get holdProgress => 'Progress by time';

  @override
  String get holdProgressHint => 'Adds seconds when you hold every set';

  @override
  String holdProgressOn(int s) {
    return '+$s s each time you hold every set';
  }

  @override
  String get paceTitle => 'Weekly rate';

  @override
  String get paceOn => 'On pace';

  @override
  String get paceTooFast => 'Faster than the range you set';

  @override
  String get paceTooSlow => 'Slower than the range you set';

  @override
  String get paceWrongWay => 'Going the other way';

  @override
  String get paceDrifting => 'Moving more than a hold allows';

  @override
  String get paceSetAim => 'Tap to set what you aim for';

  @override
  String get paceBasis =>
      'Trend of your weigh-ins from the last 3 weeks, so one salty dinner can\'t fool it.';

  @override
  String get paceAimTitle => 'What are you aiming for?';

  @override
  String get paceAimHint => 'The card tells you if your weekly rate fits it';

  @override
  String get paceLose => 'Lose';

  @override
  String get paceHold => 'Hold';

  @override
  String get paceGain => 'Gain';

  @override
  String get paceAuto => 'Automatic';

  @override
  String get paceLoseRange => '0.5 to 1% of your weight a week';

  @override
  String get paceHoldRange => 'Within 0.25% a week';

  @override
  String get paceGainRange => '0.25 to 0.5% of your weight a week';

  @override
  String get paceAutoHint => 'From your weight goal';

  @override
  String get weekShort => 'wk';

  @override
  String get weightStack => 'Weight stack';

  @override
  String get weightStackHint =>
      'The weights this machine really has. The + and − buttons, progression and deloads land only on them.';

  @override
  String get weightStackOff => 'Off: normal weight steps';

  @override
  String get stackFrom => 'From';

  @override
  String get stackTo => 'To';

  @override
  String get stackEvery => 'Every';

  @override
  String get stackFill => 'Fill the stack';

  @override
  String get stackTapToFix => 'Tap a weight to fix an odd one or remove it.';

  @override
  String get stackAddWeight => 'Add a weight';

  @override
  String get stackEditWeight => 'Weight on the pin';

  @override
  String get stackClear => 'Remove the stack';

  @override
  String stackCount(int n) {
    return '$n weights';
  }

  @override
  String get healthLinksTitle => 'With your workouts';

  @override
  String get healthLinkHeart => 'Heart rate from your watch';

  @override
  String get healthLinkHeartHint =>
      'Average and peak heart rate of each workout, from whatever watch recorded it';

  @override
  String get healthLinkWeight => 'Weigh-ins from other apps';

  @override
  String get healthLinkWeightHint =>
      'Your scale\'s weigh-ins from the last 30 days. Never overwrites one you typed.';

  @override
  String get healthLinkDenied => 'Health Connect did not give permission';

  @override
  String get healthOpenSettings => 'Open';

  @override
  String hrMaxShort(int bpm) {
    return 'max $bpm';
  }

  @override
  String get setNote => 'Note for this set';

  @override
  String get setNoteHint => 'Grip, pain, a cue that worked…';

  @override
  String setNoteLast(String note) {
    return 'Last time: $note';
  }

  @override
  String get lastTimeNotes => 'Last time';

  @override
  String setNoteLine(int n, String note) {
    return 'Set $n · $note';
  }

  @override
  String get newMeasure => 'New measurement';

  @override
  String get newMeasureHint => 'Anything you want to follow: wrist, resting pulse, body water…';

  @override
  String get measureKindLength => 'Length';

  @override
  String get measureKindLengthHint => 'In cm or inches, like the rest';

  @override
  String get measureKindOther => 'Other';

  @override
  String get measureKindOtherHint => 'With your own unit';

  @override
  String get measureUnit => 'Unit';

  @override
  String get measureUnitHint => 'mm, bpm, kg…';

  @override
  String get measureNameHint => 'Wrist, resting pulse…';

  @override
  String get measureRename => 'Rename';

  @override
  String measureDeleteTitle(String name) {
    return 'Delete $name?';
  }

  @override
  String get measureDeleteBody => 'Every value you logged for it goes too.';

  @override
  String get measureDelete => 'Delete this measurement';

  @override
  String get measureEvery => 'Remind me to measure';

  @override
  String measureNextIn(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'In $n days',
      one: 'Tomorrow',
      zero: 'Today',
    );
    return '$_temp0';
  }

  @override
  String get measureDueNow => 'Time to measure';

  @override
  String get notifMeasureChannel => 'Body measurements';

  @override
  String get notifMeasureChannelWhy => 'A nudge when it is time to measure again.';

  @override
  String get notifMeasureTitle => 'Time to measure';

  @override
  String notifMeasureBody(int n) {
    return '$n days since the last time. Same spot, same time of day.';
  }

  @override
  String get healthLinkWrite => 'Save your workouts';

  @override
  String get healthLinkWriteHint =>
      'Each finished workout goes to Health Connect with its time and type, so other apps count it too. Also sends the last 30 days.';

  @override
  String get healthWorkoutTitle => 'Workout';

  @override
  String get circuits => 'Timed circuits';

  @override
  String get circuitsHint => 'Work and rest by the clock, round after round';

  @override
  String get newCircuit => 'New circuit';

  @override
  String get editCircuit => 'Edit circuit';

  @override
  String get circuitDefaultName => 'Circuit';

  @override
  String get circuitNameHint => 'Name, like Core finisher';

  @override
  String get circuitRounds => 'Rounds';

  @override
  String get circuitRoundRest => 'Rest between rounds';

  @override
  String get circuitWork => 'Work';

  @override
  String get circuitRest => 'Rest';

  @override
  String get circuitAdd => 'Add exercise';

  @override
  String get circuitEmpty =>
      'Add the exercises in the order you\'ll do them. One can go twice, like a side plank for each side.';

  @override
  String circuitSummary(int steps, int rounds, String time) {
    String _temp0 = intl.Intl.pluralLogic(
      steps,
      locale: localeName,
      other: '$steps exercises',
      one: '1 exercise',
    );
    String _temp1 = intl.Intl.pluralLogic(
      rounds,
      locale: localeName,
      other: '$rounds rounds',
      one: '1 round',
    );
    return '$_temp0 · $_temp1 · $time';
  }

  @override
  String get circuitStart => 'Start';

  @override
  String get circuitGetReady => 'Get ready';

  @override
  String circuitRoundOf(int n, int total) {
    return 'Round $n of $total';
  }

  @override
  String circuitNext(String name) {
    return 'Next: $name';
  }

  @override
  String get circuitFinishLine => 'Last one, then done';

  @override
  String get circuitDone => 'Circuit done';

  @override
  String circuitDoneBody(String time) {
    return '$time · saved to your history';
  }

  @override
  String get circuitStopTitle => 'Stop the circuit?';

  @override
  String get circuitStopBody => 'What you\'ve done so far is saved to your history.';

  @override
  String get circuitStop => 'Stop';

  @override
  String get circuitKeepGoing => 'Keep going';

  @override
  String circuitDeleteTitle(String name) {
    return 'Delete $name?';
  }

  @override
  String get circuitDeleteBody => 'Workouts you already did with it stay in your history.';

  @override
  String get circuitPickExercise => 'Pick an exercise';

  @override
  String get circuitNoSteps => 'Add at least one exercise';

  @override
  String get circuitPrevious => 'Previous';

  @override
  String get circuitUpNext => 'Up next';

  @override
  String get foodGroupNew => 'New category';

  @override
  String get foodGroupHint => 'Ready meals, frozen…';

  @override
  String foodGroupCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n foods',
      one: '1 food',
      zero: 'No foods yet',
    );
    return '$_temp0';
  }

  @override
  String foodGroupDeleteTitle(String name) {
    return 'Delete $name?';
  }

  @override
  String get foodGroupDeleteBody => 'Your foods stay, just without this category.';

  @override
  String onbHello(String name) {
    return 'Hi, $name';
  }

  @override
  String get onbPlaceHero => 'exercises you can do';

  @override
  String get settingsRests => 'Rest';

  @override
  String get settingsDuring => 'While you train';

  @override
  String get settingsLook => 'How it looks';

  @override
  String get importCardTitle => 'Bring your workouts here';

  @override
  String get importCardBody => 'From Hevy, Strong, FitNotes and more';

  @override
  String get checkInTitle => 'How did you show up?';

  @override
  String get checkInSleep => 'Sleep';

  @override
  String get checkInEnergy => 'Energy';

  @override
  String get checkInSkip => 'Optional';

  @override
  String get checkInLevel1 => 'Awful';

  @override
  String get checkInLevel2 => 'Poor';

  @override
  String get checkInLevel3 => 'Okay';

  @override
  String get checkInLevel4 => 'Good';

  @override
  String get checkInLevel5 => 'Great';

  @override
  String get checkInSetting => 'Sleep and energy';

  @override
  String get checkInSettingHint => 'Ask when you finish a workout';

  @override
  String get readinessTitle => 'Sleep and energy';

  @override
  String get readinessWaiting => 'Keep rating your workouts';

  @override
  String get readinessWaitingHint => 'After a few good and bad days you\'ll see how they change your lifts.';

  @override
  String readinessSleepLess(int n) {
    return 'On short-sleep days you lift $n% less';
  }

  @override
  String readinessSleepMore(int n) {
    return 'Funny: on short-sleep days you lift $n% more';
  }

  @override
  String get readinessSleepNone => 'Sleep barely changes your lifts';

  @override
  String readinessEnergyLess(int n) {
    return 'On low-energy days you lift $n% less';
  }

  @override
  String readinessEnergyMore(int n) {
    return 'On low-energy days you still lift $n% more';
  }

  @override
  String get readinessEnergyNone => 'Your energy barely changes your lifts';

  @override
  String get readinessHint => 'Compares each estimated 1RM with your best of the previous 90 days.';

  @override
  String get readinessLast30 => 'Average of the last 30 days';

  @override
  String get kindSport => 'Sport';

  @override
  String get clearWorkouts => 'Delete workouts only';

  @override
  String get clearWorkoutsNone => 'There are no workouts to delete';

  @override
  String clearWorkoutsTitle(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'Delete $n workouts?',
      one: 'Delete 1 workout?',
    );
    return '$_temp0';
  }

  @override
  String get clearWorkoutsBody =>
      'Your history, records and medals go. Routines, exercises, photos, measurements, nutrition and settings stay. Export a backup first if you might want them back.';

  @override
  String get clearWorkoutsConfirm => 'Delete workouts';

  @override
  String get clearWorkoutsDone => 'Workouts deleted';

  @override
  String get reportTitle => 'রিপোর্ট';

  @override
  String get reportHint => 'আপনার অগ্রগতি ও পরিসংখ্যানের সারাংশ শেয়ার বা সংরক্ষণ করুন。';

  @override
  String get reportCustom => 'কাস্টম রেঞ্জ';

  @override
  String get reportPickRange => 'একটি তারিখের সীমা নির্বাচন করুন';

  @override
  String get reportEmpty => 'এই সময়ের জন্য কোনো ওয়ার্কআউট নেই';

  @override
  String get reportKicker => 'ওয়ার্কআউট রিপোর্ট';

  @override
  String reportDays(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n days', one: '1 day');
    return '$_temp0';
  }

  @override
  String get reportWorkouts => 'অনুশীলনসমূহ';

  @override
  String get reportPerWeek => 'প্রতি সপ্তাহে';

  @override
  String get reportHours => 'ঘণ্টা';

  @override
  String get reportVsPrev => 'Percentages compare with the same number of days just before.';

  @override
  String get reportRecords => 'রেকর্ডসমূহ';

  @override
  String get reportLifts => 'Exercises';

  @override
  String get reportSessionsCol => 'DAYS';

  @override
  String get reportBestCol => 'BEST 1RM';

  @override
  String get reportChangeCol => 'CHANGE';

  @override
  String get reportBestHint =>
      'Best 1RM is estimated from your sets. Change compares the first and last day of the exercise in this report.';

  @override
  String get reportMuscles => 'পেশীসমূহ';

  @override
  String get reportBody => 'Body and recovery';

  @override
  String reportFood(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'Nutrition · average of $n days',
      one: 'Nutrition · average of 1 day',
    );
    return '$_temp0';
  }

  @override
  String reportRecordsLine(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n new records',
      one: '1 new record',
    );
    return '$_temp0';
  }

  @override
  String reportLiftsLine(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n exercises', one: '1 exercise');
    return '$_temp0';
  }

  @override
  String reportFoodLine(String kcal, int protein, int days) {
    return '$kcal and $protein g protein a day · $days days logged';
  }

  @override
  String get reportSharePdf => 'পিডিএফ শেয়ার করুন';

  @override
  String get reportShareCsv => 'সিএসভি শেয়ার করুন';

  @override
  String get reportShareCsvBoth => 'Export CSV (workouts and nutrition)';

  @override
  String fastMinutes(int n) {
    return '$n min';
  }

  @override
  String fastHours(int n) {
    return '$n h';
  }

  @override
  String fastHoursMinutes(int h, int m) {
    return '$h h $m min';
  }

  @override
  String get fastTracker => 'রোজা / ফাস্টিং';

  @override
  String fastTitle(int fast, int eat) {
    return 'Fasting $fast:$eat';
  }

  @override
  String get fastOptions => 'Fasting options';

  @override
  String get fastWindowOpen => 'Eating window open';

  @override
  String get fastLeft => 'Left';

  @override
  String get fastDoneLabel => 'Goal reached';

  @override
  String get fastIdle => 'Start it after your last meal';

  @override
  String fastLast(String time) {
    return 'Last fast: $time';
  }

  @override
  String fastStreak(int n) {
    return '$n in a row';
  }

  @override
  String fastReached(String time) {
    return '$time past your goal';
  }

  @override
  String fastEndsAt(String time) {
    return 'Ends at $time';
  }

  @override
  String fastSince(String time) {
    return 'Since $time';
  }

  @override
  String get fastStartedAt => 'When did you start fasting?';

  @override
  String get fastStart => 'Start fast';

  @override
  String fastFromMeal(String time) {
    return 'From $time';
  }

  @override
  String get fastEnd => 'End fast';

  @override
  String get fastCancel => 'Cancel this fast';

  @override
  String get fastPlan => 'Fasting plan';

  @override
  String get fastPlanHint => 'Hours fasting : hours to eat';

  @override
  String get fastThisWeek => 'Last 7 days';

  @override
  String get fastCount => 'Fasts';

  @override
  String get fastReachedCount => 'Reached';

  @override
  String get fastAverage => 'Average';

  @override
  String get fastHistory => 'Recent fasts';

  @override
  String get notifFastLiveChannel => 'Fasting in progress';

  @override
  String get notifFastLiveChannelWhy => 'A quiet countdown while you fast.';

  @override
  String get notifFastChannel => 'Fasting';

  @override
  String get notifFastChannelWhy => 'Tells you when your fast is done.';

  @override
  String get notifFastLiveTitle => 'Fasting';

  @override
  String notifFastLiveBody(String time) {
    return 'Your eating window opens at $time';
  }

  @override
  String get notifFastDoneTitle => 'Fast done';

  @override
  String notifFastDoneBody(int n) {
    return '$n hours. Your eating window is open.';
  }

  @override
  String get newExerciseHint => 'Only the name is required. The rest helps, but you can add it later.';

  @override
  String get supportThanksTitle => 'Thanks for being here 🤍';

  @override
  String get supportThanksBody =>
      'Open-GYM সম্পূর্ণ ফ্রি এবং সবসময় থাকবে, কোনো বিজ্ঞাপন বা লুকানো খরচ নেই।\n\nএটি যদি আপনার অনুশীলনে সাহায্য করে, তবে আমাকে এক কাপ কফি খাওয়াতে পারেন ☕\nআর সম্ভব না হলেও সমস্যা নেই: GitHub-এ একটি স্টারও অনুপ্রেরণা দেয় ⭐';

  @override
  String get perfSetting => 'Performance';

  @override
  String get perfSheetHint =>
      'Open-GYM আপনার ফোনের কতটা রিসোর্স ব্যবহার করবে। আপনি নিচের অংশগুলো পরিবর্তন করতে পারেন।';

  @override
  String get perfLite => 'Saver';

  @override
  String get perfLiteHint => 'No blur and calmer motion. For phones that struggle.';

  @override
  String get perfBalanced => 'Balanced';

  @override
  String get perfBalancedHint => 'Blur and animations without draining the battery.';

  @override
  String get perfMax => 'Maximum';

  @override
  String perfMaxHint(int hz) {
    return 'Finer blur and the screen at $hz Hz. For high-end phones.';
  }

  @override
  String get perfMaxHintNoHz => 'Finer blur everywhere. For high-end phones.';

  @override
  String get perfCustom => 'Custom';

  @override
  String get perfTweak => 'Fine-tuning';

  @override
  String get perfFine => 'Fine blur';

  @override
  String get perfFineHint => 'Softer edges and a sharper backdrop behind sheets';

  @override
  String perfHz(int hz) {
    return 'Screen at $hz Hz';
  }

  @override
  String get perfHzHint => 'Everything scrolls smoother, at a little more battery';

  @override
  String get lowEndLiteBody =>
      'Saver mode (no blur, calmer motion) will run smoother on it. You can change it in Settings → General → Performance.';

  @override
  String get lowEndLiteOn => 'Turn on Saver';

  @override
  String get dayOffHint => 'Your streak and the reminder leave this day alone';

  @override
  String get dayOffTrained => 'I trained, just didn\'t log it';

  @override
  String get dayOffSick => 'Illness';

  @override
  String get dayOffTravel => 'Travel';

  @override
  String get dayOffInjury => 'Injury';

  @override
  String get dayOffRest => 'Rest';

  @override
  String get altsTitle => 'Backups';

  @override
  String get altsHint => 'In case the machine is taken';

  @override
  String altsPickHint(int count) {
    return 'Pick up to $count. If the machine is taken, swap in one tap.';
  }

  @override
  String get placeDumbbells => 'Dumbbells';

  @override
  String get dumbbellsHint =>
      'The weight of one dumbbell. Progression and the + and − buttons will only land on these here.';

  @override
  String get dumbbellOther => 'Another weight';

  @override
  String get tuneTitle => 'Today\'s volume';

  @override
  String get tuneHint => 'Tell me how each muscle felt and I\'ll adjust the sets for next time.';

  @override
  String get tuneLess => 'Too little';

  @override
  String get tuneRight => 'Right';

  @override
  String get tuneMore => 'Too much';

  @override
  String tuneNext(String sets, String name) {
    return 'Next time: $sets of $name';
  }

  @override
  String get tuneSame => 'Stays the same next time';

  @override
  String get tuneSetting => 'Tune sets per muscle';

  @override
  String get tuneSettingHint => 'After a routine, rate each muscle and the sets adjust';

  @override
  String insightLoad(int pct) {
    return '$pct % more sets than your usual week. Watch your recovery.';
  }

  @override
  String insightMuscle(String muscle, int days) {
    return '$muscle: $days days untouched.';
  }

  @override
  String insightPushHeavy(int a, int b) {
    return 'You push more than you pull: $a sets against $b in four weeks.';
  }

  @override
  String insightPullHeavy(int a, int b) {
    return 'You pull more than you push: $a sets against $b in four weeks.';
  }

  @override
  String insightStronger(String name, int pct) {
    return '$name: $pct % stronger than last month.';
  }

  @override
  String recapPull(String month) {
    return 'Keep pulling to see your $month';
  }

  @override
  String get recapRelease => 'Let go';

  @override
  String recapHi(String name) {
    return 'Hi, $name';
  }

  @override
  String recapReady(String month) {
    return 'Shall we see what you did in $month?';
  }

  @override
  String get recapGo => 'Let\'s go';

  @override
  String recapEmpty(String month) {
    return 'No workouts in $month yet. Your first one opens this up.';
  }

  @override
  String get recapClose => 'Close';

  @override
  String get recapShare => 'Share';

  @override
  String get recapWorkoutsKicker => 'This month you trained';

  @override
  String recapWorkouts(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'workouts', one: 'workout');
    return '$_temp0';
  }

  @override
  String recapDays(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'On $n different days',
      one: 'On one day',
    );
    return '$_temp0';
  }

  @override
  String get recapTimeKicker => 'Time under the bar';

  @override
  String recapLongest(String time, String date) {
    return 'Longest session: $time, on $date';
  }

  @override
  String get recapVolumeKicker => 'You moved';

  @override
  String recapCars(int n, String count) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'Like lifting $count cars',
      one: 'Like lifting a car',
    );
    return '$_temp0';
  }

  @override
  String recapTop(String name, String volume) {
    return 'Most of it: $name, $volume';
  }

  @override
  String get recapMuscleKicker => 'Muscle of the month';

  @override
  String get recapRecordsKicker => 'New records';

  @override
  String recapNoRecords(int n) {
    return 'No records this time, but $n sets went in the bank.';
  }

  @override
  String get recapHabitKicker => 'Your moment';

  @override
  String recapHabitStart(String time) {
    return 'You usually start at $time';
  }

  @override
  String get recapShareKicker => 'Your month, ready to share';

  @override
  String get recapTickWorkouts => 'Workouts';

  @override
  String get recapTickTime => 'Time';

  @override
  String get recapTickVolume => 'Load';

  @override
  String get recapTickRecords => 'Records';

  @override
  String recapAvg(int n) {
    return '$n min per workout on average';
  }

  @override
  String get recapLiftKicker => 'Exercise of the month';

  @override
  String get recapBest => 'Best';

  @override
  String get recapTimes => 'Days';

  @override
  String get recapDaysLabel => 'Days';

  @override
  String get recapAvgLabel => 'Average';

  @override
  String recapCalendarLine(int workouts, int days) {
    return '$workouts workouts on $days days';
  }

  @override
  String get recapFavLabel => 'Your day';

  @override
  String get recapWatermark => 'free gym log';

  @override
  String get recapTickSteps => 'Steps';

  @override
  String get recapTickFood => 'Food';

  @override
  String get recapCardioKicker => 'Cardio';

  @override
  String recapCardioTime(int minutes, int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n workouts', one: 'one workout');
    return '$minutes min across $_temp0';
  }

  @override
  String recapCardioCount(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n cardio workouts',
      one: 'One cardio workout',
    );
    return '$_temp0';
  }

  @override
  String recapCardioTop(String name) {
    return 'Your go-to: $name';
  }

  @override
  String get recapStepsKicker => 'You walked';

  @override
  String get recapStepsWord => 'steps';

  @override
  String recapStepsAvg(String value) {
    return '$value a day on average';
  }

  @override
  String recapStepsBest(String value, String date) {
    return 'Best day: $value, $date';
  }

  @override
  String get recapFoodKicker => 'On your plate';

  @override
  String get recapLiftRest => 'Right behind it';

  @override
  String recapSameAs(String month) {
    return 'Same as in $month';
  }

  @override
  String recapMoreThan(String value, String month) {
    return '$value more than in $month';
  }

  @override
  String recapLessThan(String value, String month) {
    return '$value less than in $month';
  }

  @override
  String get recapTickMedals => 'Medals';

  @override
  String get recapTickSleep => 'Sleep';

  @override
  String get recapMedalsKicker => 'Medals you won';

  @override
  String recapMedalsMore(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'And $n more', one: 'And one more');
    return '$_temp0';
  }

  @override
  String get recapSleepKicker => 'You slept';

  @override
  String get recapSleepAvg => 'a night on average';

  @override
  String recapSleepBest(String value, String date) {
    return 'Best night: $value, $date';
  }

  @override
  String get recapCardSummary => 'Summary';

  @override
  String get recapCardCalendar => 'Calendar';

  @override
  String get recapCardLift => 'Exercise';

  @override
  String get recapPeakKicker => 'Your toughest session';

  @override
  String get recapTickPeak => 'Session';

  @override
  String get recapFreshKicker => 'First time this month';

  @override
  String recapFresh(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'new exercises', one: 'new exercise');
    return '$_temp0';
  }

  @override
  String get recapTickFresh => 'New';

  @override
  String recapStreak(int n) {
    return '$n days in a row, your longest streak';
  }

  @override
  String recapYearAgo(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n workouts', one: '1 workout');
    return 'A year ago: $_temp0';
  }

  @override
  String recapForgot(String muscle) {
    return 'Left out this month: $muscle';
  }

  @override
  String recapFoodProtein(int goal) {
    return 'protein a day · goal $goal g';
  }

  @override
  String recapFoodStarDays(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'On your plate $n days',
      one: 'On your plate 1 day',
    );
    return '$_temp0';
  }

  @override
  String get recapFoodProteinLabel => 'Protein · g/day';

  @override
  String get recapFoodGoalDays => 'Goal met';

  @override
  String get recapFoodWaterLabel => 'Water/day';

  @override
  String recapFoodTimes(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n days', one: '1 day');
    return '$_temp0';
  }

  @override
  String get recapFoodStarKicker => 'Your food of the month';

  @override
  String get onbSpeedTitle => 'Make it run smooth';

  @override
  String get onbSpeedWhy =>
      'Your phone seems to be working hard. Turn these off and everything will flow better: try them and watch the preview.';

  @override
  String get onbSpeedMotion => 'Animations';

  @override
  String get onbSpeedBlurHint => 'Frosted glass behind sheets and bars';

  @override
  String get onbSpeedMotionHint => 'Screens and sheets that slide in';

  @override
  String get onbSpeedLater => 'You can change it anytime in Settings › General › Performance.';

  @override
  String get notifSoundSetting => 'Notification sounds';

  @override
  String get notifSoundRowHint => 'How each kind of reminder sounds';

  @override
  String get notifSoundHint =>
      'Pick a sound for each kind of reminder. From phone opens your phone sounds, and on most phones you can add your own song there.';

  @override
  String get notifSoundTrain => 'Workouts';

  @override
  String get notifSoundFood => 'Food, supplements and fasting';

  @override
  String get notifSoundOther => 'Photos and measurements';

  @override
  String get notifSoundNormal => 'Normal';

  @override
  String get notifSoundPhone => 'From phone';

  @override
  String get notifSoundSilent => 'Silent';

  @override
  String get notifSoundPhoneHint => 'Tap one to hear it. It saves right away.';

  @override
  String get notifSoundMore => 'Another file…';

  @override
  String get notifSoundChange => 'Change';

  @override
  String get workoutNoteAdd => 'Pinned note: seat, grip, machine…';

  @override
  String get autoProgressSetting => 'স্বয়ংক্রিয় প্রগ্রেস';

  @override
  String get autoProgressRowHint => 'প্রতি সেশনে ওজন ও রেপ বৃদ্ধি পরিচালনা করুন';

  @override
  String get autoProgressOff => 'বন্ধ';

  @override
  String get autoProgressWeight => 'ওজন যোগ করুন';

  @override
  String get autoProgressReps => 'রেপ যোগ করুন';

  @override
  String get autoProgressHint =>
      'ওয়ার্কআউট শুরু করলে, Open-GYM প্রতিটি অনুশীলনের পরবর্তী ধাপ নিজে থেকেই ঠিক করে নেয়। রেপ যোগ করার মাধ্যমে আপনি প্রতি সেটে ১২টি পর্যন্ত একটি করে রেপ বাড়াবেন, তারপর ওজন বাড়বে এবং আবার ৮ থেকে শুরু হবে। আপনি চাইলে যেকোনো অনুশীলনের পাতায় এটি পরিবর্তন করতে পারেন।';

  @override
  String get noteFolders => 'Folders';

  @override
  String get noteFolderNew => 'New folder';

  @override
  String get noteFolderEdit => 'Edit folder';

  @override
  String get noteFolderName => 'Folder name';

  @override
  String get noteFolderLabel => 'Folder';

  @override
  String get noteFolderNone => 'No folder';

  @override
  String get noteFolderDelete => 'Delete the folder?';

  @override
  String get noteFolderDeleteBody => 'Notes are kept: they just leave the folder.';

  @override
  String get foodArchivedToast => 'Food archived';

  @override
  String get planArchivedToast => 'Plan archived';

  @override
  String get suppArchivedToast => 'Supplement archived';

  @override
  String get voiceSetting => 'Workout voice';

  @override
  String get voiceSettingHint =>
      'Says your next set and counts down the end of the rest, with the phone voice';

  @override
  String get voiceHello => 'Voice on';

  @override
  String voiceRest(String time) {
    return 'Rest $time.';
  }

  @override
  String voiceNext(String name, String load) {
    return 'Next: $name, $load.';
  }

  @override
  String voiceLoad(int reps, String weight) {
    return '$reps reps at $weight';
  }

  @override
  String voiceReps(int reps) {
    return '$reps reps';
  }

  @override
  String get voiceGo => 'Let\'s go!';

  @override
  String get deloadSetting => 'Deload week';

  @override
  String get deloadOff => 'Never';

  @override
  String deloadEvery(int weeks) {
    return 'Every $weeks weeks';
  }

  @override
  String get deloadHint =>
      'Every few weeks, an easier one to recover: half the sets and 10 % less weight. That week does not count for progression.';

  @override
  String get deloadRowHint => 'An easy week every few weeks';

  @override
  String get deloadNow => 'Deload week';

  @override
  String get deloadNowHint => 'Today, half the sets and 10 % less weight';

  @override
  String deloadIn(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(
      weeks,
      locale: localeName,
      other: 'In $weeks weeks',
      one: 'Next week',
      zero: 'This week',
    );
    return '$_temp0';
  }

  @override
  String get deloadSkip => 'Train as usual';

  @override
  String get voiceSheetTitle => 'How the voice works';

  @override
  String get voicePointRest => 'When you tick a set, it tells you the rest time and what comes next.';

  @override
  String get voicePointCount => 'It counts 3, 2, 1 at the end of the rest and calls you back.';

  @override
  String get voicePointPhone => 'It uses your phone\'s voice and plays over your music.';

  @override
  String get voiceTry => 'Try the voice';

  @override
  String get voiceNoEngine => 'Your phone has no voice engine turned on.';

  @override
  String get voiceNoLang => 'Your language\'s voice is missing. Download it in your phone\'s voice settings.';

  @override
  String get voiceOpenSettings => 'Voice settings';

  @override
  String voiceMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes',
      one: '1 minute',
    );
    return '$_temp0';
  }

  @override
  String voiceSeconds(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seconds',
      one: '1 second',
    );
    return '$_temp0';
  }

  @override
  String get voiceAnd => 'and';

  @override
  String get repRecordsTitle => 'Best weight by reps';

  @override
  String suppUnitCapsule(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'capsules', one: 'capsule');
    return '$_temp0';
  }

  @override
  String suppUnitPill(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'pills', one: 'pill');
    return '$_temp0';
  }

  @override
  String suppUnitScoop(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'scoops', one: 'scoop');
    return '$_temp0';
  }

  @override
  String suppUnitDrop(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'drops', one: 'drop');
    return '$_temp0';
  }

  @override
  String suppUnitServing(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: 'servings', one: 'serving');
    return '$_temp0';
  }

  @override
  String get suppUnitIu => 'IU';

  @override
  String get suppLeft => 'Left';

  @override
  String get suppLeftHint => 'Optional';

  @override
  String suppLeftFor(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: 'Left for $n days',
      one: 'Left for 1 day',
    );
    return '$_temp0';
  }

  @override
  String suppForDays(int n) {
    String _temp0 = intl.Intl.pluralLogic(n, locale: localeName, other: '$n days', one: '1 day');
    return '$_temp0';
  }

  @override
  String get suppRanOut => 'Ran out';

  @override
  String get lightSession => 'Light session';

  @override
  String get lightSessionHint => 'Saved in your history and stats, but it won\'t change your next targets.';

  @override
  String get lightSessionNote => 'Doesn\'t count for progression';

  @override
  String get lightSessionOff => 'Turn off';

  @override
  String get eachSideRepsHint =>
      'Log the left and right reps separately. Progression follows the weaker side.';

  @override
  String get repsLeftCol => 'REPS L';

  @override
  String get repsRightCol => 'REPS R';

  @override
  String get repsLeftTitle => 'LEFT REPS';

  @override
  String get repsRightTitle => 'RIGHT REPS';

  @override
  String sidesReps(int l, int r) {
    return 'L$l R$r';
  }

  @override
  String get progSchemeTitle => 'Weight progression';

  @override
  String get groupMoveUp => 'Move group up';

  @override
  String get groupMoveDown => 'Move group down';

  @override
  String get mealAiRow => 'Ask an AI';

  @override
  String get mealAiRowHint => 'আপনার খাবার বা উপাদানের তালিকা লিখুন, এআই ম্যাক্রো হিসাব করে দেবে।';

  @override
  String get mealAiTitle => 'এআই মিল সহকারী';

  @override
  String get mealAiSubtitle => 'Works with any chatbot. The app stays offline.';

  @override
  String get mealAiStepAsk => 'Ask';

  @override
  String get mealAiStepPaste => 'Paste';

  @override
  String get mealAiWholeDay => 'Whole day';

  @override
  String get mealAiTarget => 'Target';

  @override
  String mealAiLeft(String kcal, int protein) {
    return 'You have $kcal and $protein g of protein left today';
  }

  @override
  String get mealAiStyle => 'Your taste';

  @override
  String get mealAiTagProtein => 'High protein';

  @override
  String get mealAiTagVeggie => 'Vegetarian';

  @override
  String get mealAiTagVegan => 'Vegan';

  @override
  String get mealAiTagNoGluten => 'Gluten free';

  @override
  String get mealAiTagNoLactose => 'Lactose free';

  @override
  String get mealAiTagQuick => 'Quick';

  @override
  String get mealAiTagNoCook => 'No cooking';

  @override
  String get mealAiTagCheap => 'Budget';

  @override
  String get mealAiNotesHint => 'I have at home… I don’t like… allergies…';

  @override
  String get mealAiOptions => 'Options';

  @override
  String get mealAiCopy => 'Copy request';

  @override
  String get mealAiCopied => 'Request copied';

  @override
  String get mealAiCopiedHint => 'Paste it into your AI and come back here with the answer';

  @override
  String get mealAiShowText => 'See the request';

  @override
  String get mealAiHideText => 'Hide the request';

  @override
  String get mealAiPasteHint => 'Paste the AI’s answer here';

  @override
  String get mealAiReview => 'Review answer';

  @override
  String get mealAiUnreadable => 'I couldn’t find any food in that text';

  @override
  String get mealAiUnreadableHint =>
      'Ask the AI to send only the JSON, in one code block, with the format of the request.';

  @override
  String get mealAiCopyFix => 'Copy that sentence';

  @override
  String mealAiOption(int n) {
    return 'Option $n';
  }

  @override
  String mealAiAddTo(String meal) {
    return 'Add to $meal';
  }

  @override
  String get mealAiAddDay => 'Add to today';

  @override
  String get mealAiAddPick => 'Add';

  @override
  String mealAiAdded(int n) {
    String _temp0 = intl.Intl.pluralLogic(
      n,
      locale: localeName,
      other: '$n foods added',
      one: '1 food added',
    );
    return '$_temp0';
  }

  @override
  String get mealAiSaveRecipe => 'Save as a recipe';

  @override
  String get mealAiSavePlan => 'Save as a plan';

  @override
  String get mealAiRecipeSaved => 'Recipe saved';

  @override
  String get mealAiPlanSaved => 'Plan saved';

  @override
  String get mealAiFlagEstimated => 'Estimated by the AI';

  @override
  String get mealAiFlagAdjusted => 'Calories fixed to match the macros';

  @override
  String get mealAiFlagDoubtful => 'Doesn’t add up, check it';

  @override
  String get mealAiFlagNoValues => 'No nutrition values';

  @override
  String get mealAiFlagNoAmount => 'No amount given';

  @override
  String get mealAiTruncated => 'The answer looks cut off. I kept the complete foods.';

  @override
  String get mealAiAmount => 'Amount';

  @override
  String mealAiTargetLine(String kcal) {
    return 'Target $kcal';
  }

  @override
  String get mealAiNothingChosen => 'Turn on at least one food';
}
