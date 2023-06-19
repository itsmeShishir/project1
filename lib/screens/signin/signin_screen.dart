import 'package:flutter/material.dart';
import 'components/body.dart';

class SigninScreen extends StatefulWidget {
  static String route = "signin_screen";

  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LoginBody(),
      ),
    );
  }
}
