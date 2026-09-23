import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../l10n/l10n.dart';
import '../state/fit_state.dart';
import '../theme/app_theme.dart';
import 'app_shell.dart';

class GymManeApp extends StatelessWidget {
  const GymManeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: fit,
      builder: (context, _) => MaterialApp(
        title: 'Open GYM',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightWith(fit.uiColorPref),
        darkTheme: AppTheme.darkWith(fit.uiColorPref),
        themeMode: fit.themeMode,
        locale: fit.locale,
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: const AppShell(),
      ),
    );
  }
}
