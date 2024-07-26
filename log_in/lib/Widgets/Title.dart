import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final Color? color;
  final TextAlign? textAlign;

  const TitleText({
    super.key,
    required this.text,
    this.style,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
    this.color,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 24,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontFamily: 'MadimiOne',
        color: color ?? Colors.black,
      ).merge(style),
      textAlign: textAlign,
    );
  }
}