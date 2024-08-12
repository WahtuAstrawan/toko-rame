import 'package:flutter/material.dart';
import 'package:mobile_intern_test_aksa_ast/widgets/intro_content.dart';
import 'package:mobile_intern_test_aksa_ast/widgets/skip_button.dart';

class SecondIntroScreen extends StatelessWidget {
  const SecondIntroScreen(
      {super.key, required this.onNext, required this.onSkip});
  final VoidCallback onNext;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.topCenter,
            child: FractionallySizedBox(
              heightFactor: 0.75,
              child: Image.asset(
                "assets/images/intro2.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
            top: 56,
            right: 20,
            child: SkipButton(
              onPressed: onSkip,
            )),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: IntroContent(
              title: 'Ribuan Produk\ndengan Kualitas Terbaik',
              desc:
                  'Tokorame menyediakan ribuan produk dengan kualitas\nterbaik dari seller terpercaya',
              textButton: 'Selanjutnya',
              onNext: onNext,
            )),
      ],
    );
  }
}
