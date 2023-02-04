import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

import '../components/favorite_components/favorite_icon.dart';
import '../components/favorite_components/favorite_image.dart';
import '../components/favorite_components/favorite_title.dart';
import '../models/post_model.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    double postWidth = 360;
    double postHeight = 250;

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
        children: [
          StyledText('Favorites', fontSize: 30),
          const SizedBox(
            height: 32,
          ),
          for (final favorite in PostModel.favoriteList) ...[
            SizedBox(
              height: postHeight,
              width: postWidth,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  FavoriteImage(postHeight: postHeight, postWidth: postWidth, post: favorite),
                  Positioned(
                    top: 2,
                    right: 4,
                    child: InkWell(
                      child: FavoriteIcon(post: favorite),
                      onTap: () {
                        var del = PostModel.favoriteList.remove(favorite);
                        setState(() {});
                      },
                    ),
                  ),
                  FavoriteTitle(postHeight: postHeight, post: favorite),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ],
      ),
    );
  }
}
