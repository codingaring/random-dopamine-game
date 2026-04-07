import 'package:flutter/material.dart';

import '../colors.dart';
import '../typography.dart';

/// Floating "+1" text that animates upward and fades out on tap.
class MovementIndicator extends StatefulWidget {
  const MovementIndicator({
    super.key,
    required this.playerIndex,
    this.text = '+1',
    this.onComplete,
  });

  final int playerIndex;
  final String text;
  final VoidCallback? onComplete;

  @override
  State<MovementIndicator> createState() => _MovementIndicatorState();
}

class _MovementIndicatorState extends State<MovementIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fadeAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
    _slideAnimation =
        Tween<Offset>(begin: Offset.zero, end: const Offset(0, -1.5)).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
    _controller.forward().then((_) => widget.onComplete?.call());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = AppColors.laneColor(widget.playerIndex);

    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Text(
          widget.text,
          style: AppTypography.withNeon(AppTypography.label, color),
        ),
      ),
    );
  }
}
