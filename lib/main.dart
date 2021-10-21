import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:the_royal_player/screens/home.dart';
import 'package:the_royal_player/screens/wellet.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Wallet(),
      //home: HomePage(),
    );
  }
}
