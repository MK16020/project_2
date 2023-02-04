import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: ListTile(
        leading: InkWell(
          child: const Icon(Icons.arrow_back_ios_new_rounded),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Center(child: StyledText('Blog App', fontSize: 20)),
      ),
    );
  }
}
