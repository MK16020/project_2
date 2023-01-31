import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

import '../models/post_model.dart';

class EditPostField extends StatelessWidget {
  final PostModel post;
  const EditPostField({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StyledText('Title', fontSize: 16),
          TextFormField(
            initialValue: post.title,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          StyledText('Blog Content', fontSize: 16),
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: 10,
            initialValue: post.info,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
