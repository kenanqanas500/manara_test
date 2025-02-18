import 'package:flutter/material.dart';
import 'package:manara_test/core/helpers/constants.dart';
import 'package:manara_test/core/theme/app_bar_theme_data.dart';
import 'package:manara_test/core/theme/button_theme_data.dart';
import 'package:manara_test/core/theme/check_box_theme_data.dart';
import 'package:manara_test/core/theme/data_table_theme_data.dart';
import 'package:manara_test/core/theme/input_decoration_theme.dart';
import 'package:manara_test/core/theme/scroll_bar_theme_data.dart';

import '../../colors/app_colors.dart';
import '../slider_theme._data.dart';

ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: AppConstants.appFont,
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.scaffoldBackGroundColor,
  iconTheme: const IconThemeData(color: AppColors.blackColor),
  textTheme: const TextTheme(
    //? for home page categories (packaging , shipping , buy me ....)
    bodySmall: TextStyle(fontSize: 12, color: AppColors.blackColor, fontWeight: FontWeight.w400),
    //? for shippings title in home screen (each shipping title)
    bodyLarge: TextStyle(fontSize: 16, color: AppColors.thirdColor, fontWeight: FontWeight.w500),

    //? for title in home page (my appointements)
    bodyMedium: TextStyle(fontSize: 20, color: AppColors.thirdColor, fontWeight: FontWeight.w500),

    //? for text fields and
    titleMedium: TextStyle(fontSize: 12, color: AppColors.greyColor, fontWeight: FontWeight.w400),

    //? for small titles in home screen (see more)
    titleSmall: TextStyle(
      fontSize: 12,
      color: AppColors.greyColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline,
      decorationStyle: TextDecorationStyle.solid,
    ),

    //? for timing in home screen (time for each shipping)
    displaySmall: TextStyle(fontSize: 12, color: AppColors.thirdColor, fontWeight: FontWeight.w400),

    //? for shipping details
    labelLarge: TextStyle(fontSize: 10, color: AppColors.lightGreyColor, fontWeight: FontWeight.w400),

    //? for ship time
    labelSmall: TextStyle(fontSize: 8, color: AppColors.primaryLighted),

    //? for ship status
    labelMedium: TextStyle(fontSize: 15, color: AppColors.lightGreyColor, fontWeight: FontWeight.w400),

    //? for confermation ship status
    displayMedium: TextStyle(fontSize: 16, color: AppColors.whiteColor, fontWeight: FontWeight.w500),

    //? for bottom bar
    displayLarge: TextStyle(fontSize: 10, color: AppColors.lightGreyColor),

    titleLarge: TextStyle(fontSize: 24, color: AppColors.blackColor40),
  ),
  elevatedButtonTheme: elevatedButtonThemeData,
  textButtonTheme: textButtonThemeData,
  outlinedButtonTheme: outlinedButtonTheme(),
  sliderTheme: sliderThemeData,
  inputDecorationTheme: lightInputDecorationTheme,
  checkboxTheme: checkboxThemeData.copyWith(
    side: const BorderSide(color: AppColors.blackColor40),
  ),
  appBarTheme: appBarLightTheme,
  scrollbarTheme: scrollbarThemeData,
  dataTableTheme: dataTableLightThemeData,
);
