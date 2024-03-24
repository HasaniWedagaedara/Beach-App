import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthMethods {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future <User?> signUpwithEmailAndPassword(String email,String password) async{

    try{
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email,password:password);

      return credential.user;

    }
    catch (e){
      print("Error Occured");
    }
    return null;
  }

  


  Future <User?> signInwithEmailAndPassword(String email,String password) async{

    try{
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email,password:password);

      return credential.user;

    }
    catch (e){
      print("Error Occured");
    }
    return null;
  }
}