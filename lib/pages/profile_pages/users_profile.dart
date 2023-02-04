import 'package:flutter/material.dart';

import '../../components/app_bar_component.dart';
import '../../components/profile_header.dart';
import '../../components/profile_info.dart';
import '../../components/profile_post_card.dart';
import '../../models/user_model.dart';

class UsersProfile extends StatelessWidget {
  final UserModel user;
  const UsersProfile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const AppBarComponent(),
              ProfileHeader(user: user),
              const SizedBox(height: profileHeight),
              ProfileInfo(user: user),
              const SizedBox(height: 20),
              ProfilePostCard(user: user),
            ],
          ),
        ],
      ),
    );
  }
}
