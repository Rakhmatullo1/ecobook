import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:nozima/main.dart';
import 'package:nozima/main_page.dart';
import 'package:nozima/map_screen.dart';

class HomeScreen extends StatefulWidget {
  static String route = "/route";
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    MainHomeScreen(),
    MapScreen(),
    Center(child: Text('👤 Profile Page', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 500),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: thirdColor,
        color: mainColor,
        buttonBackgroundColor: Colors.white,
        height: 60,
        animationDuration: Duration(milliseconds: 300),
        index: _selectedIndex,
        items: [
          Icon(Icons.home, size: 30, color: mainColor),
          Icon(Icons.favorite, size: 30, color: mainColor),
          Icon(Icons.person, size: 30, color: mainColor),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
