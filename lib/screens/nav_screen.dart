import 'package:bloc_project_demo/screens/screens.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  static Route<void> route() =>
      MaterialPageRoute(builder: (_) => const NavScreen());

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    HomeScreen(),
    ScreenA(),
    ScreenB(),
    ScreenC(),
  ];

  final Map<String, IconData> _icons = const {
    'Home': Icons.home,
    'Screen A': Icons.search,
    'Screen B': Icons.queue_play_next,
    'Screen C': Icons.file_download,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _icons
            .map(
              (title, icon) => MapEntry(
                  title,
                  BottomNavigationBarItem(
                    icon: Icon(icon, size: 30),
                    label: title,
                  )),
            )
            .values
            .toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        selectedFontSize: 11,
        unselectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        unselectedFontSize: 11,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
