import 'dart:developer';

import 'package:flutter/material.dart';

class OBS extends NavigatorObserver {
  static List<String> backStack = [];
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    backStack.add(route.settings.name ?? 'unnamed');
    log("push to ${route.settings.name}");
    log(backStack.toString());
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    backStack.removeLast();
    log("pop from ${route.settings.name}");
    log(backStack.toString());
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    if (newRoute == null) return;
    backStack.clear();
    backStack.add(newRoute.settings.name ?? 'unnamed');
    log(backStack.toString());
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    backStack.remove(route.settings.name ?? 'unnamed');
    log(backStack.toString());
  }

  @override
  String toString() {
    return backStack.toString();
  }
}
