import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

import '../../components/register_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: ListView(
          children: [
            const Image(image: AssetImage('assets/images/post1.png')),
            const SizedBox(height: 16),
            Center(child: StyledText('Register Here', fontSize: 32)),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: const [
                  RegisterField(label: 'Name'),
                  RegisterField(label: 'Email'),
                  RegisterField(label: 'Image'),
                  RegisterField(label: 'password'),
                  SizedBox(height: 28),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * name 
 * image 
 * bio 
 * Email
 * password
 * 
 */