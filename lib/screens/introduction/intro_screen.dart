import 'package:flutter/material.dart';
import 'package:mobile_intern_test_aksa_ast/screens/introduction/first_intro_screen.dart';
import 'package:mobile_intern_test_aksa_ast/screens/introduction/second_intro_screen.dart';
import 'package:mobile_intern_test_aksa_ast/screens/introduction/third_intro_screen.dart';
import 'package:mobile_intern_test_aksa_ast/screens/product/product_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(children: [
        PageView(
          controller: pageController,
          children: [
            FirstIntroScreen(
              onNext: onNext,
              onSkip: onSkip,
            ),
            SecondIntroScreen(
              onNext: onNext,
              onSkip: onSkip,
            ),
            ThirdIntroScreen(
              onEnd: onEnd,
            )
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.33),
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: const ExpandingDotsEffect(
                  dotColor: Color(0xFFFFFFFF),
                  activeDotColor: Color(0xFFFFFFFF),
                  dotHeight: 4,
                  dotWidth: 5),
            )),
      ]),
    );
  }

  void onSkip() {
    pageController.animateToPage(2,
        duration: const Duration(microseconds: 750),
        curve: Curves.easeInOutCubicEmphasized);
  }

  void onNext() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubicEmphasized);
  }

  void onEnd() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProductScreen()),
    );
  }
}
