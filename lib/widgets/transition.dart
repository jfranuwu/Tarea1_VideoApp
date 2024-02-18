import 'dart:math'; 
import 'package:flutter/material.dart';

class ShakeTransition extends StatelessWidget {
  const ShakeTransition({
    Key? key,
    this.duration = const Duration(milliseconds:   700),
    required this.child,
    this.offset =   140.0,
    this.axis = Axis.horizontal,
    this.left = true,
  }) : super(key: key);
  final Widget child;
  final Duration duration;
  final double offset;
  final Axis axis;
  final bool left;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: duration,
      child: child,
      curve: Curves.easeInOut,
      tween: Tween(begin:   1.0, end:   0.0),
      builder: (BuildContext context, double value, Widget? child) {
        return Transform.translate(
          offset: left
              ? Offset(-value * offset, value * offset)
              : Offset(value * offset, -value * -offset),
          child: Transform.scale(
            scale:   1.0 + value *   0.2,
            child: Transform.rotate(
              angle: value *   2 * pi, 
              child: child,
            ),
          ),
        );
      },
    );
  }
}
