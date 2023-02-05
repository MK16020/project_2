import 'package:faker/faker.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/post_components/post_info.dart';
import 'package:flutter_project_2/components/styled_text.dart';
import 'package:flutter_project_2/models/post_model.dart';
import 'package:flutter_project_2/models/user_model.dart';

class PostCardWidget extends StatelessWidget {
  final PostModel post;
  const PostCardWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userID = post.userID;
    var icon = const Icon(Icons.star_border_rounded);
    var isSelected = PostModel.favoriteList.contains(post) ? true : false;

    return Card(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              foregroundImage: AssetImage(users[userID].imageUrl),
            ),
            title: StyledText(
              users[userID].name,
              fontSize: 18,
            ),
            subtitle: StyledText(
              faker.date.time(),
              fontSize: 12,
            ),
            trailing: InkWell(
              child: StarButton(
                isStarred: isSelected,
                iconSize: 32,
                valueChanged: (_isStarred) {
                  if (_isStarred) {
                    var fav = PostModel.favoriteList.add(post);
                  }
                  if (!_isStarred) {
                    var fav = PostModel.favoriteList.remove(post);
                  }
                },
              ),
            ),
          ),
          PostInfo(
            post: post,
          ),
        ],
      ),
    );
  }
}
