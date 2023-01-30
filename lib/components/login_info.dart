import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/login_button.dart';

import 'login_text_feild.dart';

class LoginInfo extends StatelessWidget {
  const LoginInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        LoginTextFeild(textTitle: 'Email'),
        SizedBox(height: 16),
        LoginTextFeild(textTitle: 'Password'),
        SizedBox(height: 28),
        LoginButton(),
      ],
    );
  }
}
