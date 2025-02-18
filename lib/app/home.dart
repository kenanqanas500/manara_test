import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manara_test/app/global/custom/images/custom_image.dart';
import 'package:manara_test/app/global/custom/texts/custom_text.dart';
import 'package:manara_test/core/enum/image_type.dart';
import 'package:manara_test/core/enum/text_type.dart';
import 'package:manara_test/core/helpers/constants.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<Widget> categories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppConstants.defaultPadding.sp),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            spacing: 20.h,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImage(type: ImageType.notification),
                  CustomImage(type: ImageType.logo),
                ],
              ),
              Container(
                child: CustomImage(type: ImageType.packaging),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 60.sp),
                decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(20.r))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(textType: TextType.myShippings),
                    CustomImage(type: ImageType.arrowUp)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
