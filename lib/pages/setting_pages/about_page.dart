import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../../components/styled_text.dart';

final fakeText = faker.lorem.sentences(7).toString();

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: StyledText('About', fontSize: 32),
            ),
            StyledText('Who Are We', fontSize: 20),
            const SizedBox(height: 16),
            StyledText(fakeText, fontSize: 16, maxLine: 10),
            const SizedBox(height: 24),
            StyledText('Our Vision', fontSize: 20),
            const SizedBox(height: 16),
            StyledText(fakeText, fontSize: 16, maxLine: 10),
            const SizedBox(height: 24),
            StyledText('Team', fontSize: 20),
            const SizedBox(height: 16),
            Row(
              children: const [
                CircleAvatar(backgroundImage: AssetImage('images/user1.png')),
                SizedBox(width: 16),
                CircleAvatar(backgroundImage: AssetImage('images/user2.png')),
                SizedBox(width: 16),
                CircleAvatar(backgroundImage: AssetImage('images/user3.png')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
