import 'package:flutter/material.dart';
import 'package:oke_oce_app/ui/second_page.dart';

import 'ui/home.dart';

class Router {
  static const initialPage = "/";
  static const secondPage = "/second-page";
  static const loginPage = "/login-page";

  static Route<dynamic> generateRouter(RouteSettings settings) {
    Widget widget = Home();
    switch(settings.name) {
      case initialPage :
         widget = Home();
        break;
      case secondPage :
        widget = SecondPage();
        break;
    }
    return MaterialPageRoute(builder : (_)=> widget);
  }
}