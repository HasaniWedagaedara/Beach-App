import 'package:beachapp/widgets/TextSize25.dart';
import 'package:flutter/material.dart';

class AppBarcommon2 extends StatelessWidget implements PreferredSizeWidget {
  const AppBarcommon2({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFA1CCEB),
      leading: const Padding(
    padding: EdgeInsets.only(left: 4.0,top: 28), // Adjust the left padding as needed
    
  ),
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Container(
            padding: const EdgeInsets.only(top: 30, left: 15),
            child: TextSize25(text: "BeachApp",)
          ),
          const SizedBox(width: 190.0), // Add some spacing
        ],
      ),
    );
  }
}
