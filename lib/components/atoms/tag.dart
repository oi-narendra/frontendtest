import 'package:flutter/material.dart';

/// tag component
/// [Tag] is the component to chip tag
/// [label] is the label text of the tag
/// [onPressed] is the function to be called when the tag is pressed
/// [backgroundColor] is the background color of the tag
/// [textColor] is the text color of the tag
/// [borderColor] is the border color of the tag
class Tag extends StatelessWidget {
  /// tag constructor
  const Tag({
    required this.label,
    this.backgroundColor = const Color(0xFFF7F8FA),
    this.textColor = const Color(0xFF5A6B87),
    this.borderColor = const Color(0xFFCED3DE),
    this.onPressed,
    super.key,
  });

  /// label text
  final String label;

  /// background color
  final Color backgroundColor;

  /// text color
  final Color textColor;

  /// border color
  final Color borderColor;

  /// on pressed function
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(999),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
