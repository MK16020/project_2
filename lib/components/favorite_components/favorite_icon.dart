import 'package:flutter/material.dart';

import '../../models/post_model.dart';

class FavoriteIcon extends StatelessWidget {
  final PostModel post;
  const FavoriteIcon({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border.fromBorderSide(BorderSide(color: Colors.grey, width: 0.2)),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: const Icon(
        Icons.star_rounded,
        color: Colors.amber,
      ),
    );
  }
}
