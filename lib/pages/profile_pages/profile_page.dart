import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_button.dart';
import 'package:flutter_project_2/models/user_model.dart';
import 'package:flutter_project_2/pages/profile_pages/add_post_page.dart';

import '../../components/profile_header.dart';
import '../../components/profile_info.dart';
import '../../components/profile_post_card.dart';

const double headerHeight = 280;
const double profileHeight = 144;
final UserModel user = users.first;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AddPostPage(),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(50))),
          child: const Icon(Icons.add),
        ),
      ),
      body: ListView(
        children: [
          ProfileHeader(user: user),
          const SizedBox(height: profileHeight),
          ProfileInfo(user: user),
          const SizedBox(height: 20),
          ProfilePostCard(user: user),
          
        ],
      ),
    );
  }
}

/**
 * for (final post in posts) ...[
            if (post.userID == users.first.id)
              Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PostDetailPage(post: post),
                      ),
                    ),
                    child: PostCardWidget(post: post),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
          ],
 */