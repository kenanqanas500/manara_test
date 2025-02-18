import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manara_test/app/home_wrapper.dart';
import 'package:manara_test/core/routes/app_router.dart';

import 'core/helpers/constants.dart';
import 'core/theme/app_theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeEasyLocalization();
  runApp(EasyLocalization(
      supportedLocales: [Locale('ar')],
      fallbackLocale: Locale('ar'),
      path: AppConstants.translation,
      child: ManaraTest()));
}

initializeEasyLocalization() async {
  await EasyLocalization.ensureInitialized();
}

class ManaraTest extends StatefulWidget {
  const ManaraTest({super.key});

  @override
  State<ManaraTest> createState() => _ManaraTestState();
}

class _ManaraTestState extends State<ManaraTest> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        theme: appTheme,
        onGenerateRoute: AppRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: Locale('ar'),
        home: HomeWrapper(),
      ),
    );
  }
}
