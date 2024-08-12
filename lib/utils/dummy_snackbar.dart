import 'package:flutter/material.dart';

void showDummySnackbar(BuildContext context, String desc) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('$desc ditekan')),
  );
}
