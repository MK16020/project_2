import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/post_card_widget.dart';
import 'package:flutter_project_2/pages/post_detail_page.dart';

import '../models/post_model.dart';

class PostList extends StatelessWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var post in posts)
          Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostDetailPage(post: post),
                  ),
                ),
                child: PostCardWidget(post: post),
              ),
              const SizedBox(height: 16),
            ],
          ),
      ],
    );
  }
}
