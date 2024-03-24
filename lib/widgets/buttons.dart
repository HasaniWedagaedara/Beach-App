import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttons extends StatelessWidget {
  final VoidCallback onPressed; // Callback function to handle button press
  bool isResponsive;
  double? width;
  final String text;

  Buttons({
    Key? key,
    required this.onPressed,
    this.width,
    this.isResponsive = false,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // Use the provided callback
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size(width ?? 390.0, 40.0),
        backgroundColor: Color.fromARGB(255, 14, 37, 74),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
),

      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
