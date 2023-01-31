import 'dart:ui';

import 'package:flutter/material.dart';

import '../components/register_field.dart';
import '../components/styled_text.dart';

class AddPostPage extends StatelessWidget {
  const AddPostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.grey,
            height: 300,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RegisterField(label: 'Title'),
                const SizedBox(height: 10),
                StyledText('label', fontSize: 16),
                const SizedBox(height: 10),
                const TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 10,
                  selectionWidthStyle: BoxWidthStyle.tight,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Post here',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
