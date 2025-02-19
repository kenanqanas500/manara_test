import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manara_test/core/colors/app_colors.dart';

class GeneralTextField extends StatelessWidget {
  const GeneralTextField(
      {super.key,
      this.suffixIcon,
      this.hintText,
      this.iconBeforField,
      this.iconAfterField,
      this.hintStyle,
      this.inputFormatters,
      this.keyboardType,
      this.iconInsideField});
  final Widget? suffixIcon;
  final String? hintText;
  final Widget? iconBeforField;
  final Widget? iconAfterField;
  final TextStyle? hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Widget? iconInsideField;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          filled: true,
          contentPadding: EdgeInsets.zero,
          fillColor: AppColors.whiteColor,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.lightGreyColor),
              borderRadius: BorderRadius.circular(20.r)),
          suffixIcon: suffixIcon,
          hintText: hintText,
          prefixIcon: iconInsideField,
          prefix: iconBeforField,
          suffix: iconAfterField,
          hintStyle: hintStyle,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.greyColor), borderRadius: BorderRadius.circular(20.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.greyColor), borderRadius: BorderRadius.circular(20.r))),
    );
  }
}
