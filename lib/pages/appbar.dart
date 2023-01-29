import 'package:flutter/material.dart';

class AppbarPage extends StatelessWidget {
  const AppbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.arrow_back_ios_new_rounded),
    );
  }
}
