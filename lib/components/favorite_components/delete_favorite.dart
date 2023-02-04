import 'package:flutter/material.dart';
import 'package:flutter_project_2/models/post_model.dart';

class DeleteFavorite extends StatelessWidget {
  final PostModel post;
  const DeleteFavorite({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: const Icon(
        Icons.remove_circle,
        color: Colors.red,
        size: 20,
      ),
    );
  }
}
