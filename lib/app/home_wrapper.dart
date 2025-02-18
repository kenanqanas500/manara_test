import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:manara_test/app/add_ship.dart';
import 'package:manara_test/app/global/custom/images/custom_image.dart';
import 'package:manara_test/app/home.dart';
import 'package:manara_test/app/my_account.dart';
import 'package:manara_test/app/my_wallet.dart';
import 'package:manara_test/app/ship_calculate.dart';
import 'package:manara_test/core/colors/app_colors.dart';
import 'package:manara_test/core/enum/image_type.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class HomeWrapper extends StatelessWidget {
  HomeWrapper({super.key});
  final List<Widget> _screens = [
    Home(),
    ShipCalculate(),
    AddShip(),
    MyWallet(),
    MyAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return SafeArea(
      child: PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: _screens[0],
            item: ItemConfig(
                icon: CustomImage(type: ImageType.home),
                title: "الرئيسية",
                activeForegroundColor: AppColors.thirdColor),
          ),
          PersistentTabConfig(
            screen: _screens[1],
            item: ItemConfig(
                icon: CustomImage(type: ImageType.shipCalculate),
                title: "حاسبة الشحن",
                activeForegroundColor: AppColors.thirdColor),
          ),
          PersistentTabConfig(
            screen: _screens[2],
            item: ItemConfig(
                icon: CustomImage(type: ImageType.addShip),
                title: "",
                activeForegroundColor: AppColors.primaryColor),
          ),
          PersistentTabConfig(
            screen: _screens[3],
            item: ItemConfig(
                icon: CustomImage(type: ImageType.myWalle),
                title: "محفظتي",
                activeForegroundColor: AppColors.thirdColor),
          ),
          PersistentTabConfig(
            screen: _screens[4],
            item: ItemConfig(
                icon: CustomImage(type: ImageType.myAccount),
                title: "حسابي",
                activeForegroundColor: AppColors.thirdColor),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style13BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }
}
