import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';

class MultiScreenActivity extends StatefulWidget {
  const MultiScreenActivity({super.key});

  @override
  _MultiScreenActivityState createState() => _MultiScreenActivityState();
}

class _MultiScreenActivityState extends State<MultiScreenActivity> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    FirstScreen(),
    SecondScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MultiScreen Activity'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: 'Screen 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: 'Screen 2',
          ),
        ],
      ),
    );
  }
}