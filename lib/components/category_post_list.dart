import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';
import 'package:flutter_project_2/pages/post_detail_page.dart';

import '../models/post_model.dart';

class CategoryPostList extends StatelessWidget {
  final PostModel post;
  const CategoryPostList({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PostDetailPage(post: post)),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        width: 350,
        padding: const EdgeInsets.all(10),
        color: Colors.black12,
        child: Column(children: [
          SizedBox(child: Image(image: AssetImage(post.imageUrl)), height: 200, width: 250),
          StyledText(post.title, fontSize: 20, fontWeight: FontWeight.bold),
          SizedBox(
            child: StyledText(post.info, fontSize: 18, maxLine: 5),
          ),
        ]),
      ),
    );
  }
}
