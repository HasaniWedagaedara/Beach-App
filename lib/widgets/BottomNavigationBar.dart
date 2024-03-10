import 'package:beachexplora/pages/HomePage.dart';
import 'package:beachexplora/pages/login.dart';
import 'package:flutter/material.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  
  final List<Widget> tabs = [
    Login(),
    HomePage(),
    //const AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BottomNavigationBar(
        
        backgroundColor: Color.fromARGB(255, 109, 154, 226),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: 'search',
            icon: Icon(Icons.search, color: Colors.black),
          ),
          /*BottomNavigationBarItem(
            label: 'about',
            icon: Icon(Icons.info, color: Colors.black),
          ),*/
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
