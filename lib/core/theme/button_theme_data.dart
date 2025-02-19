import '../helpers/constants.dart';
import '../colors/app_colors.dart';
import 'package:flutter/material.dart';

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(AppConstants.defaultButtonPadding),
    backgroundColor: AppColors.primaryColor,
    // foregroundColor: Colors.white,
    // textStyle: TextStyle(color: AppColors.whiteColor),
    minimumSize: const Size(double.infinity, 32),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
    ),
  ),
);

final textButtonThemeData = TextButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStatePropertyAll(
      TextStyle(
        color: AppColors.whiteColor,
      ),
    ),
  ),
);

OutlinedButtonThemeData outlinedButtonTheme({Color borderColor = AppColors.blackColor10}) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(AppConstants.defaultButtonPadding),
      minimumSize: const Size(double.infinity, 32),
      side: BorderSide(width: 1.5, color: borderColor),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppConstants.defaultBorderRadious)),
      ),
    ),
  );
}
