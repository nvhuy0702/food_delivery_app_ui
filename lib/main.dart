import 'package:flutter/material.dart';

import 'feature/on_boarding/pages/on_boarding_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const OnBoardingPage(),
    ),
  );
}
