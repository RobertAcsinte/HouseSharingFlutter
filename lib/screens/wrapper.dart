import 'package:flutter/material.dart';
import 'package:house_sharing_flutter/screens/authenticate/authenticate.dart';
import 'package:house_sharing_flutter/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //return home or auth widget
    return Authenticate();
  }
}
