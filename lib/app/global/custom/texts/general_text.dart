import 'package:flutter/material.dart';

class GeneralText extends StatelessWidget {
  const GeneralText({
    super.key,
    required this.word,
    this.maxLines,
    this.overflow,
    this.style,
    this.textAlign,
  });

  final String word;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      word,
      maxLines: maxLines,
      overflow: overflow,
      style: style,
      textAlign: textAlign,
    );
  }
}
