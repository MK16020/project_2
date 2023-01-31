import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_button.dart';
import 'package:flutter_project_2/pages/appbar_page.dart';

class CredentialChecker extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const CredentialChecker({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final email = emailController.text;
        final password = passwordController.text;
        if (email == 'someone@mail.com' && password == '123456') {
          final nav = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AppbarPage(),
            ),
          );
        } else {
          final show = showDialog(
            context: context,
            builder: (_) {
              return const Dialog(
                child: SizedBox(
                  height: 50,
                  width: 60,
                  child: Center(child: Text('Wrong info')),
                ),
              );
            },
          );
        }
      },
      child: const StyledButton(
        label: 'Login',
      ),
    );
  }
}
