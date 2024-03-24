import 'package:beachapp/widgets/BottomNavigationBar.dart';
import 'package:beachapp/widgets/appbar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarcommon(),
      body: Column(
      children: [
         Text(
        "Search Page"
      
      ),
      ],
      ),
bottomNavigationBar: BottomNavigation2(),
    );
  }
}