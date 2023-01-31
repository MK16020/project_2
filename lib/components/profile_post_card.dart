import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';
import 'package:flutter_project_2/pages/edit_post_page.dart';

import '../models/post_model.dart';

class ProfilePostCard extends StatelessWidget {
  const ProfilePostCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          ListTile(
            leading: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPostPage(post: posts[1]),
                ),
              ),
              child: Icon(Icons.edit_outlined),
            ),
            trailing: InkWell(
              child: Icon(Icons.delete_outline),
            ),
          ),
          StyledText(
            posts[1].title,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          StyledText(
            posts[1].info,
            fontSize: 16,
            maxLine: 10,
          ),
          Image.asset(posts[1].imageUrl),
        ],
      ),
    );
  }
}
