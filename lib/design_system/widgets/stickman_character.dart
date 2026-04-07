import 'package:flutter/material.dart';

import '../colors.dart';
import '../spacing.dart';

class StickmanCharacter extends StatelessWidget {
  const StickmanCharacter({
    super.key,
    required this.playerIndex,
    this.size = AppSpacing.characterSize,
  });

  final int playerIndex;
  final double size;

  @override
  Widget build(BuildContext context) {
    final color = AppColors.laneColor(playerIndex);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.glow(color),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Icon(
        Icons.directions_run,
        color: color,
        size: size * 0.8,
      ),
    );
  }
}
