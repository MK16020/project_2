import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_button.dart';
import 'package:flutter_project_2/components/styled_text.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StyledText('Let\'s Talk!', fontSize: 20),
        const StyledButton(label: 'Get in Touch '),
        StyledText('URLs ', fontSize: 10),
      ],
    );
  }
}
