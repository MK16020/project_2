
import 'package:flutter/material.dart';

import '../../models/post_model.dart';
import '../styled_text.dart';

class FavoriteTitle extends StatelessWidget {

  final double postHeight;
  final PostModel post;
  const FavoriteTitle({
    Key? key,
    required this.postHeight, required this.post,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: postHeight / 3,
        decoration: BoxDecoration(
          color: Colors.black26.withOpacity(0.3),
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(12),
          ),
        ),
        alignment: Alignment.center,
        child: StyledText(
          post.title,
          fontSize: 36,
          color: Colors.white,
        ),
      ),
    );
  }
}
