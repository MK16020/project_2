import 'package:flutter/material.dart';
import 'package:flutter_project_2/pages/about_page.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: const Color(0xfff0f0f0),
        child: SettingsList(sections: [
          SettingsSection(
            title: const Text('Application Settings'),
            tiles: [
              SettingsTile(
                title: const Text('Language'),
                leading: const Icon(Icons.language),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: const Text('Account'),
                leading: const Icon(Icons.person),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: const Text('Help And Support'),
                leading: const Icon(Icons.notifications),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: const Text('About'),
                leading: const Icon(Icons.language),
                onPressed: (BuildContext context) {
                  final nav = Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutPage()),
                  );
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
