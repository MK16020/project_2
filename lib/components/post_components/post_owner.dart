import 'package:flutter/material.dart';

import '../../models/post_model.dart';
import '../../models/user_model.dart';
import '../../pages/profile_pages/users_profile.dart';
import '../styled_text.dart';

class PostOwner extends StatelessWidget {
  final PostModel post;
  const PostOwner({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
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
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UsersProfile(
            user: users[post.userID],
          ),
        ),
      ),
    );
  }
}
