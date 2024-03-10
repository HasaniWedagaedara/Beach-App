import 'package:flutter/material.dart';

class TextBox extends StatefulWidget {
  final String labelText;
  final double width;
  final double height;
  final Color color;
  final Color outlineColor;
  final Color textColor;
  final bool isDropdown;

  const TextBox({
    Key? key,
    required this.labelText,
    required this.width,
    required this.height,
    this.color =  const Color.fromARGB(255, 235, 242, 247),
    this.outlineColor = const Color.fromARGB(255, 14, 37, 74),
    this.textColor = const Color.fromARGB(255, 14, 37, 74),
    this.isDropdown = false,
  }) : super(key: key);

  @override
  State<TextBox> createState() => _TextBoxStateLec();
}

class _TextBoxStateLec extends State<TextBox> {
  // Add a variable to store the entered text
  TextEditingController departmentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: widget.width,
        height: widget.height,
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                  controller: departmentController,
                  style: TextStyle(color: widget.textColor),
                decoration: InputDecoration(
                  labelText: widget.labelText,
                  labelStyle: TextStyle(color: widget.textColor),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: widget.outlineColor),
                    //borderRadius: BorderRadius.circular(50.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: widget.outlineColor),
                    //borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: widget.outlineColor),
                  ),
                  filled: true,
                  fillColor: widget.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}