import 'package:flutter/material.dart';

abstract final class AppColors {
  // Base
  static const background = Color(0xFF0D0D0D);
  static const surface = Color(0xFF1A1A2E);
  static const surfaceLight = Color(0xFF252547);

  // Primary
  static const primary = Color(0xFF00FF88);
  static const secondary = Color(0xFFFF00FF);
  static const accent = Color(0xFF00BFFF);

  // Status
  static const warning = Color(0xFFFFFF00);
  static const error = Color(0xFFFF3333);
  static const success = Color(0xFF00FF88);

  // Text
  static const textPrimary = Color(0xFFFFFFFF);
  static const textSecondary = Color(0xFFB0B0B0);
  static const textMuted = Color(0xFF666666);

  // Lane colors (up to 12 players)
  static const laneColors = <Color>[
    Color(0xFF00FF88), //  1: Neon Green
    Color(0xFFFF00FF), //  2: Neon Pink
    Color(0xFF00BFFF), //  3: Neon Blue
    Color(0xFFFFFF00), //  4: Neon Yellow
    Color(0xFFFF6B6B), //  5: Coral Red
    Color(0xFFA78BFA), //  6: Purple
    Color(0xFFFF8C00), //  7: Orange
    Color(0xFF00FFD1), //  8: Cyan
    Color(0xFFFF1493), //  9: Hot Pink
    Color(0xFF7FFF00), // 10: Chartreuse
    Color(0xFFFF4500), // 11: Red Orange
    Color(0xFF1E90FF), // 12: Dodger Blue
  ];

  /// Returns the lane color for a given player index (0-based).
  /// Wraps around if index exceeds available colors.
  static Color laneColor(int index) => laneColors[index % laneColors.length];

  /// Neon glow color with reduced opacity for shadow effects.
  static Color glow(Color color, [double opacity = 0.6]) =>
      color.withValues(alpha: opacity);
}
