import 'package:flutter/material.dart';
import 'package:flutter_project_2/pages/appbar.dart';
import 'package:flutter_project_2/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
