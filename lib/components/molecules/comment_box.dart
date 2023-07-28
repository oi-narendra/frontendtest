import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// comment box molecule
class CommentBox extends StatelessWidget {
  /// comment box constructor
  const CommentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Color(0xFFF7F8FA))),
      ),
      height: 42,
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/ic_image.svg'),
          const SizedBox(width: 20),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                isDense: true,
                hintText: '댓글을 남겨주세요.',
                hintStyle: TextStyle(
                  color: Color(0xFFAFB8C9),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 16),
          const Text(
            '등록',
            style: TextStyle(
              color: Color(0xFF909DB5),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
