import 'package:flutter/material.dart';
import 'package:mobile_intern_test_aksa_ast/widgets/product_appbar.dart';
import 'package:mobile_intern_test_aksa_ast/widgets/product_buttombar.dart';
import 'package:mobile_intern_test_aksa_ast/widgets/product_details.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const ProductAppBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 8 / 9,
                  child: PageView(
                    controller: pageController,
                    children: [
                      Image.asset(
                        "assets/images/product.jpeg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/images/product.jpeg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/images/product.jpeg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/images/product.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 1410),
              ],
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 1.61,
              left: 0,
              right: 0,
              child: Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 4,
                  effect: const ExpandingDotsEffect(
                    dotColor: Colors.white,
                    activeDotColor: Colors.white,
                    dotHeight: 4,
                    dotWidth: 5,
                  ),
                ),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.5,
                left: 0,
                right: 0,
                child: const ProductDetails()),
            const Positioned(
                bottom: 0, left: 0, right: 0, child: ProductButtomBar())
          ],
        ),
      ),
    );
  }
}
