import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextSize25 extends StatelessWidget {
  double size;
  final String text;
  final Color color;
   TextSize25({Key? key, 
    this.size =30,
    required this.text,
    this.color = Colors.black}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        
        color: Color.fromARGB(255, 14, 37, 74),
        fontSize: 25,
        fontWeight: FontWeight.bold,
        
      ),

    );
  }
}