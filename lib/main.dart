import 'package:flutter/material.dart';
import 'package:parts/screens/splash/my_home_page.dart';
import '../../app/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyHomePageScreen.route,
      routes: routes,
    );
  }
}
