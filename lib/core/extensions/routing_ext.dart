import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:colorize/colorize.dart';

List<String> navigationStack = [];

extension ContextX on BuildContext {
  Future<dynamic> go(String routeName,
      {Object? arguments, bool replacement = false}) {
    navigationStack.add(routeName);
    printGo("Go to", routeName);
    return !replacement
        ? Navigator.pushNamed(this, routeName, arguments: arguments)
        : Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
  } //   context.navigateTo('/second');

  Future<void> goUntil(String routeName, {Object? arguments}) {
    navigationStack.clear();
    navigationStack.add(routeName);
    printGo("Go Until", routeName);
    return Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false,
        arguments: arguments);
  }

  bool canPop() {
    return Navigator.of(this).canPop();
  }

  void pop({dynamic value}) {
    if (navigationStack.isNotEmpty) {
      navigationStack.removeLast();
    }
    printPop();
    return Navigator.pop(this, value);
  }
}

printGo(String path, String routeName) {
  log("$path ${Colorize(routeName).apply(Styles.GREEN)}");
  log("Navigation Stack: ${Colorize(navigationStack.toString()).apply(Styles.DARK_GRAY)}");
}

printPop() {
  log(Colorize("Pop").apply(Styles.YELLOW).toString());
  log("Navigation Stack: ${Colorize(navigationStack.toString()).apply(Styles.DARK_GRAY)}");
}
