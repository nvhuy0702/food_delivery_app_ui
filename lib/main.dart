import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/feature/start_screen/start_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const StartScreen(),
  ));
}
