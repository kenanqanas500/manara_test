import 'package:flutter/material.dart';
import 'package:manara_test/app/global/custom/texts/general_text.dart';
import 'package:manara_test/core/colors/app_colors.dart';
import 'package:manara_test/core/enum/text_type.dart';
import 'package:manara_test/core/extensions/theme_ext.dart';
import 'package:manara_test/core/translation/app_texts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.textType,
  });
  final TextType textType;

  @override
  Widget build(BuildContext context) {
    switch (textType) {
      case TextType.packaging:
        return Text(AppTexts.packaging, style: context.getTheme.textTheme.bodySmall);
      case TextType.shipping:
        return Text(AppTexts.shippingHomeFurnature, style: context.getTheme.textTheme.bodySmall);
      case TextType.buyMe:
        return Text(AppTexts.buyMe, style: context.getTheme.textTheme.bodySmall);
      case TextType.boxing:
        return Text(AppTexts.boxingAndExpress, style: context.getTheme.textTheme.bodySmall);
      case TextType.writeNumberOrName:
        return Text(AppTexts.shipNameOrNumberForSeach, style: context.getTheme.textTheme.titleMedium);
      case TextType.myAppoientments:
        return Text(AppTexts.myAppointments, style: context.getTheme.textTheme.bodyMedium);
      case TextType.seeLess:
        return Text(AppTexts.seeLess, style: context.getTheme.textTheme.titleSmall);
      case TextType.shipTime:
        return Text(AppTexts.shipTime, style: context.getTheme.textTheme.labelSmall);
      case TextType.shipBooked:
        return Text(AppTexts.shipOrdered, style: context.getTheme.textTheme.labelMedium);
      case TextType.shipConfirmed:
        return Text(AppTexts.shipConfirmOrdered, style: context.getTheme.textTheme.labelMedium);
      case TextType.shipOnTheWay:
        return Text(AppTexts.shipOnTheWay, style: context.getTheme.textTheme.labelMedium);
      case TextType.shipReceived:
        return Text(AppTexts.shipReceived, style: context.getTheme.textTheme.labelMedium);
      case TextType.areYouSureToConfirm:
        return Text(AppTexts.sureToConfirmShipOrder,
            style: context.getTheme.textTheme.labelMedium?.copyWith(color: AppColors.primaryLighted));
      case TextType.yesSure:
        return Text(AppTexts.yesSure, style: context.getTheme.textTheme.displayMedium);
      case TextType.noCanel:
        return Text(AppTexts.noCancel,
            style: context.getTheme.textTheme.displayMedium?.copyWith(color: AppColors.primaryColor));
      case TextType.editShipTime:
        return Text(AppTexts.editShipTime, style: context.getTheme.textTheme.titleMedium);
      case TextType.myShippings:
        return Text(AppTexts.myShippings, style: context.getTheme.textTheme.bodyMedium);
      case TextType.home:
        return Text(AppTexts.home,
            style: context.getTheme.textTheme.displayLarge?.copyWith(color: AppColors.primaryColor));
      case TextType.shipCalculation:
        return Text(AppTexts.calculateShip, style: context.getTheme.textTheme.displayLarge);
      case TextType.myWallet:
        return Text(AppTexts.myWallet, style: context.getTheme.textTheme.displayLarge);
      case TextType.myAccount:
        return Text(AppTexts.myAccount, style: context.getTheme.textTheme.displayLarge);
    }
  }
}

class PackagingText extends StatelessWidget {
  const PackagingText({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralText(word: AppTexts.packaging, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold));
  }
}
