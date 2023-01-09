import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_design/utils/dimensions.dart';

class Smalltext extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  Smalltext(
      {super.key,
      this.color = const Color(0xFF8D8782),
      required this.text,
      this.size = 13});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color,
        fontSize: Dimension.size15,
      ),
    );
  }
}
