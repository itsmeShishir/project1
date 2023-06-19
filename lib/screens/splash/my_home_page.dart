import 'package:flutter/material.dart';
import 'component/splash_screen.dart';
import '../../app/size_config.dart';
import '../slide/slide_screen.dart';

class MyHomePageScreen extends StatefulWidget {
  const MyHomePageScreen({super.key});
  static const String route = "splashScreen";

  @override
  State<MyHomePageScreen> createState() => _MyHomePageScreenState();
}

class _MyHomePageScreenState extends State<MyHomePageScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, SlideScreen.route);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: SplashScreen(),
    );
  }
}
