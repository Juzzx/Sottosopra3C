import 'package:flutter/material.dart';
import 'search_screen.dart';
import 'home_screen.dart';
import 'settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = const [
    HomeScreen(),
    SettingsScreen(),
    SearchScreen(),
  ];
  void chooseIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: chooseIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "cerca"),
          ]),
      body: pages.elementAt(selectedIndex),
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Center(
            child: Image.asset(
          'lib/assets/logo.png',
          width: 200,
        )),
        backgroundColor: Colors.white,
        actions: const [SizedBox(width: 50)],
      ),
    );
  }
}
