import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

abstract final class AppTypography {
  static const _fontFamily = 'Press Start 2P';

  // Display — game title, big announcements
  static TextStyle get display => GoogleFonts.getFont(
        _fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        height: 1.4,
      );

  // Headline — race results, winner text
  static TextStyle get headline => GoogleFonts.getFont(
        _fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        height: 1.4,
      );

  // Body — general text, instructions
  static TextStyle get body => GoogleFonts.getFont(
        _fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColors.textPrimary,
        height: 1.5,
      );

  // Label — lane labels, +1 floating text, small UI
  static TextStyle get label => GoogleFonts.getFont(
        _fontFamily,
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: AppColors.textSecondary,
        height: 1.3,
      );

  /// Returns a style with a neon glow color applied.
  static TextStyle withNeon(TextStyle style, Color neonColor) =>
      style.copyWith(
        color: neonColor,
        shadows: [
          Shadow(color: neonColor.withValues(alpha: 0.8), blurRadius: 8),
          Shadow(color: neonColor.withValues(alpha: 0.4), blurRadius: 16),
        ],
      );
}
