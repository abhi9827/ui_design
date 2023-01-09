import 'package:flutter/material.dart';

import 'package:ui_design/utils/dimensions.dart';

class MediumText extends StatelessWidget {
  final Color? color;
  final String text;

  double size;

  MediumText(
      {super.key,
      this.color = const Color(0xFF2B201B),
      required this.text,
      this.size = 20});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: color,
        fontSize: Dimension.size20,
      ),
    );
  }
}
