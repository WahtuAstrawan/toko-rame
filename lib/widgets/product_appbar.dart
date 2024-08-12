import 'package:flutter/material.dart';
import 'package:mobile_intern_test_aksa_ast/utils/dummy_snackbar.dart';

class ProductAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProductAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            showDummySnackbar(context, "Download");
          },
          icon: const Icon(
            Icons.file_download_outlined,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            showDummySnackbar(context, "Cart");
          },
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
