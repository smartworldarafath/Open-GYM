import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_theme.dart';
import 'svg_icon.dart';
import 'ui_kit.dart';

/// Apple / Prismal inspired Liquid Glass core library for Open-GYM.
/// Implements physically derived optical glass:
/// - Deep Gaussian Backdrop Blur (sigma 18-22)
/// - Pure Translucent Optical Tinting (no opaque fill)
/// - Dual Blinn-Phong Directional Specular Rim (Key Light + Ambient Fill)
/// - Top Meniscus Curvature Sheen (Fresnel Glancing Highlight)
/// - Interactive Spring Press Feedback (0.96 scale)

class LiquidGlassBox extends StatelessWidget {
  const LiquidGlassBox({
    super.key,
    this.child,
    this.radius = 20.0,
    this.borderRadius,
    this.shape = BoxShape.rectangle,
    this.blur = 18.0,
    this.tint,
    this.specular = true,
    this.meniscus = true,
    this.interactive = false,
    this.onTap,
    this.padding,
    this.width,
    this.height,
    this.alignment,
  });

  final Widget? child;
  final double radius;
  final BorderRadius? borderRadius;
  final BoxShape shape;
  final double blur;
  final Color? tint;
  final bool specular;
  final bool meniscus;
  final bool interactive;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    final gc = context.gc;
    final dark = gc.bg.computeLuminance() < 0.5;
    final br = shape == BoxShape.circle ? null : (borderRadius ?? BorderRadius.circular(radius));

    // Optical glass base tint: clean, light-transmitting frosted glass
    final glassTint = tint ??
        (dark
            ? Colors.white.withValues(alpha: 0.10)
            : Colors.white.withValues(alpha: 0.28));

    Widget body = Stack(
      children: [
        // 1. Optical Backdrop Blur & Base Glass Tint
        Positioned.fill(
          child: BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: blur, sigmaY: blur),
            child: Container(
              decoration: BoxDecoration(
                shape: shape,
                borderRadius: br,
                color: glassTint,
              ),
            ),
          ),
        ),

        // 2. Dual Blinn-Phong Specular Rim (Key + Ambient Fill)
        if (specular)
          Positioned.fill(
            child: IgnorePointer(
              child: CustomPaint(
                painter: _LiquidGlassRimPainter(
                  shape: shape,
                  borderRadius: br ?? BorderRadius.circular(radius),
                  dark: dark,
                ),
              ),
            ),
          ),

        // 3. Top Meniscus Curvature Sheen (Fresnel Glancing Highlight)
        if (meniscus)
          Positioned.fill(
            child: IgnorePointer(
              child: Container(
                decoration: BoxDecoration(
                  shape: shape,
                  borderRadius: br,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withValues(alpha: dark ? 0.22 : 0.45),
                      Colors.white.withValues(alpha: dark ? 0.05 : 0.12),
                      Colors.transparent,
                    ],
                    stops: const [0.0, 0.35, 0.75],
                  ),
                ),
              ),
            ),
          ),

        // 4. Content Layer
        if (child != null)
          Container(
            padding: padding,
            alignment: alignment,
            child: child,
          ),
      ],
    );

    // Shape Clipping
    if (shape == BoxShape.circle) {
      body = ClipOval(child: body);
    } else {
      body = ClipRRect(borderRadius: br ?? BorderRadius.circular(radius), child: body);
    }

    // Outer Sizing
    if (width != null || height != null) {
      body = SizedBox(width: width, height: height, child: body);
    }

    // Interactive Tap Feedback
    if (interactive || onTap != null) {
      return Pressable(
        onTap: onTap ?? () {},
        scale: 0.96,
        child: body,
      );
    }

    return body;
  }
}

/// Dedicated Apple-style Liquid Glass Pill Action Button.
class LiquidGlassButton extends StatelessWidget {
  const LiquidGlassButton({
    super.key,
    required this.label,
    required this.onTap,
    this.icon,
    this.height = 52.0,
    this.tint,
    this.textColor,
    this.prominent = false,
  });

  final String label;
  final VoidCallback onTap;
  final List<IconPath>? icon;
  final double height;
  final Color? tint;
  final Color? textColor;
  final bool prominent;

  @override
  Widget build(BuildContext context) {
    final gc = context.gc;
    final dark = gc.bg.computeLuminance() < 0.5;

    // High contrast text on top of glass
    final fg = textColor ?? (dark ? Colors.white : gc.text);

    // Pristine glass tint: translucent white base with soft specular sheen
    final glassTint = tint ??
        (prominent
            ? gc.accent.withValues(alpha: dark ? 0.32 : 0.22)
            : (dark
                ? Colors.white.withValues(alpha: 0.12)
                : Colors.white.withValues(alpha: 0.32)));

    return Pressable(
      onTap: onTap,
      scale: 0.96,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // 1. Deep Optical Backdrop Filter
            Positioned.fill(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: glassTint,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: dark ? 0.25 : 0.06),
                        blurRadius: 14,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // 2. Dual Blinn-Phong Specular Rim Border
            Positioned.fill(
              child: IgnorePointer(
                child: CustomPaint(
                  painter: _LiquidGlassRimPainter(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(100),
                    dark: dark,
                  ),
                ),
              ),
            ),

            // 3. Top Meniscus Sheen Gradient
            Positioned.fill(
              child: IgnorePointer(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withValues(alpha: dark ? 0.30 : 0.55),
                        Colors.white.withValues(alpha: dark ? 0.08 : 0.16),
                        Colors.transparent,
                      ],
                      stops: const [0.0, 0.40, 0.85],
                    ),
                  ),
                ),
              ),
            ),

            // 4. Inner Depth Refraction Center Pool
            Positioned.fill(
              child: IgnorePointer(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: RadialGradient(
                      center: Alignment.center,
                      radius: 0.9,
                      colors: [
                        Colors.white.withValues(alpha: dark ? 0.08 : 0.14),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // 5. Button Label & Icon Content
            Container(
              height: height,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[
                    SvgPathIcon(icon!, size: 15, color: fg),
                    const SizedBox(width: 9),
                  ],
                  Flexible(
                    child: Text(
                      label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTheme.f(
                        15.5,
                        weight: FontWeight.w700,
                        color: fg,
                        letterSpacing: 0.25,
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

/// Circular Liquid Glass Action Button (for Top-Right bar actions).
class LiquidGlassCircleAction extends StatelessWidget {
  const LiquidGlassCircleAction({
    super.key,
    required this.child,
    required this.onTap,
    this.size = 38.0,
    this.tint,
  });

  final Widget child;
  final VoidCallback onTap;
  final double size;
  final Color? tint;

  @override
  Widget build(BuildContext context) {
    final gc = context.gc;
    final dark = gc.bg.computeLuminance() < 0.5;

    final glassTint = tint ??
        (dark
            ? Colors.white.withValues(alpha: 0.12)
            : Colors.white.withValues(alpha: 0.32));

    return Pressable(
      onTap: onTap,
      scale: 0.92,
      child: ClipOval(
        child: SizedBox(
          width: size,
          height: size,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // 1. Deep Optical Backdrop Filter
              Positioned.fill(
                child: BackdropFilter(
                  filter: ui.ImageFilter.blur(sigmaX: 18, sigmaY: 18),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: glassTint,
                    ),
                  ),
                ),
              ),

              // 2. Circular Specular Rim Border
              Positioned.fill(
                child: IgnorePointer(
                  child: CustomPaint(
                    painter: _LiquidGlassRimPainter(
                      shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(size),
                      dark: dark,
                    ),
                  ),
                ),
              ),

              // 3. Top Crescent Meniscus Sheen
              Positioned.fill(
                child: IgnorePointer(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withValues(alpha: dark ? 0.30 : 0.55),
                          Colors.white.withValues(alpha: dark ? 0.05 : 0.12),
                          Colors.transparent,
                        ],
                        stops: const [0.0, 0.40, 0.85],
                      ),
                    ),
                  ),
                ),
              ),

              // 4. Center Icon
              Center(child: child),
            ],
          ),
        ),
      ),
    );
  }
}

/// Floating Liquid Glass Dock Container (for Settings docks, switchers).
class LiquidGlassDock extends StatelessWidget {
  const LiquidGlassDock({
    super.key,
    required this.child,
    this.height = 44.0,
    this.padding = const EdgeInsets.all(4.0),
    this.tint,
  });

  final Widget child;
  final double height;
  final EdgeInsetsGeometry padding;
  final Color? tint;

  @override
  Widget build(BuildContext context) {
    final gc = context.gc;
    final dark = gc.bg.computeLuminance() < 0.5;

    final glassTint = tint ??
        (dark
            ? Colors.white.withValues(alpha: 0.10)
            : Colors.white.withValues(alpha: 0.30));

    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Stack(
        children: [
          // 1. Deep Optical Backdrop Blur
          Positioned.fill(
            child: BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 18, sigmaY: 18),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: glassTint,
                ),
              ),
            ),
          ),

          // 2. Dual Blinn-Phong Specular Rim Border
          Positioned.fill(
            child: IgnorePointer(
              child: CustomPaint(
                painter: _LiquidGlassRimPainter(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(100),
                  dark: dark,
                ),
              ),
            ),
          ),

          // 3. Top Meniscus Sheen
          Positioned.fill(
            child: IgnorePointer(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withValues(alpha: dark ? 0.25 : 0.45),
                      Colors.transparent,
                    ],
                    stops: const [0.0, 0.5],
                  ),
                ),
              ),
            ),
          ),

          // 4. Content Dock Elements
          Container(
            height: height,
            padding: padding,
            child: child,
          ),
        ],
      ),
    );
  }
}

/// Custom painter rendering Dual Blinn-Phong directional specular border.
class _LiquidGlassRimPainter extends CustomPainter {
  final BoxShape shape;
  final BorderRadius borderRadius;
  final bool dark;

  _LiquidGlassRimPainter({
    required this.shape,
    required this.borderRadius,
    required this.dark,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    // Key Light (top-left 135 deg) + Fill Light (bottom-right ambient reflection)
    final rimPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.15
      ..shader = ui.Gradient.linear(
        Offset(size.width * 0.15, 0),
        Offset(size.width * 0.85, size.height),
        [
          Colors.white.withValues(alpha: dark ? 0.50 : 0.75), // Key light specular
          Colors.white.withValues(alpha: dark ? 0.20 : 0.40),
          Colors.white.withValues(alpha: dark ? 0.08 : 0.15),
          Colors.white.withValues(alpha: dark ? 0.25 : 0.45), // Fill bounce light
        ],
        [0.0, 0.30, 0.70, 1.0],
      );

    if (shape == BoxShape.circle) {
      canvas.drawCircle(rect.center, size.shortestSide / 2 - 0.57, rimPaint);
    } else {
      final rrect = borderRadius.toRRect(rect).deflate(0.57);
      canvas.drawRRect(rrect, rimPaint);
    }
  }

  @override
  bool shouldRepaint(covariant _LiquidGlassRimPainter oldDelegate) =>
      oldDelegate.shape != shape ||
      oldDelegate.borderRadius != borderRadius ||
      oldDelegate.dark != dark;
}
