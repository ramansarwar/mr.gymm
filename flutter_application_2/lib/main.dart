import 'package:flutter/material.dart';
import 'screens/login&singup/welcom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Welcom(),
    );
  }
}


