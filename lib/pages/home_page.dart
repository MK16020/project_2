import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/post_list.dart';
import 'package:flutter_project_2/components/text_styled.dart';

import '../components/category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StyledText(
                'Welcome',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              TextFormField(
                decoration: const InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search here'),
              ),
              const CategoryList(),
              const PostList()
            ],
          ),
        ],
      ),
    );
  }
}
