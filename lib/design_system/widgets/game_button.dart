import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../colors.dart';
import '../spacing.dart';
import '../typography.dart';

class GameButton extends StatelessWidget {
  const GameButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color = AppColors.primary,
    this.fontSize,
  });

  final String label;
  final VoidCallback onPressed;
  final Color color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.lightImpact();
        onPressed();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md,
        ),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
          border: Border.all(color: color, width: 2),
          boxShadow: [
            BoxShadow(
              color: AppColors.glow(color),
              blurRadius: 12,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: AppColors.glow(color, 0.3),
              blurRadius: 24,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Text(
          label,
          style: AppTypography.withNeon(
            fontSize != null
                ? AppTypography.body.copyWith(fontSize: fontSize)
                : AppTypography.body,
            color,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
