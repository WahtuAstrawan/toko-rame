import 'package:flutter/material.dart';

void showShareDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                const Text(
                  "Bagikan Produk",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              title: const Text("Teks dan Link"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text("Gambar"),
              onTap: () {},
            ),
            const Divider(),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      );
    },
  );
}
