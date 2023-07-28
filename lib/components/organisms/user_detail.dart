import 'package:flutter/material.dart';
import 'package:frontendtest/components/atoms/profile_avatar.dart';
import 'package:frontendtest/components/molecules/user_profile_header.dart';

/// user detail organism
class UserDetail extends StatelessWidget {
  /// user detail constructor
  const UserDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ProfileAvatar(),
        const SizedBox(width: 6),
        const Expanded(
          child: UserProfileHeader(name: '안녕 나 응애', day: '1일전'),
        ),
        const SizedBox(width: 8),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
          color: const Color(0xFF909DB5),
        )
      ],
    );
  }
}
