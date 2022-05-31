 import 'package:flutter/material.dart';
import 'package:house_sharing_flutter/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Sign in"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ElevatedButton(
          child: Text("Sign in anon"),
          onPressed: () async {
            dynamic result = await _authService.signInAnon(); //it can be null or it can be user
            if (result == null) {
              print("error signing in");
            }
            else {
              print("signed in");
              print(result);
            }
          }
        ),
      ),
    );
  }
}
