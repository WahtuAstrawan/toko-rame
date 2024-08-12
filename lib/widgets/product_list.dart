import 'package:flutter/material.dart';
import 'package:mobile_intern_test_aksa_ast/widgets/product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 200,
            child: ProductCard(
              imageUrl: "assets/images/product.jpeg",
              title: "Beauty Set by Irvie",
              price: "Rp142.400",
              isNew: index == 1 || index == 3,
            ),
          );
        },
      ),
    );
  }
}
