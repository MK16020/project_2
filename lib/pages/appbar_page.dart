import 'package:flutter/material.dart';
import 'package:flutter_project_2/pages/favorite_page.dart';
import 'package:flutter_project_2/pages/home_pages/home_page.dart';
import 'package:flutter_project_2/pages/profile_pages/profile_page.dart';
import 'package:flutter_project_2/pages/setting_pages/settings_page.dart';

import '../components/styled_text.dart';

final pages = [const HomePage(), const ProfilePage(), const FavoritePage()];

class AppbarPage extends StatefulWidget {
  const AppbarPage({Key? key}) : super(key: key);

  @override
  State<AppbarPage> createState() => _AppbarPageState();
}

class _AppbarPageState extends State<AppbarPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledText(
          'Blog App',
          fontSize: 20,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        actions: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: InkWell(
          //     onTap: () {
          //       showModalBottomSheet<void>(
          //         context: context,
          //         builder: (BuildContext context) {
          //           return Container();
          //         },
          //       );
          //     },
          //     child: const Icon(
          //       Icons.menu_rounded,
          //       color: Colors.black,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              ),
              child: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_rounded),
            label: 'favorites',
          ),
        ],
        onTap: (newindex) {
          currentIndex = newindex;
          setState(() {});
        },
      ),
    );
  }
}
