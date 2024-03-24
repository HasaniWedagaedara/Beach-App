import 'package:beachapp/firebase_options.dart';
import 'package:beachapp/pages/LoginPage.dart';
import 'package:beachapp/widgets/Googlebutton.dart';
import 'package:beachapp/widgets/Texbox.dart';
import 'package:beachapp/widgets/TextSize25.dart';
import 'package:beachapp/widgets/TextSize35.dart';
import 'package:beachapp/widgets/buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

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
              SizedBox(height: 100,),
              TextSize35(text: "SIGN UP"),
              SizedBox(height: 50,),
              TextBox(labelText: "Email", width: 380, height: 40,controller: _email,obsecureText: false,autocorrect: true,),
              SizedBox(height: 40,),
              TextBox(labelText: "Password", width: 380, height: 40,controller: _password,obsecureText: true,autocorrect:false),
              SizedBox(height: 50,),
              
              Buttons(
                onPressed:() async {
                  await Firebase.initializeApp(
                    options: DefaultFirebaseOptions.currentPlatform,
                  );
                  final email=_email.text;
                  final password=_password.text;

                  try{
                    final UserCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
                    print(UserCredential);
                  } on FirebaseAuthException catch (e){
                    if (e.code=='weak-password'){
                      print("weak password");
                    }
                    else if(e.code=='email-already-in-use') {
                      print("email is already in use");
                    }
                    else if(e.code=='invalid-email') {
                      print("invalid email entered");
                    }
                  }
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                text: "Sign Up"
              ),
              
               SizedBox(height: 25,),
               Center(child: TextSize25(text: "Or")),
               SizedBox(height: 25,),
              GButton(onPressed: () {}
              ),
              SizedBox(height: 145,),
              
              
              
             
          
            ],
          ),
        ),
      ),
    );
  }
}
