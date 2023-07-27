import 'package:flutter/material.dart';
import 'package:frontendtest/components/atoms/tag.dart';
import 'package:frontendtest/components/molecules/app_bar.dart';

/// post detail page
class PostDetailPage extends StatelessWidget {
  /// post detail page constructor
  const PostDetailPage({super.key});

  /// tags for the post
  static const tags = [
    '#2023',
    '#TODAYISMONDAY',
    '#TOP',
    '#POPS!',
    '#WOW',
    '#ROW'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Appbar(
          title: '자유톡',
          actions: [
            AppBarAction(
              icon: Icons.notifications_outlined,
              onPressed: () {
                debugPrint('notification button pressed');
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                runSpacing: 8,
                spacing: 8,
                children: tags.map((e) => Tag(label: e)).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
