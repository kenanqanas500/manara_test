import '../helpers/constants.dart';
import '../colors/app_colors.dart';
import 'package:flutter/material.dart';

const InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  fillColor: AppColors.lightGreyColor,
  filled: true,
  alignLabelWithHint: true,
  constraints: BoxConstraints(maxHeight: 50),
  hintStyle: TextStyle(color: AppColors.greyColor, fontSize: 12),
  border: outlineInputBorder,
  enabledBorder: outlineInputBorder,
  errorStyle: TextStyle(fontSize: 6),
  focusedBorder: focusedOutlineInputBorder,
  errorBorder: errorOutlineInputBorder,
);

const InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
  fillColor: AppColors.darkGreyColor,
  filled: true,
  constraints: BoxConstraints(maxHeight: 50),
  hintStyle: TextStyle(color: AppColors.whileColor40),
  border: outlineInputBorder,
  enabledBorder: outlineInputBorder,
  focusedBorder: focusedOutlineInputBorder,
  errorBorder: errorOutlineInputBorder,
  errorStyle: TextStyle(fontSize: 6),
);

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
  borderSide: BorderSide(
    color: Colors.transparent,
  ),
);

const OutlineInputBorder focusedOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
  borderSide: BorderSide(color: AppColors.primaryColor),
);

const OutlineInputBorder errorOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
  borderSide: BorderSide(
    color: AppColors.errorColor,
  ),
);
