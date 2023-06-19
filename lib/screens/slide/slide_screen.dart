import 'package:flutter/material.dart';
import '../../app/size_config.dart';
import 'components/body.dart';

class SlideScreen extends StatelessWidget {
  static String route = "slideScreen";

  const SlideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: CarasolBody(),
    );
  }
}
