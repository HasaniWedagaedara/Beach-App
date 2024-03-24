import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextSize35 extends StatelessWidget {
  double size;
  final String text;
  final Color color;
   TextSize35({Key? key, 
    this.size =30,
    required this.text,
    this.color = Colors.black}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          
          color: Color.fromARGB(255, 14, 37, 74),
          fontSize: 35,
          fontWeight: FontWeight.w900,
          
        ),
      
      ),
    );
  }
}