<div align="center">

# Translating GymMane

Translations happen on
**[Crowdin](https://crowdin.com/project/gymmane)**, right in the browser.
No Dart and no build tools, just text.

<a href="https://crowdin.com/project/gymmane"><img alt="Crowdin" src="https://badges.crowdin.net/gymmane/localized.svg" /></a>

<a href="https://crowdin.com/project/gymmane"><picture><source media="(prefers-color-scheme: dark)" srcset="https://badges.crowdin.net/badge/light/crowdin-on-dark@2x.png" /><img alt="Crowdin | Agile localization for tech companies" src="https://badges.crowdin.net/badge/dark/crowdin-on-light@2x.png" height="40" /></picture></a>

</div>

---

## Translating

1. Open the [project on Crowdin](https://crowdin.com/project/gymmane), sign in
   and pick your language.
2. Translate or fix any string. New strings show up there as soon as they land
   in the app.
3. That's it. Crowdin opens a pull request with every change, and it ships in
   the next version.

Please don't edit the `lib/l10n/app_*.arb` files directly: Crowdin writes those
files, so changes made by hand get overwritten on the next sync.

**Your language isn't there?** Open an
[issue](https://github.com/InlitX/GymMane/issues) and it gets added. Translate
`languageName` first: it's the name shown in the app's language picker
(`Deutsch`, `Français`…).

The exercise catalogue is separate and optional — see below.

## Rules of thumb

- **Leave `{placeholders}` alone.** Anything in curly braces is replaced with a
  real value at runtime. Move it where your language needs it, but never rename
  or translate it.
- **Plurals** look like `{n, plural, =1{1 set} other{{n} sets}}`. Use the forms
  your language actually needs — `zero`, `one`, `two`, `few`, `many`, `other`.
- **Shorter wins.** Most of these strings sit on buttons, chips and tabs on a
  phone. If yours runs much longer than the English, find a tighter wording.
- **CAPS stay CAPS.** Strings written in capitals are section headers in the UI.
- **"GymMane" stays "GymMane".** The app name isn't translated.
- **Address the user informally** — "du" rather than "Sie", "tú" rather than
  "usted".
- **You don't have to finish.** Anything you leave out simply shows in English,
  so nothing ever breaks. Ten strings today, more whenever you feel like it.

## Dates, months and weekdays

Don't translate them — there is nothing to translate. Calendars, month names and
weekday initials come from the system's locale data, so they are already correct
in your language as soon as the app ships it.

## The exercise catalogue (optional, big)

Exercise names and their step-by-step instructions live in their own file, for
example [`lib/l10n/catalog_es.dart`](lib/l10n/catalog_es.dart).
It's a long file, so treat it as a separate, later job: the app falls back to
English names for any language that doesn't have one.

To add one: copy `catalog_es.dart` to `catalog_<code>.dart`, rename the two maps
inside, translate the values, and register them in
[`lib/l10n/l10n.dart`](lib/l10n/l10n.dart):

```dart
const Map<String, Map<String, String>> _catalogNames = {'es': kExerciseNameEs, 'de': kExerciseNameDe};
```

## Questions

Not sure where a string appears? Open an
[issue](https://github.com/smartworldarafath/Open-GYM/issues) — a screenshot of the screen
you're unsure about is the fastest way to get an answer.

---

<div align="center">

Translations ship under the project's [GPL-3.0 license](LICENSE).

</div>
