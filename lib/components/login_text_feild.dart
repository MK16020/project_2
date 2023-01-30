import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

class LoginTextFeild extends StatelessWidget {
  final String textTitle;
  const LoginTextFeild({
    Key? key,
    required this.textTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StyledText(textTitle, fontSize: 16),
        const SizedBox(height: 10),
        TextField(
          selectionWidthStyle: BoxWidthStyle.tight,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'Enter Your $textTitle',
          ),
        ),
      ],
    );
  }
}
