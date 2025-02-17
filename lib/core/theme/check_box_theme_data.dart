import '../helpers/constants.dart';
import '../colors/app_colors.dart';
import 'package:flutter/material.dart';

CheckboxThemeData checkboxThemeData = CheckboxThemeData(
  checkColor: MaterialStateProperty.all(Colors.white),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(AppConstants.defaultBorderRadious / 2),
    ),
  ),
  side: const BorderSide(color: AppColors.whileColor40),
);
