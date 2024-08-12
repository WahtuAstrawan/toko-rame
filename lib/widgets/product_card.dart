import 'package:flutter/material.dart';
import 'package:mobile_intern_test_aksa_ast/utils/share_dialog.dart';
import 'package:mobile_intern_test_aksa_ast/widgets/product_badge.dart';
import 'package:mobile_intern_test_aksa_ast/widgets/product_button.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final bool isNew;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    this.isNew = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 150,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              if (isNew)
                const Positioned(
                  top: 0,
                  right: 8,
                  child: ProductBadge(text: "New"),
                ),
              Positioned(
                bottom: 4,
                left: 9,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      color: const Color(0xFF0EA5E9).withOpacity(0.8),
                      borderRadius: const BorderRadius.all(Radius.circular(6))),
                  child: const Text(
                    "30% Komisi",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Harga reseller",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF697170),
                  ),
                ),
                const SizedBox(height: 1),
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        color: Color(0xFF16A34A),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.backpack_outlined,
                      color: Color(0xFF697170),
                      size: 15,
                    ),
                    const Text(
                      "99+ pcs",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF697170),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Center(
                  child: ProductButton(
                    onPressed: () {
                      showShareDialog(context);
                    },
                    text: "Bagikan Produk",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
