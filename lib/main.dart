import 'package:flutter/material.dart';
import 'package:house_sharing_flutter/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      darkTheme: ThemeData.from(
        colorScheme: const ColorScheme.light(
          primary: Colors.red,
          brightness: Brightness.light
        ),
        useMaterial3: true,
      ),
      home: Wrapper(),
    );
  }
}


