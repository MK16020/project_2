import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';
import 'package:flutter_project_2/models/user_model.dart';
import 'package:flutter_project_2/pages/post_detail_page.dart';

import '../components/post_card_widget.dart';
import '../models/post_model.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(50))),
        child: const Icon(Icons.add),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: [
          StyledText(
            users[1].name,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          StyledText(users.first.bio, fontSize: 25),
          for (final post in posts) ...[
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
        ],
      ),
    );
  }
}
