<div align="center">

<img src="docs/screenshots/banner-en.png" alt="Open-GYM — Lift. Log it. Grow." width="860" />

<br/>

<img src="docs/screenshots/icon.png" width="96" alt="Open-GYM Logo" />

# Open-GYM

### Lift. Log it. Grow.
**A modern, offline, privacy-first gym & workout companion for Android.**  
*Tap your muscle on an interactive anatomical map, track your sets, watch your numbers climb.*

<br/>

<p>
  <a href="https://github.com/smartworldarafath/Open-GYM/releases"><img alt="Android 7.0+" src="https://img.shields.io/badge/Android-7.0%2B-3DDC84?style=for-the-badge&logo=android&logoColor=white" /></a>
  <a href="https://flutter.dev"><img alt="Flutter" src="https://img.shields.io/badge/Flutter-3.41+-02569B?style=for-the-badge&logo=flutter&logoColor=white" /></a>
  <a href="https://kotlinlang.org"><img alt="Kotlin" src="https://img.shields.io/badge/Kotlin-2.1+-7F52FF?style=for-the-badge&logo=kotlin&logoColor=white" /></a>
  <a href="LICENSE"><img alt="License GPLv3" src="https://img.shields.io/badge/License-GPLv3-C2410C?style=for-the-badge&logo=gnu&logoColor=white" /></a>
  <a href="CREDITS.md"><img alt="Art CC BY-SA 4.0" src="https://img.shields.io/badge/Art-CC%20BY--SA%204.0-8A6B41?style=for-the-badge&logo=creativecommons&logoColor=white" /></a>
  <a href="https://github.com/smartworldarafath/Open-GYM/stargazers"><img alt="Stars" src="https://img.shields.io/github/stars/smartworldarafath/Open-GYM?style=for-the-badge&color=D9A184&labelColor=181717&logo=github" /></a>
</p>

<p>
  <a href="https://github.com/smartworldarafath/Open-GYM/releases"><img alt="Get it on GitHub" src="docs/badges/get-it-on-github.png" height="58" /></a>
</p>

<sub><b>English</b> · <a href="docs/readme/README.es.md">Español</a> · <a href="docs/readme/README.it.md">Italiano</a> · <a href="docs/readme/README.zh.md">简体中文</a></sub>

<br/>
<br/>

<img src="docs/screenshots/store/en/01-hero.jpg" width="260" alt="Lift. Log it. Grow." />
<img src="docs/screenshots/store/en/02-train.jpg" width="260" alt="Tap the muscle, get the session" />
<img src="docs/screenshots/store/en/03-rest.jpg" width="260" alt="Tick the set, rest rings itself" />

<img src="docs/screenshots/store/en/04-progress.jpg" width="260" alt="Progress from your own sets" />
<img src="docs/screenshots/store/en/05-library.jpg" width="260" alt="500+ exercises with animations" />
<img src="docs/screenshots/store/en/06-privacy.jpg" width="260" alt="No account. No internet. No smoke." />

<details>
<summary><sub><b>📱 View In-App Screenshots (Direct Phone Captures)</b></sub></summary>
<br/>

<img src="docs/screenshots/mock/01-home.png" width="215" alt="Today" />
<img src="docs/screenshots/mock/03-train.png" width="215" alt="Body map" />
<img src="docs/screenshots/mock/04-session.png" width="215" alt="Live session" />
<img src="docs/screenshots/mock/02-progress.png" width="215" alt="Progress" />

<sub><b>Today</b> &nbsp;·&nbsp; <b>Body map</b> &nbsp;·&nbsp; <b>Live session</b> &nbsp;·&nbsp; <b>Progress</b></sub>

<br/>
<br/>

<img src="docs/screenshots/mock/05-history.png" width="215" alt="History" />
<img src="docs/screenshots/mock/06-library.png" width="215" alt="Library" />
<img src="docs/screenshots/mock/07-routines.png" width="215" alt="Routines" />
<img src="docs/screenshots/mock/08-settings.png" width="215" alt="Settings" />

<img src="docs/screenshots/mock/09-notes.png" width="215" alt="Journal" />
<img src="docs/screenshots/mock/10-places.png" width="215" alt="Places" />
<img src="docs/screenshots/mock/11-body.png" width="215" alt="Muscle timeline" />
<img src="docs/screenshots/mock/12-profile.png" width="215" alt="Profile" />

<sub><b>History</b> &nbsp;·&nbsp; <b>Library</b> &nbsp;·&nbsp; <b>Routines</b> &nbsp;·&nbsp; <b>Settings</b></sub>

</details>

</div>

---

## ⚡ Why Open-GYM?

Most gym trackers are bloated dashboards that force account registration, harvest your biometric and workout metrics, push monthly recurring subscriptions, and bombard you with ads.

**Open-GYM is built differently:**
- **Zero Internet Permission**: The app doesn't declare `android.permission.INTERNET`. It is physically impossible for the app to leak or send your data over the wire.
- **Built for the Gym Floor**: Large tap targets, dark-mode first, instant logging, and haptic feedback.
- **Survives Reboots**: Close the app, restart the phone mid-workout, and pick up right where you stopped.
- **Full Vector Art**: Lightweight vector illustrations that scale crisply on any DPI without network streaming.

---

## 🚀 Key Features

<table>
<tr>
<td width="50%" valign="top">

### 🏋️ Seamless Training
- **Interactive Anatomical Body Map**: Tap front and back muscle groups to dynamically generate workouts.
- **Precision Logging**: Reps, weights, RPE, RIR, warmup sets, working sets, drop sets, and failure tracking.
- **Dynamic Rest Timer**: Intelligent countdown alarms with custom audio cue support.
- **Lock-Screen Controls**: Control active sessions, mark sets complete, and check rest times directly from your lock screen without unlocking.
- **Plate Calculator**: Tells you exactly how many plates to load per side based on barbell weight and available inventory.
- **Supersets & Circuits**: Chain exercises consecutively and skip intermediate rests effortlessly.

</td>
<td width="50%" valign="top">

### 📊 Deep Analytics & Progress
- **Real Progress Curves**: Estimated 1RM projections, volume volume-over-time graphs, and workout duration trends.
- **GitHub-Style Heatmap**: Visual calendar grid celebrating consistency and training streaks.
- **Muscle Split Analysis**: 30-day anatomical workload distribution heatmap.
- **Body Measurements**: Track bodyweight and 10 anatomical circumferences with dedicated trend lines.
- **Progress Photo Timeline**: Visual before/after side-by-side comparisons stored strictly in local sandbox storage.
- **Medal System**: 20 unlockable 3D interactive medals for fitness milestones.

</td>
</tr>
<tr>
<td width="50%" valign="top">

### 📚 Extensive Exercise Library & Tools
- **500+ Built-In Exercises**: Complete with animated vector guides, targeting muscles, and technique instructions.
- **Custom Exercises & Media**: Add your own routines, equipment, and attach personal demonstration GIFs/videos.
- **Locations & Gear**: Configure home vs. commercial gym equipment presets so you only see valid workouts.
- **6 Integrated Calculators**: 1RM, Barbell Plates, BMI, TDEE/Macro Planner, Body Fat %, and Warm-Up Ramp.
- **5 Native Android Home Widgets**: Today's workout, weekly overview, activity heatmap, metrics, and muscle load.

</td>
<td width="50%" valign="top">

### 🛡️ Uncompromised Privacy & Data Portability
- **100% Offline & Private**: Zero accounts, zero analytics SDKs, zero advertising telemetry.
- **Comprehensive Import/Export**: One-click full ZIP backup (all workouts, body measurements, and media).
- **Universal Migration**: Seamlessly import your history from **Hevy**, **Strong**, **Lyfta**, **FitNotes**, or standard CSVs.
- **Multi-Lingual**: Built-in translations across 16 global languages with both Light and OLED Dark themes.
- **One-Tap Wipe**: Complete, unrecoverable local data deletion anytime you choose.

</td>
</tr>
</table>

---

## 🛠️ Technology Stack & Architecture

Open-GYM combines the expressiveness of **Flutter** with high-performance native **Kotlin** Android integration:

```
Open-GYM/
├── android/               # Native Android integration
│   ├── app/src/main/
│   │   ├── kotlin/        # Kotlin 2.1+ providers & receivers
│   │   │   ├── MainActivity.kt         # MethodChannel bridges, rotary dial & haptics
│   │   │   ├── LiveNotifier.kt         # Foreground lockscreen media-style notification
│   │   │   ├── ThemedWidget.kt         # Dynamic theme styling for homescreen widgets
│   │   │   └── *WidgetProvider.kt      # AppWidgetProvider implementations
│   │   └── AndroidManifest.xml         # Clean manifest (NO INTERNET PERMISSION)
│   └── build.gradle.kts   # Modern Gradle Kotlin DSL
├── lib/                   # Flutter application source
│   ├── catalog/           # 500+ exercise definitions & anatomical SVG paths
│   ├── l10n/              # ARB internationalization files (16 languages)
│   ├── models/            # Immutable data classes (Workout, Set, Exercise, Profile)
│   ├── screens/           # Modular UI screens
│   ├── services/          # Local SQLite storage, JSON/ZIP backups, Alarm engine
│   └── state/             # FitState global state orchestrator
└── assets/                # Local offline assets (art vectors, audio alarms, shaders)
```

---

## 📦 Building from Source

### Prerequisites
- [Flutter SDK](https://flutter.dev) (v3.41.0 or newer)
- [Android SDK](https://developer.android.com) (API 36 / Android 16 target, minimum API 24)
- Java 17 (Temurin recommended)

### Build Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/smartworldarafath/Open-GYM.git
   cd Open-GYM
   ```

2. **Fetch dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run local test suite (350+ tests):**
   ```bash
   flutter test
   ```

4. **Build release APK (Split ABI for minimal bundle size):**
   ```bash
   flutter build apk --release --split-per-abi
   ```
   *Generated binaries will be located under `build/app/outputs/flutter-apk/`.*

---

## 🤝 Contributing

Bug reports, ideas and pull requests are welcome. For anything big, open an
[issue](https://github.com/smartworldarafath/Open-GYM/issues) first. Translations are plain files in [lib/l10n](lib/l10n), and
[TRANSLATING.md](TRANSLATING.md) explains how to add one.

---

## 📄 License & Credits

- **Code**: Licensed under the **[GNU General Public License v3.0 (GPL-3.0)](LICENSE)**.
- **Exercise Illustrations**: Sourced from [Workout Guide](https://github.com/bryllim/workout-guide) by **Bryl Lim**, based on [Everkinetic](https://github.com/everkinetic/data), under **[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)**.
- **Typography**: [Nunito Font](https://github.com/googlefonts/nunito) under the **SIL Open Font License**.
- Detailed attribution notes are documented in **[CREDITS.md](CREDITS.md)**.
