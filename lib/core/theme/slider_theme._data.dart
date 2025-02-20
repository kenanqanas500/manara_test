import 'package:flutter/material.dart';
import 'package:manara_test/core/colors/app_colors.dart';

SliderThemeData sliderThemeData = SliderThemeData(
  activeTrackColor: AppColors.primaryColor,
  inactiveTrackColor: AppColors.greyColor1,
  thumbColor: AppColors.primaryColor,
  trackHeight: 1,
  overlayShape: RoundSliderOverlayShape(
    overlayRadius: 5,
  ),
  thumbShape: RoundSliderThumbShape(
    enabledThumbRadius: 5,
  ),
);
