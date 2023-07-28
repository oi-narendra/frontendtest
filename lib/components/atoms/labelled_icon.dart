import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// labelled icon atom
/// [LabelledIcon] is the component to show icon with label
/// [iconPath] is the icon to be shown
/// [label] is the label text of the icon
class LabelledIcon extends StatelessWidget {
  /// labelled icon constructor
  const LabelledIcon({
    required this.iconPath,
    required this.label,
    this.iconSize = 24,
    this.size = 32,
    super.key,
  });

  /// icon
  final String iconPath;

  /// label
  final String label;

  /// icon size
  final double iconSize;

  /// size of the widget
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(iconPath),
        const SizedBox(width: 4),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF909DB5),
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
