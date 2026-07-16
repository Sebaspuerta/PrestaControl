import 'package:flutter/material.dart';

/// Paleta de colores de PrestaControl.
abstract class AppColors {
  AppColors._();

  // Fondo
  static const Color bgBase = Color(0xFF0A0A0C);
  static const Color bgGradientEnd = Color(0xFF1A1A1E);

  // Glassmorphism
  static const Color glassSurface = Color(0xFF15151A);
  static const Color glassBorder = Color(0x33D4AF6A);

  // Dorado
  static const Color goldStart = Color(0xFFE8C87A);
  static const Color goldEnd = Color(0xFFC9A24B);
  static const Color goldSoft = Color(0xFFD4AF6A);

  // Estados de cartera
  static const Color alDia = Color(0xFF4ADE80);
  static const Color mora = Color(0xFFD98E3F);
  static const Color critico = Color(0xFFC1554A);

  // Texto
  static const Color textPrimary = Color(0xFFF5F1E8);
  static const Color textSecondary = Color(0xFF9A9A9F);
  static const Color textMuted = Color(0xFF6B6B70);

  // Gradientes
  static const LinearGradient goldGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [goldStart, goldEnd],
  );

  static const LinearGradient bgGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [bgBase, bgGradientEnd],
  );

  static const LinearGradient criticoGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [critico, Color(0xFF8E3E36)],
  );
}
