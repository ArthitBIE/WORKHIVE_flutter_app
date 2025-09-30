import 'package:flutter/material.dart';
import 'package:workhive/pages/career.dart';
import 'package:workhive/pages/home.dart';
import 'package:workhive/pages/jobboard.dart';
import 'package:workhive/pages/post.dart';
import 'package:workhive/pages/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    JobBoard(),
    Post(),
    Career(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.developer_board),label: "JOBBOARD",),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: "POST"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "CAREER"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "PROFILE",),
        ],
      ),
    );
  }
}
