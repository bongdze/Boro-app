import 'package:example/screens/blog.dart';
import 'package:example/screens/faq.dart';
import 'package:example/screens/home_screen.dart';
import 'package:example/screens/subscription.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreen();
  }
}

class _TabsScreen extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeScreen();

    if (_selectedPageIndex == 1) {
      activePage = const BlogPost();
    }

    if (_selectedPageIndex == 2) {
      activePage = const SubScriptionScreen();
    }

    if (_selectedPageIndex == 3) {
      activePage = const FaqScreen();
    }

    return Scaffold(
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black12), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb, color: Colors.black12),
              label: 'Discovery'),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_rounded, color: Colors.black12),
              label: 'Subscription'),
          BottomNavigationBarItem(
              icon: Icon(Icons.help, color: Colors.black12), label: 'Help'),
        ],
        fixedColor: Colors.black87,
      ),
    );
  }
}
