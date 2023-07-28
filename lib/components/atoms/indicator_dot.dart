import 'package:flutter/material.dart';

/// indicator dot atom
/// [IndicatorDot] is the component to show indicator dot
/// [color] is the color of the dot
/// [size] is the size of the dot
class IndicatorDot extends StatelessWidget {
  /// indicator dot constructor
  const IndicatorDot({
    required this.color,
    this.size = 6,
    super.key,
  });

  /// color
  final Color color;

  /// size
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(size),
      ),
    );
  }
}
