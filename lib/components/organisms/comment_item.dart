import 'package:flutter/material.dart';
import 'package:frontendtest/components/atoms/labelled_icon.dart';
import 'package:frontendtest/components/atoms/profile_avatar.dart';
import 'package:frontendtest/components/molecules/user_profile_header.dart';
import 'package:frontendtest/components/organisms/reply_item.dart';

/// comment item organism
class CommentItem extends StatelessWidget {
  /// comment item constructor
  const CommentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileAvatar(),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                children: [
                  Expanded(
                    child: UserProfileHeader(name: '안녕 나 응애', day: '1일전'),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.more_horiz),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도\n아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다\n괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 4),
              const Row(
                children: [
                  LabelledIcon(
                    iconPath: 'assets/icons/ic_like_small.svg',
                    label: '5',
                    size: 25,
                    iconSize: 20,
                  ),
                  SizedBox(width: 8),
                  LabelledIcon(
                    iconPath: 'assets/icons/ic_comment_small.svg',
                    label: '2',
                    size: 25,
                    iconSize: 20,
                  ),
                  SizedBox(width: 8),
                ],
              ),
              const SizedBox(height: 12),
              _buildReply(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildReply(BuildContext context) => const ReplyItem();
}
