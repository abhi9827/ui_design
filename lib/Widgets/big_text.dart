import 'package:flutter/cupertino.dart';

import 'package:ui_design/utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;

  BigText(
      {super.key,
      this.color = const Color(0xFF2B201B),
      required this.text,
      this.size = 30});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: color,
        fontSize: Dimension.size30,
      ),
    );
  }
}
