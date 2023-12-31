import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/feature/on_boarding/widgets/introduction_widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IntroductionWidget(),
    );
  }
}
