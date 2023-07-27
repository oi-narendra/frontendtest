import 'package:flutter/material.dart';

/// tag component
/// [Tag] is the component to chip tag
/// [label] is the label text of the tag
/// [onPressed] is the function to be called when the tag is pressed
class Tag extends StatelessWidget {
  /// tag constructor
  const Tag({
    required this.label,
    this.onPressed,
    super.key,
  });

  /// label text
  final String label;

  /// on pressed function
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        decoration: BoxDecoration(
          color: const Color(0xFFF7F8FA),
          border: Border.all(color: const Color(0xFFCED3DE), width: 0.5),
          borderRadius: BorderRadius.circular(999),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Color(0xFF5A6B87),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
