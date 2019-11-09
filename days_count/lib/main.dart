import 'package:flutter/material.dart';
import 'app_screens/loginpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Days Count",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Loginpage(),
    );
  }
}
