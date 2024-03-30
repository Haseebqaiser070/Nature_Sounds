import 'package:flutter/material.dart';
import 'package:nature_sounds/screens/onBoardingScreen/onboarding_screen_one.dart';
import 'package:nature_sounds/screens/onBoardingScreen/onboarding_screen_three.dart';
import 'package:nature_sounds/screens/onBoardingScreen/onboarding_screen_two.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});
  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  final _controller = PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: const [
        OnBoardingScreenOne(),
        OnBoardingScreenTwo(),
        OnBoardingScreenThree(),
      ],
    );
  }
}
