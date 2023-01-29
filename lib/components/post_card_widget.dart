import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/post_info.dart';
import 'package:flutter_project_2/components/text_styled.dart';
import 'package:flutter_project_2/models/post_model.dart';
import 'package:flutter_project_2/models/user_model.dart';

class PostCardWidget extends StatelessWidget {
  const PostCardWidget({
    Key? key,
    required this.post,
  }) : super(key: key);
  final Post post;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              foregroundImage: AssetImage(users[post.userID].imageUrl),
            ),
            title: StyledText(
              users[post.userID].name,
              fontSize: 18,
            ),
            subtitle: StyledText(
              faker.date.time(),
              fontSize: 12,
            ),
          ),
          PostInfo(
            post: post
          )
        ],
      ),
    );
  }
}
