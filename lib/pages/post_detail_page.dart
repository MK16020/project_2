import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/text_styled.dart';
import 'package:flutter_project_2/models/post_model.dart';

import '../components/post_owner.dart';
import '../components/rating_section.dart';

class PostDetailPage extends StatelessWidget {
  final Post post;
  const PostDetailPage({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 300,
            child: Image(image: AssetImage(post.imageUrl)),
          ),
          StyledText(
            post.title,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 16),
          StyledText(
            post.info,
            fontSize: 20,
            maxLine: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          const RatingSection(),
          PostOwner(post: post),
        ],
      ),
    );
  }
}
