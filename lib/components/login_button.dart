import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

import '../pages/home_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.38,
      decoration: BoxDecoration(
        border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(24),
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(child: StyledText('Login', fontSize: 16)),
        ),
      ),
    );
  }
}
