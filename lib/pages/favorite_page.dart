import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double postWidth = 360;
    double postHeight = 200;

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        children: [
          StyledText('Favorites', fontSize: 30),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            height: postHeight,
            width: postWidth,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Align(

                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    width: postWidth,
                    height: postHeight,
                    child: const Image(
                      image: AssetImage('images/post3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
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
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: postWidth,
                    height: postHeight / 3,
                    decoration: BoxDecoration(
                      color: Colors.black26.withOpacity(0.3),
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(12),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: StyledText(
                      'Post Title',
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
