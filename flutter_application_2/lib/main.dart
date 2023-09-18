import 'package:flutter/material.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: Color.fromRGBO(34, 37, 41, 1),
        // indicatorColor: const Color.fromRGBO(243, 78, 58, 1),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home,
                color: Color.fromRGBO(243, 78, 58, 1), size: 50),
            icon: Icon(Icons.home_outlined,
                color: Color.fromRGBO(159, 159, 159, 1), size: 50),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_box_sharp,
                color: Color.fromRGBO(243, 78, 58, 1), size: 50),
            icon: Icon(Icons.account_box_outlined,
                color: Color.fromRGBO(159, 159, 159, 1), size: 50),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.menu_open_sharp,
                color: Color.fromRGBO(243, 78, 58, 1), size: 50),
            icon: Icon(Icons.menu_book_outlined,
                color: Color.fromRGBO(159, 159, 159, 1), size: 50),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.stacked_bar_chart_sharp,
                color: Color.fromRGBO(243, 78, 58, 1), size: 50),
            icon: Icon(Icons.stacked_bar_chart_outlined,
                color: Color.fromRGBO(159, 159, 159, 1), size: 50),
            label: '',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text('Build your Body'),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 4'),
        ),
      ][currentPageIndex],
    );
  }
}
