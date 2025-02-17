import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manara_test/app/home_wrapper.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings? settings) {
    switch (settings!.name) {
      //! auth
      // case LoginView.routeName:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (_) => LoginCubit(),
      //       child: LoginView(
      //         isDriver: settings.arguments as bool?,
      //       ),
      //     ),
      //   );
      // case SignUpView.routeName:
      //   return MaterialPageRoute(builder: (_) => BlocProvider(
      //     create: (context) => SignUpCubit(),
      //     child: SignUpView(),
      //   ));
      default:
        return MaterialPageRoute(settings: settings, builder: (_) => const HomeWrapper());
    }
  }
}
