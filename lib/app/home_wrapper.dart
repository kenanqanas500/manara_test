import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:manara_test/app/add_ship.dart';
import 'package:manara_test/app/home.dart';
import 'package:manara_test/app/my_account.dart';
import 'package:manara_test/app/my_wallet.dart';
import 'package:manara_test/app/ship_calculate.dart';
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
              icon: Icon(Icons.home),
              title: "الرئيسية",
            ),
          ),
          PersistentTabConfig(
            screen: _screens[1],
            item: ItemConfig(
              icon: Icon(Icons.message),
              title: "حاسبة الشحن",
            ),
          ),
          PersistentTabConfig(
            screen: _screens[2],
            item: ItemConfig(
              icon: Icon(Icons.message),
              title: "",
            ),
          ),
          PersistentTabConfig(
            screen: _screens[3],
            item: ItemConfig(
              icon: Icon(Icons.settings),
              title: "محفظتي",
            ),
          ),
          PersistentTabConfig(
            screen: _screens[4],
            item: ItemConfig(
              icon: Icon(Icons.settings),
              title: "حسابي",
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style13BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }
}
