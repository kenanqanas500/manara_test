import '../colors/app_colors.dart';
import 'package:flutter/material.dart';

const AppBarTheme appBarLightTheme = AppBarTheme(
  backgroundColor: Colors.white,
  elevation: 0,
  iconTheme: IconThemeData(color: AppColors.blackColor),
  titleTextStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  ),
);

const AppBarTheme appBarDarkTheme = AppBarTheme(
  backgroundColor: AppColors.blackColor,
  elevation: 0,
  iconTheme: IconThemeData(color: Colors.white),
  titleTextStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
);
