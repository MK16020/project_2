import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

import '../models/user_model.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StyledText(
            users[1].name,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          StyledText(users.first.bio, fontSize: 25),
        ],
      ),
    );
  }
}
