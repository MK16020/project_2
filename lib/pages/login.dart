import 'dart:ui';

import 'package:flutter/material.dart';

import '../components/credential_checker.dart';
import '../components/login_footer.dart';
import '../components/styled_text.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StyledText('Email', fontSize: 16),
                    const SizedBox(height: 10),
                    TextField(
                      controller: emailController,
                      onChanged: (email) {
                        setState(() {});
                      },
                      selectionWidthStyle: BoxWidthStyle.tight,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Email',
                      ),
                    ),
                    const SizedBox(height: 28),
                    StyledText('password', fontSize: 16),
                    const SizedBox(height: 10),
                    TextField(
                      obscureText: true,
                      controller: passwordController,
                      onChanged: (password) {
                        setState(() {});
                      },
                      selectionWidthStyle: BoxWidthStyle.tight,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your password',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 28),
                CredentialChecker(emailController: emailController, passwordController: passwordController),
                const SizedBox(height: 10),
                const LoginFooter(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
