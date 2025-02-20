import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manara_test/app/global/custom/buttons/general_button.dart';
import 'package:manara_test/app/global/custom/texts/custom_text.dart';
import 'package:manara_test/core/colors/app_colors.dart';
import 'package:manara_test/core/enum/text_type.dart';
import 'package:manara_test/core/extensions/theme_ext.dart';

import '../../../../core/enum/button_type.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.type, required this.onPressed});

  final ButtonType type;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.yesConfirmShip:
        return YesConfirmShipButton(
          onPressed: onPressed,
        );
      case ButtonType.noCancel:
        return NoCancelButton(
          onPressed: onPressed,
        );
      case ButtonType.rateNow:
        return RateNowButton(
          onPressed: onPressed,
        );
      // case ButtonType.login:
      //   return LoginButton(onPressed: onPressed);
      // case ButtonType.signup:
      //   return SignUpButton(onPressed: onPressed);
    }
  }
}

class YesConfirmShipButton extends StatelessWidget {
  const YesConfirmShipButton({super.key, required this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GeneralButton(
      onPressed: onPressed,
      style: context.getTheme.elevatedButtonTheme.style?.copyWith(
        // textStyle: context.getTheme.textButtonTheme.style?.textStyle,
        // backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
        minimumSize: WidgetStatePropertyAll(Size(140.w, 30.h)),
      ),
      child: CustomText(textType: TextType.yesSure),
    );
  }
}

class NoCancelButton extends StatelessWidget {
  const NoCancelButton({super.key, required this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GeneralButton(
      onPressed: onPressed,
      style: context.getTheme.elevatedButtonTheme.style?.copyWith(
        // textStyle: context.getTheme.textButtonTheme.style?.textStyle,
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.r,
            ),
            side: BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(AppColors.whiteColor),
        minimumSize: WidgetStatePropertyAll(Size(140.w, 30.h)),
      ),
      child: CustomText(textType: TextType.noCanel),
    );
  }
}

class RateNowButton extends StatelessWidget {
  const RateNowButton({super.key, required this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GeneralButton(
      onPressed: onPressed,
      style: context.getTheme.elevatedButtonTheme.style?.copyWith(
        // textStyle: context.getTheme.textButtonTheme.style?.textStyle,
        // backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
        minimumSize: WidgetStatePropertyAll(Size(50.w, 17.h)),
      ),
      child: CustomText(
        textType: TextType.rateNow,
      ),
    );
  }
}
