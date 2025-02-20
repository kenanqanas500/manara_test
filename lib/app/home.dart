import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manara_test/app/global/custom/buttons/custom_button.dart';
import 'package:manara_test/app/global/custom/images/custom_image.dart';
import 'package:manara_test/app/global/custom/textfields/custom_text_field.dart';
import 'package:manara_test/app/global/custom/texts/custom_text.dart';
import 'package:manara_test/app/global/model/category_model.dart';
import 'package:manara_test/app/global/model/ship_model.dart';
import 'package:manara_test/app/ship_details_widget.dart';
import 'package:manara_test/core/colors/app_colors.dart';
import 'package:manara_test/core/enum/button_type.dart';
import 'package:manara_test/core/enum/image_type.dart';
import 'package:manara_test/core/enum/text_form_field_type.dart';
import 'package:manara_test/core/enum/text_type.dart';
import 'package:manara_test/core/helpers/constants.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeSection selectedSection = HomeSection.myAppoinements;
  ShipModel? selectedShip;

  // List<ShipModel> myAppointments = [
  List<ShipModel> shipList = [
    ShipModel(
        shipName: 'شحنة أحمد القرعاوي',
        shipTime: '05:00 م',
        shipStatus: ShipStatus.ordered,
        longitude: '40.7128',
        latitude: '-74.0060',
        shipDate: 'اليوم 1/1/2025',
        shipRate: '0'),
    // ShipModel(
    //     shipName: 'شحنة جو بايدن',
    //     shipTime: '07:15 م',
    //     shipStatus: ShipStatus.delivered,
    //     longitude: '40.7128',
    //     latitude: '-74.0060',
    //     shipDate: '2/8/2024',
    //     shipRate: '0'),
    // ShipModel(
    //     shipName: 'شحنة عمرو دياب ',
    //     shipTime: '05:00 م',
    //     shipStatus: ShipStatus.cancelled,
    //     longitude: '40.7128',
    //     latitude: '-74.0060',
    //     shipDate: '20/9/2025',
    //     shipRate: '0'),
    // ShipModel(
    //     shipName: 'شحنة ياسر عرفات ',
    //     shipTime: '05:00 م',
    //     shipStatus: ShipStatus.delivered,
    //     longitude: '40.7128',
    //     latitude: '-74.0060',
    //     shipDate: '7/11/2025',
    //     shipRate: '3'),
  ];

  final List<CategoryModel> categories = [
    CategoryModel(
        icon: CustomImage(type: ImageType.boxingAndExpress), name: CustomText(textType: TextType.boxing)),
    CategoryModel(icon: CustomImage(type: ImageType.buyMe), name: CustomText(textType: TextType.buyMe)),
    CategoryModel(
        icon: CustomImage(type: ImageType.shippingFurnitureHome),
        name: CustomText(textType: TextType.shipping)),
    CategoryModel(
        icon: CustomImage(type: ImageType.packaging), name: CustomText(textType: TextType.packaging))
  ];

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: categories
                    .map((item) => Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.sp),
                              width: 70.w,
                              height: 70.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  border: Border.all(color: AppColors.lightGreyColor)),
                              child: item.icon,
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              constraints: BoxConstraints(maxWidth: 70.w),
                              child: item.name,
                            ),
                          ],
                        ))
                    .toList(),
              ),
              CustomTextField(
                type: TextFormFieldType.search,
              ),
              Expanded(
                child: Container(
                  // margin: EdgeInsets.only(bottom: 60.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
                    color: AppColors.transparent,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x40E4462E).withAlpha(20), // #E4462E with 25% opacity
                        blurRadius: 25,
                        spreadRadius: 0,
                        offset: Offset(0, 0), // No offset
                      ),
                    ],
                  ),
                  child: Column(
                    spacing: 20.sp,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(textType: TextType.myAppoientments),
                          CustomText(textType: TextType.seeLess)
                        ],
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final isSelected = selectedShip == shipList[index];
                          return InkWell(
                            onTap: () {
                              toggleShip(shipList[index]);
                            },
                            child: Container(
                              // width: double.infinity,
                              height: isSelected ? 200.h : 50.h,
                              margin: EdgeInsets.only(
                                bottom: 20.sp,
                              ),
                              padding: EdgeInsets.all(
                                8.sp,
                              ),
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(
                                    20.r,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xF2482226).withAlpha(15), // #E4462E with 25% opacity
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                      offset: Offset(0, 0), // No offset
                                    ),
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 230.w,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomText(
                                              textType: TextType.shipName,
                                              text: shipList[index].shipName,
                                            ),
                                            CustomText(
                                              textType: TextType.shipDate,
                                              text: shipList[index].shipDate,
                                            ),
                                          ],
                                        ),
                                      ),
                                      /* shipList[index].shipStatus == ShipStatus.ordered
                                      ? Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            // CustomText(
                                            //   textType: TextType.shipTime,
                                            // ),
                                            // CustomText(
                                            //   textType: TextType.deliveredAt,
                                            //   text: shipList[index].shipTime,
                                            // )
                                          ],
                                        )
                                      : */

                                      shipList[index].shipStatus == ShipStatus.ordered
                                          ? isSelected
                                              ? CustomImage(
                                                  type: ImageType.arrowUp,
                                                )
                                              : CustomImage(
                                                  type: ImageType.arrowRight,
                                                )
                                          : shipList[index].shipStatus == ShipStatus.delivered
                                              ? shipList[index].shipRate != '0'
                                                  ? ListView.builder(
                                                      shrinkWrap: true,
                                                      itemBuilder: (context, index) => Icon(
                                                        Icons.star,
                                                        color: AppColors.warningColor,
                                                        size: 15.sp,
                                                      ),
                                                      itemCount: 5,
                                                      scrollDirection: Axis.horizontal,
                                                    )
                                                  : CustomButton(
                                                      type: ButtonType.rateNow,
                                                      onPressed: () {},
                                                    )
                                              : shipList[index].shipStatus == ShipStatus.cancelled
                                                  ? CustomText(
                                                      textType: TextType.shipCancelled,
                                                    )
                                                  : CustomText(
                                                      textType: TextType.shipCancelled,
                                                    )
                                    ],
                                  ),
                                  if (isSelected) ShipDetailsWidget(shipModel: shipList[index])
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: shipList.length,
                      ),
                      // Row(
                      //   children: [
                      //     CustomText(textType: TextType.previousAppointments),
                      //   ],
                      // ),

                      // Spacer(),
                      // Container(
                      //   height: 150.h,
                      //   // margin: EdgeInsets.only(bottom: 60.sp),
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //       boxShadow: [
                      //         BoxShadow(
                      //           color: AppColors.whiteColor.withAlpha(10), // #E4462E with 25% opacity
                      //           blurRadius: 25,
                      //           spreadRadius: 0,
                      //           offset: Offset(0, 0), // No offset
                      //         ),
                      //       ],
                      //       // color: Color(0x40E4462E).withAlpha(20),
                      //       borderRadius: BorderRadius.vertical(top: Radius.circular(20.r))),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       CustomText(textType: TextType.myShippings),
                      //       CustomImage(type: ImageType.arrowUp)
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void toggleShip(ShipModel ship) {
    setState(() {
      if (selectedShip == ship) {
        selectedShip = null; // Collapse if already selected
      } else {
        selectedShip = ship; // Select a new ship
      }
    });
  }
}

enum HomeSection { myAppoinements, myShippings }
