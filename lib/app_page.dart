import 'package:flutter/material.dart';
import 'package:flutter_project_2/pages/home_page.dart';
import 'package:flutter_project_2/pages/login.dart';

import 'pages/profile_page.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}