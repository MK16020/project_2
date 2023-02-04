import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_button.dart';
import 'package:flutter_project_2/pages/appbar_page.dart';

class CredentialChecker extends StatelessWidget {
  const CredentialChecker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final nav = Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AppbarPage(),
          ),
        );
      },
      child: const StyledButton(
        label: 'Login',
      ),
    );
  }
}
