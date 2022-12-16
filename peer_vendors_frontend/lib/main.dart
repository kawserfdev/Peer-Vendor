import 'package:flutter/material.dart';
import 'UI/BottomNavController/BottomNavBer.dart';
import 'UI/BottomNavController/Home/Help & Support.dart';
import 'UI/Registration/Welldone.dart';
import 'UI/Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavController(),
    );
  }
}
