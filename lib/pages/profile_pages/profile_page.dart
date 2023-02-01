import 'package:flutter/material.dart';
import 'package:flutter_project_2/pages/profile_pages/add_post_page.dart';

import '../../components/profile_header.dart';
import '../../components/profile_info.dart';
import '../../components/profile_post_card.dart';

const double headerHeight = 280;
const double profileHeight = 144;

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
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: const [
          ProfileHeader(),
          SizedBox(
            height: profileHeight,
          ),
          ProfileInfo(),
          SizedBox(height: 20),
          ProfilePostCard(),
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