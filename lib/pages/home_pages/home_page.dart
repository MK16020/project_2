import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/post_components/post_list.dart';
import 'package:flutter_project_2/components/styled_text.dart';

import '../../components/category_components/category_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Image(image: AssetImage('assets/images/background.png')),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledText(
                  'Welcome',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                TextFormField(
                  decoration: const InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search here'),
                ),
                const CategoryList(),
                const PostList(),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
