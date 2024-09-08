// lib/main.dart
import 'package:flutter/material.dart';
import 'package:store_app/screens/FirestPage.dart';

void main() {
  runApp(MyApp()); // Run the app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
// Use the correct class name
    );
  }
}
