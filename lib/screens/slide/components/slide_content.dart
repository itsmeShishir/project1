import 'package:flutter/material.dart';
import '../../../app/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(flex: 10),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
        const Spacer(flex: 1),
        Text(
          "Car Parts Nepal",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(26),
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(flex: 1),
        Text(
          text!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
