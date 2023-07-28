import 'package:flutter/material.dart';
import 'package:frontendtest/components/atoms/indicator_dot.dart';

/// user description organism
class UserDescription extends StatelessWidget {
  /// user description constructor
  const UserDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '165cm',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w400,
                color: const Color(0xFF919EB6),
              ),
        ),
        const SizedBox(width: 4),
        const IndicatorDot(
          color: Color(0xFF919EB6),
          size: 2,
        ),
        const SizedBox(width: 4),
        Text(
          '53kg',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w400,
                color: const Color(0xFF919EB6),
              ),
        ),
      ],
    );
  }
}
