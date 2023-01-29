import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';
import 'package:flutter_project_2/models/post_model.dart';

class PostInfo extends StatelessWidget {
  final PostModel post;
  const PostInfo({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          height: 150,
          width: 150,
          child: Image(image: AssetImage(post.imageUrl)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.38,
              child: Expanded(
                child: StyledText(
                  post.title,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.38,
              child: Expanded(
                child: StyledText(
                  post.info,
                  fontSize: 16,
                  maxLine: 4,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
