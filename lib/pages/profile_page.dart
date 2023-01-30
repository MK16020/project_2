import 'package:flutter/material.dart';
import 'package:flutter_project_2/models/user_model.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              const Image(
                //height: 250,
                image: AssetImage('images/profilebackground.png'),
                fit: BoxFit.cover,
              ),
              CircleAvatar(
                foregroundImage: AssetImage(users[0].imageUrl),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
