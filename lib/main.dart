import 'package:flutter/material.dart';
import 'package:germankotha1/UI/welcame_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcamePage(), // Using SignPage correctly
      debugShowCheckedModeBanner: false,
    );
  }
}