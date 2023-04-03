import 'package:flutter/material.dart';
import 'screen_one.dart';
// ignore: duplicate_import
import 'package:categories/screen_one.dart';
import 'Screen_two.dart';

void main() {
  runApp(const AppFood());
}


class AppFood extends StatefulWidget {
  const AppFood({super.key});

  @override
  State<AppFood> createState() => _AppFoodState();
}

class _AppFoodState extends State<AppFood> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:ScreenOne (),
      ),
    );
  }
}
