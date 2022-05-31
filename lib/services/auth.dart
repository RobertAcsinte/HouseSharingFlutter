import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //signIn anon
  Future signInAnon() async {
    try{
      UserCredential userCredential = await _firebaseAuth.signInAnonymously();
      User? user = userCredential.user;
      return user;
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  //signIn email and password

  //register email and password

  //sign out

}