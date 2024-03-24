import 'package:beachapp/pages/SignUpPAge.dart';
import 'package:beachapp/widgets/Googlebutton.dart';
import 'package:beachapp/widgets/TextSize35.dart';
import 'package:beachapp/widgets/Textsize18.dart';
import 'package:beachapp/widgets/buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:beachapp/widgets/Texbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/1.jpg'), 
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 120,),
              TextSize35(text: "LOGIN"),
              SizedBox(height: 50,),
              TextBox(labelText: "Email", width: 380, height: 40,controller: _email,obsecureText: false,autocorrect: true,),
              SizedBox(height: 40,),
              TextBox(labelText: "Password", width: 380, height: 40,controller: _password,obsecureText: true,autocorrect:false),
              SizedBox(height: 50,),
              
              Buttons(
                onPressed:() async {
                  
                  final email=_email.text;
                  final password=_password.text;
                  try{
                    final UserCredential=await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password,);
                    print(UserCredential);
                  }
                  on FirebaseAuthException catch (e){
                    if(e.code=='User-not-found'){
                    print("User not found");
                    }
                    else if(e.code =='wrong-password'){
                      print("wrong password");
                    }
                  }
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                text: "Login"
              ),
              Row(
                children: [
                  SizedBox(width: 100,),
                  TextSize18(text: "Forgot Password ? "),
                  TextButton(
                  onPressed: () => SignUpPage(),
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                        color: Color.fromARGB(255, 14, 37, 74),
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                ],
              ),
               SizedBox(height: 45,),
              GButton(onPressed: () {}
              ),
              SizedBox(height: 45,),
              Row(
                children: [
                  SizedBox(width: 65,),
                  TextSize18(text: "Don't have an account ? "),
                  TextButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                  },
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                        color: Color.fromARGB(255, 14, 37, 74),
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                ],
              ),
              SizedBox(height: 40,),
          
            ],
          ),
        ),
      ),
    );
  }
}