import 'package:flutter/material.dart';
import 'package:flutter_project_2/models/post_model.dart';

import '../../pages/home_pages/post_detail_page.dart';

class FavoriteImage extends StatelessWidget {
  final double postHeight;
  final double postWidth;
  final PostModel post;
  const FavoriteImage({
    Key? key,
    required this.postHeight,
    required this.postWidth,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: postHeight,
        width: postWidth,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Image(
          image: AssetImage(post.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PostDetailPage(post: post),
        ),
      ),
    );
  }
}
