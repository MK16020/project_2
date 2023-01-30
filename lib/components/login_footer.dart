
import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StyledText('if you do not have an account: ', fontSize: 12),
        StyledText(
          'Register here',
          fontSize: 12,
          color: Colors.blue,
        ),
      ],
    );
  }
}