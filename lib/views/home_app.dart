import 'package:flutter/material.dart';

import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

int currentIndex = 0;

class _HomeAppState extends State<HomeApp> {
  void _selectedScreen(value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screens = [
      const FirstScreen(),
      const SecondScreen(),
      const ThirdScreen(),
    ];
    return Scaffold(
      body: screens.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _selectedScreen,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_1_sharp),
            label: 'first',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_2_sharp),
            label: 'second',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_3_sharp),
            label: 'third',
          ),
        ],
      ),
    );
  }
}
