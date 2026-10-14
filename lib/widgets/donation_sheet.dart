import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/app_colors.dart';
import '../theme/app_theme.dart';
import 'glass.dart';
import 'liquid_glass.dart';
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
            // Payment selector animated dock
            _DonationDockSelector(
              methods: _methods,
              selectedIndex: _selectedIndex,
              onSelect: (idx) => setState(() => _selectedIndex = idx),
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
                  LiquidGlassButton(
                    label: current.url.isNotEmpty ? 'Open Support Kori Page' : 'Copy ${current.name} Account',
                    iconData: current.url.isNotEmpty ? PhosphorIconsRegular.arrowUpRight : PhosphorIconsRegular.copy,
                    tint: gc.accent,
                    textColor: gc.onAccent,
                    prominent: true,
                    onTap: () => _handleAction(context, current),
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

class _DonationDockSelector extends StatefulWidget {
  const _DonationDockSelector({
    required this.methods,
    required this.selectedIndex,
    required this.onSelect,
  });

  final List<dynamic> methods;
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  @override
  State<_DonationDockSelector> createState() => _DonationDockSelectorState();
}

class _DonationDockSelectorState extends State<_DonationDockSelector> {
  final ScrollController _scroll = ScrollController();
  final GlobalKey _stackKey = GlobalKey();
  late final List<GlobalKey> _itemKeys;
  double _indicatorLeft = 0;
  double _indicatorWidth = 0;
  bool _ready = false;

  @override
  void initState() {
    super.initState();
    _itemKeys = List.generate(widget.methods.length, (_) => GlobalKey());
    WidgetsBinding.instance.addPostFrameCallback((_) => _recalculate(animate: false));
  }

  @override
  void didUpdateWidget(covariant _DonationDockSelector oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedIndex != widget.selectedIndex) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _recalculate(animate: true));
    }
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  void _recalculate({bool animate = true}) {
    if (!mounted || widget.selectedIndex < 0 || widget.selectedIndex >= _itemKeys.length) return;
    final itemBox = _itemKeys[widget.selectedIndex].currentContext?.findRenderObject() as RenderBox?;
    final stackBox = _stackKey.currentContext?.findRenderObject() as RenderBox?;
    if (itemBox != null && stackBox != null) {
      final localOffset = itemBox.localToGlobal(Offset.zero, ancestor: stackBox);
      setState(() {
        _indicatorLeft = localOffset.dx;
        _indicatorWidth = itemBox.size.width;
        _ready = true;
      });

      if (_scroll.hasClients) {
        final viewportWidth = _scroll.position.viewportDimension;
        final targetScroll = (localOffset.dx + _indicatorWidth / 2) - (viewportWidth / 2);
        final clampedScroll = targetScroll.clamp(0.0, _scroll.position.maxScrollExtent);
        if (animate) {
          _scroll.animateTo(
            clampedScroll,
            duration: const Duration(milliseconds: 320),
            curve: Curves.easeOutCubic,
          );
        } else {
          _scroll.jumpTo(clampedScroll);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final gc = context.gc;
    final dark = gc.bg.computeLuminance() < 0.5;

    return Container(
      decoration: BoxDecoration(
        color: gc.bgRaised2.withValues(alpha: 0.65),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: dark ? Colors.white.withValues(alpha: 0.12) : Colors.black.withValues(alpha: 0.08),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: dark ? 0.25 : 0.05),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
          child: SingleChildScrollView(
            controller: _scroll,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Stack(
              key: _stackKey,
              children: [
                if (_ready)
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 320),
                    curve: Curves.easeOutBack,
                    left: _indicatorLeft,
                    width: _indicatorWidth,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: gc.accent,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: gc.accent.withValues(alpha: 0.38),
                            blurRadius: 12,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < widget.methods.length; i++)
                      GestureDetector(
                        key: _itemKeys[i],
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          HapticFeedback.selectionClick();
                          widget.onSelect(i);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                widget.methods[i].icon,
                                size: 15,
                                color: widget.selectedIndex == i ? gc.onAccent : gc.textSecondary,
                              ),
                              const SizedBox(width: 7),
                              Text(
                                widget.methods[i].name,
                                style: AppTheme.f(
                                  12.5,
                                  weight: widget.selectedIndex == i ? FontWeight.w800 : FontWeight.w600,
                                  color: widget.selectedIndex == i ? gc.onAccent : gc.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
