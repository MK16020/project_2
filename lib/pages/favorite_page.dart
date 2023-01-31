import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

import '../components/profile_post_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        children: [
          StyledText('Favorites', fontSize: 30),
          // const ProfilePostCard(),
        ],
      ),
    );
  }
}
