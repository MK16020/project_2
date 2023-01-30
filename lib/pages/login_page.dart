import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

import '../components/login_footer.dart';
import '../components/login_info.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        margin: const EdgeInsets.all(32),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
          children: [
            Column(
              children: [
                StyledText(
                  'Welcome Back',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                StyledText('Welcome back, please enter your information', fontSize: 12),
                const SizedBox(height: 28),
                const LoginInfo(),
                const SizedBox(height: 28),
                const LoginFooter(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

