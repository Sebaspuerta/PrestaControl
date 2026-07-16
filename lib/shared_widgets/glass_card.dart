import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

/// Tarjeta con efecto glassmorphism: fondo con gradiente sutil, borde
/// dorado translúcido, esquinas redondeadas y doble sombra (profundidad +
/// glow dorado).
class GlassCard extends StatelessWidget {
  const GlassCard({
    super.key,
    required this.child,
    this.padding,
    this.gradient,
    this.borderRadius = 20,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Gradient? gradient;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: gradient ??
            LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.glassSurface.withValues(alpha: 0.85),
                AppColors.glassSurface.withValues(alpha: 0.55),
              ],
            ),
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: AppColors.glassBorder, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.35),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
          BoxShadow(
            color: AppColors.goldSoft.withValues(alpha: 0.08),
            blurRadius: 32,
            spreadRadius: -4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: child,
    );
  }
}
