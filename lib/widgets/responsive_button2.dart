
import 'package:beachapp/pages/LoginPage.dart';
import 'package:flutter/material.dart';

class ResponsiveButton2 extends StatelessWidget {
  // to change the size we use bool responsive
  bool isResponsive;
  double? width;

  ResponsiveButton2({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60,top: 10),
      child: ClipOval(
        child: Container(
          width: 60,
          height: 60, 
          color: Color.fromARGB(255, 110, 182, 175),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            
            child: Image.asset(
              "assets/go2.jpg",
              fit: BoxFit.cover,
              
            ),
          ),
        ),
      ),
    );
  }
}
