import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

class RegisterField extends StatelessWidget {
  final String label;
  const RegisterField({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        StyledText(label, fontSize: 16),
        const SizedBox(height: 10),
        TextField(
          selectionWidthStyle: BoxWidthStyle.tight,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'Enter Your $label',

          ),
        ),
      ],
    );
  }
}
//