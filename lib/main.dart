import 'package:flutter/material.dart';
import 'package:mobile_intern_test_aksa_ast/screens/introduction/first_intro_screen.dart';
import 'package:mobile_intern_test_aksa_ast/screens/introduction/second_intro_screen.dart';
import 'package:mobile_intern_test_aksa_ast/screens/introduction/third_intro_screen.dart';
import 'package:mobile_intern_test_aksa_ast/screens/product/product_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Rame',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        duration: const Duration(microseconds: 1000), curve: Curves.easeInOut);
  }

  void onNext() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void onEnd() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProductScreen()),
    );
  }
}
