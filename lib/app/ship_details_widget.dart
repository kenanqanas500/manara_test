import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manara_test/app/global/custom/buttons/custom_button.dart';
import 'package:manara_test/app/global/custom/textfields/custom_text_field.dart';
import 'package:manara_test/app/global/custom/texts/custom_text.dart';
import 'package:manara_test/app/global/model/ship_model.dart';
import 'package:manara_test/core/colors/app_colors.dart';
import 'package:manara_test/core/enum/button_type.dart';
import 'package:manara_test/core/enum/text_form_field_type.dart';
import 'package:manara_test/core/enum/text_type.dart';
import 'package:latlong2/latlong.dart';

class ShipDetailsWidget extends StatefulWidget {
  const ShipDetailsWidget({super.key, required this.shipModel});

  final ShipModel shipModel;

  @override
  State<ShipDetailsWidget> createState() => _ShipDetailsWidgetState();
}

class _ShipDetailsWidgetState extends State<ShipDetailsWidget> {
  double? currentValue;

  @override
  void initState() {
    log("lat => ${double.parse(widget.shipModel.latitude)}");
    log("long => ${double.parse(widget.shipModel.longitude)}");
    currentValue = widget.shipModel.shipStatus == ShipStatus.ordered
        ? 1.5
        : widget.shipModel.shipStatus == ShipStatus.confirmed
            ? 2
            : widget.shipModel.shipStatus == ShipStatus.onTheWay
                ? 2.5
                : 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5.sp,
      children: [
        SizedBox(
          height: 5.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              textType: TextType.shipBooked,
            ),
            CustomText(
              textType: TextType.shipConfirmed,
            ),
            CustomText(
              textType: TextType.shipOnTheWay,
            ),
            CustomText(
              textType: TextType.shipReceived,
            )
          ],
        ),
        Slider(
          value: currentValue!,
          onChanged: (newValue) {
            log("value => $newValue");
            setState(() {
              currentValue = newValue;
            });
          },
          divisions: 3,
          min: 1,
          max: 3,
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomText(
          textType: TextType.areYouSureToConfirm,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              type: ButtonType.yesConfirmShip,
              onPressed: () {},
            ),
            CustomButton(
              type: ButtonType.noCancel,
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: 100.h,
          child: FlutterMap(
            mapController: MapController(),
            options: MapOptions(
              initialCenter: LatLng(
                double.parse(widget.shipModel.latitude),
                double.parse(widget.shipModel.longitude),
              ),
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'dev.fleaflet.flutter_map.example',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(
                      double.parse(widget.shipModel.latitude),
                      double.parse(widget.shipModel.longitude),
                    ),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on_sharp,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomTextField(
          type: TextFormFieldType.edit,
        )
      ],
    );
  }
}
