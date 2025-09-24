import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/multi_screen_activity.dart';

import 'screens/buttons_screen.dart';
import 'screens/info_elements_screen.dart';
import 'screens/lists_screen.dart';
import 'screens/selection_elements_screen.dart';
import 'screens/text_fields_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Elements Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = [
    TextFieldsScreen(),
    ButtonsScreen(),
    SelectionElementsScreen(),
    ListsScreen(),
    InfoElementsScreen(),
  ];

  static const List<String> _titles = [
    'TextFields',
    'Botones',
    'Elementos de Selección',
    'Listas',
    'Elementos Informativos',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_titles[_selectedIndex]),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MultiScreenActivity()),
              );
            },
            child: Text('Ir a MultiScreen Activity'),
          ),
        ],
        elevation: 2,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'TextFields',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_button),
            label: 'Botones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Selección',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Listas'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Información'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}
