import 'package:beachexplora/pages/login.dart';
import 'package:beachexplora/widgets/App%20Bar.dart';
import 'package:beachexplora/widgets/BottomNavigationBar.dart';
import 'package:beachexplora/widgets/TextSize35.dart';
import 'package:beachexplora/widgets/Textsize18.dart';
import 'package:beachexplora/widgets/buttons.dart';
import 'package:beachexplora/widgets/Texbox.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBarCommon(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/1.jpg'),
            fit: BoxFit.cover,
            
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 80.0),
                Center(child: TextSize35(text: "SIGN UP")),
                SizedBox(height: 55.0),
                TextBox(labelText: "Email", width: 390, height: 40),
                
                SizedBox(height: 25.0),
                TextBox(labelText: "Password", width: 390, height: 40),
                
                SizedBox(height: 65.0),
                Buttons(text: "CONTINUE", onPressed: () { 
                  Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login(), // Replace with your actual destination
          ),
              );
                 },),
                
                  SizedBox(height: 180.0),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:  BottomNavigation(),
    );
  }
}
