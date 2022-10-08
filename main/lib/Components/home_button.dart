import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget HomeButton(
  BuildContext context,
) {
  return IconButton(
      onPressed: () => Navigator.popAndPushNamed(context, "Home"),
      icon: Icon(Icons.home));
}
