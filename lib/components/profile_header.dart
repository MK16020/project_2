import 'package:flutter/material.dart';

import '../models/user_model.dart';

const double headerHeight = 280;
const double profileHeight = 144;

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const SizedBox(
          height: headerHeight,
          child: Image(
            image: AssetImage('images/profilebackground.png'),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: headerHeight - profileHeight / 2,
          child: Container(
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(BorderSide(width: 10, color: Colors.white)),
              borderRadius: BorderRadius.all(Radius.circular(90)),
            ),
            child: CircleAvatar(
              radius: profileHeight / 2,
              backgroundImage: AssetImage(users[1].imageUrl),
            ),
          ),
        ),
      ],
    );
  }
}
