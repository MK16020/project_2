import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/app_bar_component.dart';

import '../../components/edit_post_field.dart';
import '../../models/post_model.dart';

class EditPostPage extends StatelessWidget {
  final PostModel post;
  const EditPostPage({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AppBarComponent(),
          Container(
            child: Stack(
              children: [
                Image(
                  height: 300,
                  image: AssetImage(post.imageUrl),
                ),
                Container(
                  height: 300,
                  color: Colors.white.withOpacity(0.5),
                ),
              ],
            ),
            decoration: const BoxDecoration(),
            height: 300,
          ),
          EditPostField(post: post),
        ],
      ),
    );
  }
}
