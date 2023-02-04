import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

import '../models/user_model.dart';

class ProfileInfo extends StatelessWidget {
  final UserModel user;
  const ProfileInfo({
    Key? key, required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StyledText(
            user.name,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          StyledText(user.bio, fontSize: 25),
        ],
      ),
    );
  }
}
