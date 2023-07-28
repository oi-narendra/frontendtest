import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontendtest/components/atoms/labelled_icon.dart';
import 'package:frontendtest/components/atoms/profile_avatar.dart';
import 'package:frontendtest/components/atoms/tag.dart';
import 'package:frontendtest/components/molecules/app_bar.dart';
import 'package:frontendtest/components/molecules/carousel.dart';
import 'package:frontendtest/components/molecules/comment_box.dart';
import 'package:frontendtest/components/molecules/user_profile_header.dart';
import 'package:frontendtest/components/organisms/comment_item.dart';
import 'package:frontendtest/components/organisms/user_description.dart';

/// post detail page
class PostDetailPage extends StatelessWidget {
  /// post detail page constructor
  const PostDetailPage({super.key});

  /// tags for the post
  static const postTags = [
    '#2023',
    '#TODAYISMONDAY',
    '#TOP',
    '#POPS!',
    '#WOW',
    '#ROW'
  ];

  /// carousel images
  static const postImages = [
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: Appbar(
          title: '자유톡',
          actions: [
            AppBarAction(
              icon: CupertinoIcons.bell,
              onPressed: () {
                debugPrint('notification button pressed');
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildPostDetail(context),
              _buildPostImages(),
              _buildPostActions(),
              const Divider(height: 2, thickness: 2),
              _buildPostComments(context),
              const CommentBox()
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildPostComments(BuildContext context) {
    return const Padding(padding: EdgeInsets.all(16), child: CommentItem());
  }

  Carousel _buildPostImages() => const Carousel(images: postImages);

  Widget _buildPostDetail(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const ProfileAvatar(),
                const SizedBox(width: 6),
                const Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UserProfileHeader(
                        name: '안녕 나 응애',
                        day: '1일전',
                      ),
                      SizedBox(height: 4),
                      UserDescription()
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Tag(
                  label: '팔로우',
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  borderColor: Theme.of(context).colorScheme.secondary,
                  textColor: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 16),
            Text(
              '지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어? \n\n후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아???\n\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 16),
            Wrap(
              runSpacing: 8,
              spacing: 8,
              children: postTags.map((e) => Tag(label: e)).toList(),
            ),
          ],
        ),
      );

  Widget _buildPostActions() => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            LabelledIcon(iconPath: 'assets/icons/ic_like.svg', label: '5'),
            SizedBox(width: 12),
            LabelledIcon(
              iconPath: 'assets/icons/ic_comment.svg',
              label: '2',
            ),
            SizedBox(width: 12),
            SizedBox(
              height: 32,
              width: 32,
              child: Icon(
                Icons.bookmark_border,
              ),
            ),
            SizedBox(width: 12),
            SizedBox(
              child: Icon(
                Icons.more_horiz,
                size: 20,
              ),
            ),
          ],
        ),
      );
}
