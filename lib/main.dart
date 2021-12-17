import 'package:team1/screens/login_screen.dart';
import 'package:team1/screens/registration_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      theme: ThemeData(


        primarySwatch: Colors.blue, 
      ),
      home: LoginScreen(),
      
    );
}
}