import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GeneralTextField extends StatelessWidget {
  const GeneralTextField({
    super.key,
    this.suffixIcon,
    this.hintText,
    this.prefix,
    this.suffix,
    this.hintStyle,
    this.inputFormatters,
    this.keyboardType,
  });
  final Widget? suffixIcon;
  final String? hintText;
  final Widget? prefix;
  final Widget? suffix;
  final TextStyle? hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        prefix: prefix,
        suffix: suffix,
        hintStyle: hintStyle,
      ),
    );
  }
}
