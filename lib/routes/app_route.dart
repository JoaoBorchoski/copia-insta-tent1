import 'package:copia_insta_tent1/presentation/ui/home/home_page.dart';
import 'package:copia_insta_tent1/presentation/ui/login/login_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const Login = '/';
  static const HomePage = '/home';
}

var appRoutes = <String, WidgetBuilder>{
  '/': (context) => Login(),
  '/home': (context) => HomePage(),
};
