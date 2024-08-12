import 'package:flutter/material.dart';
import 'package:mobile_intern_test_aksa_ast/widgets/intro_content.dart';

class ThirdIntroScreen extends StatelessWidget {
  const ThirdIntroScreen({super.key, required this.onEnd});
  final VoidCallback onEnd;

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
                "assets/images/intro3.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        // const Positioned(top: 56, right: 20, child: SkipButton()),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: IntroContent(
              title: 'Toko Online Unik\nUntuk Kamu Jualan',
              desc: 'Subdomain unik dan toko online profesional\nsiap pakai',
              textButton: '  Selesai  ',
              onNext: onEnd,
            )),
      ],
    );
  }
}
