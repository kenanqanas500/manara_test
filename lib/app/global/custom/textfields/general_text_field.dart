import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manara_test/core/colors/app_colors.dart';
import 'package:manara_test/core/extensions/theme_ext.dart';

class GeneralTextField extends StatelessWidget {
  const GeneralTextField(
      {super.key,
      this.iconInsideFieldAtEnd,
      this.hintText,
      this.iconBeforField,
      this.iconAfterField,
      this.hintStyle,
      this.inputFormatters,
      this.keyboardType,
      this.iconInsideFieldAtStart});
  final Widget? iconInsideFieldAtEnd;
  final String? hintText;
  final Widget? iconBeforField;
  final Widget? iconAfterField;
  final TextStyle? hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Widget? iconInsideFieldAtStart;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          filled: true,
          contentPadding: iconInsideFieldAtStart == null
              ? EdgeInsets.only(
                  right: 10.sp,
                )
              : EdgeInsets.zero,
          fillColor: AppColors.whiteColor,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.lightGreyColor),
              borderRadius: BorderRadius.circular(20.r)),
          suffixIcon: iconInsideFieldAtEnd,
          hintText: hintText,
          prefixIcon: iconInsideFieldAtStart,
          prefix: iconBeforField,
          suffix: iconAfterField,
          hintStyle: hintStyle ?? context.getTheme.textTheme.titleMedium,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.greyColor), borderRadius: BorderRadius.circular(20.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.greyColor), borderRadius: BorderRadius.circular(20.r))),
    );
  }
}
