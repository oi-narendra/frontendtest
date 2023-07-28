import 'package:flutter/material.dart';
import 'package:frontendtest/components/atoms/labelled_icon.dart';
import 'package:frontendtest/components/atoms/profile_avatar.dart';
import 'package:frontendtest/components/molecules/user_profile_header.dart';

/// reply item organism
class ReplyItem extends StatelessWidget {
  /// reply item constructor
  const ReplyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileAvatar(
          urlIndex: 1,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                children: [
                  Expanded(
                    child: UserProfileHeader(
                      name: 'ㅇㅅㅇ',
                      day: '1일전',
                      showVerified: false,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.more_horiz),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                '오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 4),
              const Row(
                children: [
                  LabelledIcon(
                    iconPath: 'assets/icons/ic_like_small.svg',
                    label: '5',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
