import 'package:flutter/material.dart';
import '../components/navigationbar.dart';
import '../screens/forget/forget_screen.dart';
import '../screens/pages/profile/profileScreenParts/googlemap.dart';
import '../screens/pages/profile/profileScreenParts/webview.dart';
import '../screens/signin/signin_screen.dart';
import '../screens/signup/signup.dart';
import '../screens/slide/slide_screen.dart';
import '../screens/splash/my_home_page.dart';

final Map<String, WidgetBuilder> routes = {
  MyHomePageScreen.route: (context) => const MyHomePageScreen(),
  SignUpScreen.route: (context) => const SignUpScreen(),
  DashboardScreen.route: (context) => const DashboardScreen(),
  SlideScreen.route: (context) => const SlideScreen(),
  SigninScreen.route: (context) => const SigninScreen(),
  ForgetScreen.route: (context) => const ForgetScreen(),
  MapScreen.route: (context) => const MapScreen(),
  WebViewApp.route: (context) => const WebViewApp(),
};
