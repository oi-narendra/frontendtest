import 'package:flutter/material.dart';

/// user profile header molecule
class UserProfileHeader extends StatelessWidget {
  /// user profile header constructor

  const UserProfileHeader({
    required this.name,
    required this.day,
    this.showVerified = true,
    super.key,
  });

  /// name
  final String name;

  /// show verified
  final bool showVerified;

  /// show verified
  final String day;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(width: 4),
        if (showVerified) ...[
          Icon(
            Icons.check_circle,
            size: 16,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(width: 4),
        ],
        Text(
          day,
          style: const TextStyle(
            color: Color(0xFF909DB5),
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
