

import 'package:beachapp/pages/AboutPage.dart';
import 'package:beachapp/pages/DistrictList.dart';
import 'package:beachapp/pages/search.dart';
import 'package:flutter/material.dart';

class BottomNavigation2 extends StatefulWidget {
  const BottomNavigation2({Key? key}) : super(key: key);

  @override
  State<BottomNavigation2> createState() => _BottomNavigation2State();
}

class _BottomNavigation2State extends State<BottomNavigation2> {
 
  int _currentIndex = 0;
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BottomNavigationBar(
        
        backgroundColor: const Color(0xFFA1CCEB),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Disrtricts',
            icon: Icon(Icons.list_alt_outlined, color: Color.fromARGB(255, 13, 24, 41)),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search_outlined, color: Color.fromARGB(255, 13, 24, 41)),
          ),
          BottomNavigationBarItem(
            label: 'About Us',
            icon: Icon(Icons.person, color: Color.fromARGB(255, 13, 24, 41)),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          switch (index) {
      case 0:
        // Navigate to the Home page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DistrictList()),
        );
        break;
      case 1:
        // Navigate to the Calendar page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchPage()),
        );
        break;
      case 2:
        // Navigate to the Contact Us page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AboutPage()),
        );
        break;
    }
        },
      ),
    );

    
  }
}
