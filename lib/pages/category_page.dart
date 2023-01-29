import 'package:flutter/material.dart';
import 'package:flutter_project_2/models/post_model.dart';

import '../components/category_post_list.dart';
import '../components/text_styled.dart';
import '../models/category_model.dart';

class CategoryPage extends StatelessWidget {
  final Category category;
  const CategoryPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24), children: [
        Column(children: postsList),
      ]),
    );
  }

  List<Widget> get postsList {
    return [
      StyledText(
        category.name,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      for (final post in posts) ...[
        if (post.categoryID == category.id) CategoryPostList(post: post),
      ],
    ];
  }
}
