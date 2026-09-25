import 'package:flutter/material.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../catalog/exercise_catalog.dart';
import '../l10n/l10n.dart';
import '../state/fit_state.dart';
import '../theme/app_colors.dart';
import '../theme/app_theme.dart';
import '../widgets/donation_sheet.dart';
import '../widgets/entrance.dart';
import '../widgets/ui_kit.dart';
import 'update_screen.dart';

const _kVersion = '1.3.0';
const _kAuthor = 'Arafath';
const _kAuthorUrl = 'https://github.com/smartworldarafath';
const _kRepoUrl = 'https://github.com/smartworldarafath/Open-GYM';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gc = context.gc;
    return RiseScope(
      id: 'about',
      once: false,
      child: SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: riseAll([
            ScreenHeader(
              title: t.about,
              onBack: fit.backFromAbout,
              titleSize: 18,
              titleSpacing: 1,
            ),
            const SizedBox(height: 18),
            _hero(context, gc),
            const SizedBox(height: 20),
            _group(gc, [
              (PhosphorIconsRegular.gift, t.freeForever, t.freeForeverWhy),
              (PhosphorIconsRegular.wifiSlash, t.fullyOffline, t.fullyOfflineWhy),
              (PhosphorIconsRegular.export, t.yoursToTake, t.yoursToTakeWhy),
            ]),
            const SizedBox(height: 18),
            _sectionLabel(gc, t.whatsInside),
            const SizedBox(height: 8),
            _group(gc, [
              (PhosphorIconsRegular.barbell, t.exercisesInside(kExercises.length),
                  t.exercisesInsideWhy),
              (PhosphorIconsRegular.calculator, t.calculatorsInside, t.calculatorsInsideWhy),
              (PhosphorIconsRegular.chartLineUp, t.mathInside, t.mathInsideWhy),
            ]),
            const SizedBox(height: 22),
            Text(t.aboutBlurb,
                textAlign: TextAlign.center,
                style: AppTheme.f(12.5, weight: FontWeight.w500, color: gc.textTertiary, height: 1.6)),
            const SizedBox(height: 20),
            _credits(context, gc),
          ]),
        ),
      ),
      ),
    );
  }

  Widget _sectionLabel(GymColors gc, String label) => Text(label.toUpperCase(),
      style: AppTheme.f(10.5, weight: FontWeight.w700, color: gc.textTertiary, letterSpacing: 1.3));

  Widget _hero(BuildContext context, GymColors gc) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const UpdateScreen(currentVersion: _kVersion),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.08),
                    end: Offset.zero,
                  ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOutCubic)),
                  child: child,
                ),
              );
            },
            transitionDuration: const Duration(milliseconds: 320),
          ),
        );
      },
      child: Container(
        height: 178,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: gc.bgRaised,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -46,
              bottom: -56,
              child: Container(
                width: 162,
                height: 162,
                decoration: BoxDecoration(color: gc.accentSoft, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              left: 128,
              top: -42,
              child: Container(
                width: 88,
                height: 88,
                decoration: BoxDecoration(color: gc.emberSoft, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              right: 6,
              top: 14,
              bottom: 14,
              child: Opacity(
                opacity: 0.6,
                child: Image.asset('assets/img/runner.png', fit: BoxFit.fitHeight),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Open GYM',
                      style: AppTheme.f(33, weight: FontWeight.w800, color: gc.text, letterSpacing: -0.5)),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                    decoration: BoxDecoration(
                      color: gc.bgRaised2,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(t.version(_kVersion),
                            style: AppTheme.f(11.5, weight: FontWeight.w600, color: gc.textSecondary)),
                        const SizedBox(width: 6),
                        Icon(PhosphorIconsRegular.arrowsClockwise, size: 12, color: gc.textTertiary),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _group(GymColors gc, List<(IconData, String, String)> rows) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: gc.bgRaised,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          for (int i = 0; i < rows.length; i++)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              decoration: BoxDecoration(
                border: i < rows.length - 1
                    ? Border(bottom: BorderSide(color: gc.border.withValues(alpha: 0.6)))
                    : null,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 1, right: 14),
                    child: SizedBox(
                      width: 22,
                      child: Icon(rows[i].$1, size: 19, color: gc.textSecondary),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(rows[i].$2, style: AppTheme.f(14.5, weight: FontWeight.w600, color: gc.text)),
                        const SizedBox(height: 3),
                        Text(rows[i].$3,
                            style: AppTheme.f(12.5,
                                weight: FontWeight.w500, color: gc.textSecondary, height: 1.4)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _credits(BuildContext context, GymColors gc) {
    final rows = <(IconData, String, String, VoidCallback, Color?)>[
      (
        PhosphorIconsFill.heart,
        'MADE BY',
        _kAuthor,
        () => _open(_kAuthorUrl),
        gc.accent,
      ),
      (
        PhosphorIconsRegular.githubLogo,
        t.sourceCode,
        'smartworldarafath/Open-GYM',
        () => _open(_kRepoUrl),
        null,
      ),
      (
        PhosphorIconsRegular.coffee,
        t.buyCoffee,
        'Support Open-GYM',
        () => showDonationSheet(context),
        null,
      ),
    ];
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: gc.bgRaised,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          for (int i = 0; i < rows.length; i++)
            Semantics(
              button: true,
              link: true,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: rows[i].$4,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    border: i < rows.length - 1
                        ? Border(bottom: BorderSide(color: gc.border.withValues(alpha: 0.6)))
                        : null,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 14),
                        child: SizedBox(
                          width: 22,
                          child: Icon(rows[i].$1, size: 19, color: rows[i].$5 ?? gc.textSecondary),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(rows[i].$2.toUpperCase(),
                                style: AppTheme.f(10,
                                    weight: FontWeight.w700, color: gc.textTertiary, letterSpacing: 1.3)),
                            const SizedBox(height: 4),
                            Text(rows[i].$3,
                                style: AppTheme.f(15.5, weight: FontWeight.w700, color: gc.text)),
                          ],
                        ),
                      ),
                      Icon(PhosphorIconsRegular.arrowUpRight, size: 15, color: gc.textTertiary),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _open(String url) async {
    try {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } catch (_) {}
  }
}
