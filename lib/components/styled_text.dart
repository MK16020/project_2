import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  late FontWeight? fontWeight = FontWeight.normal;
  final double fontSize;
  int? maxLine = 4;
  Color? color = const Color(0xffDCD7C9);
  final String text;

  StyledText(
    this.text, {
    Key? key,
    required this.fontSize,
    this.color,
    this.fontWeight,
    this.maxLine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
    );
  }
}
