import 'package:flutter/material.dart';
import 'package:flutter_project_2/pages/profile_pages/profile_page.dart';

import '../../models/post_model.dart';
import '../../pages/profile_pages/edit_post_page.dart';
import '../styled_text.dart';

class ProfilePosts extends StatelessWidget {
  final PostModel post;
  const ProfilePosts({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (post.userID == 0) ...[
          ListTile(
            leading: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPostPage(post: post),
                ),
              ),
              child: const Icon(Icons.edit_outlined),
            ),
            trailing: const InkWell(
              child: Icon(Icons.delete_outline),
            ),
          ),
        ],
        StyledText(
          post.title,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        StyledText(
          post.info,
          fontSize: 16,
          maxLine: 10,
        ),
        Image.asset(post.imageUrl),
        const SizedBox(height: 32),
      ],
    );
  }
}
