import 'package:flutter/material.dart';
import 'package:ui_design/Screens/Homepage.dart';
import 'package:ui_design/Screens/message.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List pages = [
    Homepage(),
    Container(
      child: Center(
        child: Text("Hello"),
      ),
    ),
    Container(
      child: MessagePage(),
    ),
    Container(
      child: Center(
        child: Text("Hello2"),
      ),
    ),
  ];

  void onTabNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(

          // showSelectedLabels: ,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTabNav,
          currentIndex: _selectedIndex,
          backgroundColor: Colors.white.withOpacity(0.9),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              label: 'Folder',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_rounded),
              label: 'Calender',
            )
          ]),
    );
  }
}
