import 'package:flutter/material.dart';

import '../models/post_model.dart';
import '../models/user_model.dart';
import 'styled_text.dart';

class PostOwner extends StatelessWidget {
  const PostOwner({
    Key? key,
    required this.post,
  }) : super(key: key);

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(users[post.userID].imageUrl),
        ),
        title: StyledText(
          users[post.userID].name,
          fontSize: 18,
        ),
        subtitle: StyledText(users[post.userID].bio, fontSize: 14),
      ),
    );
  }
}
