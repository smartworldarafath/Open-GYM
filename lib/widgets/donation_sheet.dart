import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/app_colors.dart';
import '../theme/app_theme.dart';
import 'glass.dart';
import 'ui_kit.dart';

Future<void> showDonationSheet(BuildContext context) => showAppSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const DonationSheet(),
    );

class DonationSheet extends StatefulWidget {
  const DonationSheet({super.key});

  @override
  State<DonationSheet> createState() => _DonationSheetState();
}

class _DonationSheetState extends State<DonationSheet> {
  int _selectedIndex = 0;

  static const _methods = [
    (
      id: 'support_kori',
      name: 'Support Kori',
      asset: 'assets/donations/support_kori.jpg',
      url: 'https://www.supportkori.com/arafathrahman',
      account: 'https://www.supportkori.com/arafathrahman',
      accountLabel: 'supportkori.com/arafathrahman',
      instruction: 'Tap QR code or button to donate online',
      icon: PhosphorIconsFill.heart,
    ),
    (
      id: 'nsave',
      name: 'Nsave',
      asset: 'assets/donations/nsave.jpg',
      url: '',
      account: '@arafath_rahman9',
      accountLabel: '@arafath_rahman9',
      instruction: 'Tap QR code or button to copy handle',
      icon: PhosphorIconsFill.bank,
    ),
    (
      id: 'payoneer',
      name: 'Payoneer',
      asset: 'assets/donations/payoneer.jpg',
      url: '',
      account: 'arafathrahman710@gmail.com',
      accountLabel: 'arafathrahman710@gmail.com (ID: 70366820)',
      instruction: 'Tap QR code or button to copy email',
      icon: PhosphorIconsFill.creditCard,
    ),
    (
      id: 'redotpay',
      name: 'Redotpay',
      asset: 'assets/donations/redotpay.jpg',
      url: '',
      account: '1965421414',
      accountLabel: 'ID: 1965421414',
      instruction: 'Tap QR code or button to copy ID',
      icon: PhosphorIconsFill.wallet,
    ),
  ];

  Future<void> _handleAction(BuildContext context, dynamic current) async {
    final gc = context.gc;
    if (current.url.isNotEmpty) {
      final uri = Uri.parse(current.url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    } else {
      Clipboard.setData(ClipboardData(text: current.account));
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${current.name} account copied: ${current.account}'),
            duration: const Duration(seconds: 2),
            backgroundColor: gc.accent,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final gc = context.gc;
    final current = _methods[_selectedIndex];

    return Container(
      constraints: BoxConstraints(maxHeight: MediaQuery.sizeOf(context).height * 0.88),
      padding: EdgeInsets.fromLTRB(20, 12, 20, 24 + MediaQuery.paddingOf(context).bottom),
      decoration: BoxDecoration(
        color: gc.bgRaised,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(child: SheetHandle()),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: gc.accentSoft,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(PhosphorIconsFill.coffee, color: gc.accent, size: 22),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Buy Me a Coffee',
                          style: AppTheme.f(18, weight: FontWeight.w800, color: gc.text)),
                      const SizedBox(height: 2),
                      Text('Support Arafath Rahman & Open GYM',
                          style: AppTheme.f(12, weight: FontWeight.w500, color: gc.textSecondary)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            // Payment selector tabs
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              child: Row(
                children: [
                  for (int i = 0; i < _methods.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: GestureDetector(
                        onTap: () => setState(() => _selectedIndex = i),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                          decoration: BoxDecoration(
                            color: _selectedIndex == i ? gc.accent : gc.bgRaised2,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: _selectedIndex == i ? gc.accent : gc.border,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                _methods[i].icon,
                                size: 15,
                                color: _selectedIndex == i ? gc.onAccent : gc.textSecondary,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                _methods[i].name,
                                style: AppTheme.f(
                                  12.5,
                                  weight: FontWeight.w700,
                                  color: _selectedIndex == i ? gc.onAccent : gc.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            // Card displaying the selected QR
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: gc.bg,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: gc.border),
              ),
              child: Column(
                children: [
                  Text(
                    current.name,
                    style: AppTheme.f(16, weight: FontWeight.w800, color: gc.text),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    current.instruction,
                    textAlign: TextAlign.center,
                    style: AppTheme.f(12, weight: FontWeight.w500, color: gc.textSecondary),
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: () => _handleAction(context, current),
                    child: Container(
                      width: 230,
                      height: 230,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.12),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        current.asset,
                        fit: BoxFit.contain,
                        errorBuilder: (_, _, _) => Center(
                          child: Icon(PhosphorIconsRegular.warningCircle, color: gc.textTertiary, size: 36),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: gc.bgRaised,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: gc.border),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            current.accountLabel,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTheme.f(12, weight: FontWeight.w600, color: gc.text),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          current.url.isNotEmpty ? PhosphorIconsRegular.arrowUpRight : PhosphorIconsRegular.copy,
                          size: 14,
                          color: gc.textSecondary,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  GestureDetector(
                    onTap: () => _handleAction(context, current),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: gc.accent,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            current.url.isNotEmpty ? PhosphorIconsRegular.arrowUpRight : PhosphorIconsRegular.copy,
                            color: gc.onAccent,
                            size: 16,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            current.url.isNotEmpty ? 'Open Support Kori Page' : 'Copy ${current.name} Account',
                            style: AppTheme.f(13.5, weight: FontWeight.w700, color: gc.onAccent),
                          ),
                        ],
                      ),
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
}
