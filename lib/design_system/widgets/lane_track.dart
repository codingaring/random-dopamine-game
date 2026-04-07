import 'package:flutter/material.dart';

import '../colors.dart';
import '../spacing.dart';
import '../typography.dart';

class LaneTrack extends StatelessWidget {
  const LaneTrack({
    super.key,
    required this.playerIndex,
    required this.progress,
    this.label,
    this.child,
  });

  /// 0-based player index for color assignment.
  final int playerIndex;

  /// Race progress from 0.0 to 1.0.
  final double progress;

  /// Optional label displayed at the start of the lane.
  final String? label;

  /// Character widget to display on the lane.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final color = AppColors.laneColor(playerIndex);

    return Container(
      height: AppSpacing.laneHeight,
      margin: const EdgeInsets.symmetric(vertical: AppSpacing.laneGap),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppSpacing.radiusSm),
        border: Border.all(
          color: color.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Stack(
        children: [
          // Progress bar
          FractionallySizedBox(
            widthFactor: progress.clamp(0.0, 1.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSpacing.radiusSm),
                gradient: LinearGradient(
                  colors: [
                    color.withValues(alpha: 0.15),
                    color.withValues(alpha: 0.05),
                  ],
                ),
              ),
            ),
          ),
          // Lane label
          if (label != null)
            Positioned(
              left: AppSpacing.sm,
              top: 0,
              bottom: 0,
              child: Center(
                child: Text(
                  label!,
                  style: AppTypography.withNeon(AppTypography.label, color),
                ),
              ),
            ),
          // Character
          if (child != null)
            AnimatedAlign(
              alignment: Alignment(
                -1.0 + 2.0 * progress.clamp(0.0, 1.0),
                0.0,
              ),
              duration: const Duration(milliseconds: 50),
              child: child!,
            ),
        ],
      ),
    );
  }
}
