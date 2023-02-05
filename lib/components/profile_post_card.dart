import 'package:flutter/material.dart';

import '../models/post_model.dart';
import '../models/user_model.dart';
import 'post_components/profile_posts.dart';

class ProfilePostCard extends StatelessWidget {
  final UserModel user;

  const ProfilePostCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var post in posts) ...[
          if (post.userID == user.id) ...[
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ProfilePosts(post: post),
            ),
          ],
        ],
      ],
    );
  }
}
