import 'package:flutter/material.dart';
import 'package:p6_1214034/input.dart';
import 'package:p6_1214034/input_form.dart';
import 'package:p6_1214034/input_validation.dart';

class DynamicButtonNavbar extends StatefulWidget {
  const DynamicButtonNavbar({super.key});

  @override
  State<DynamicButtonNavbar> createState() => _DynamicButtonNavbarState();
}

class _DynamicButtonNavbarState extends State<DynamicButtonNavbar> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    const MyInput(),
    const MyInputForm(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: const Icon(Icons.input),
            label: 'Input',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.task_alt_outlined),
            label: 'Input Validation',
          ),
        ],
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
