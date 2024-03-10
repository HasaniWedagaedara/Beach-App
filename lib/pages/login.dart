import 'package:beachexplora/pages/signUp.dart';
import 'package:beachexplora/widgets/App%20Bar.dart';
import 'package:beachexplora/widgets/BottomNavigationBar.dart';
import 'package:beachexplora/widgets/Textsize18.dart';
import 'package:beachexplora/widgets/TextSize35.dart';
import 'package:beachexplora/widgets/buttons.dart';
import 'package:beachexplora/widgets/Googlebutton.dart';
import 'package:beachexplora/widgets/Texbox.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: ListView( // Wrap with ListView to make the Column scrollable
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 50.0),
                    Center(child: TextSize35(text: "LOGIN")),
                    SizedBox(height: 40.0),
                    TextBox(labelText: "Email", width: 350, height: 40),
                    SizedBox(height: 30.0),
                    TextBox(labelText: "Password", width: 350, height: 40),
                    SizedBox(height: 40.0),
                    Buttons(
                      text: "LOGIN",
                      onPressed: () {},
                    ),
                    Row(
                      children: [
                        SizedBox(width: 100.0),
                        TextSize18(text: "Forgot Password ?"),
                        TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ),
                          ),
                          child: const Text(
                            'Reset',
                            style: TextStyle(
                              color: Color.fromARGB(255, 14, 37, 74),
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    GButton(
                      onPressed: () {},
                    ),
                    SizedBox(height: 35.0),
                    Row(
                      children: [
                        SizedBox(width: 67.0),
                        TextSize18(text: "Don't have an account?"),
                        TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ),
                          ),
                          child: const Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: Color.fromARGB(255, 14, 37, 74),
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
