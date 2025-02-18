import 'package:flutter/material.dart';
import 'package:manara_test/app/global/custom/buttons/general_button.dart';
import 'package:manara_test/app/global/custom/texts/custom_text.dart';
import 'package:manara_test/core/colors/app_colors.dart';
import 'package:manara_test/core/enum/text_type.dart';
import 'package:manara_test/core/extensions/theme_ext.dart';

import '../../../../core/enum/button_type.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.type, this.onPressed});

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
        backgroundColor: WidgetStatePropertyAll(AppColors.whiteColor),
        foregroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
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
        backgroundColor: WidgetStatePropertyAll(AppColors.whiteColor),
        foregroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
      ),
      child: CustomText(textType: TextType.rateNow),
    );
  }
}
