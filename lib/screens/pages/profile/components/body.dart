import 'package:flutter/material.dart';
import '../../../signin/signin_screen.dart';
import '../profileScreenParts/googlemap.dart';
import '../profileScreenParts/webview.dart';
import 'profile_menu.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 110),
      child: Column(
        children: [
          const SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "About Us",
            icon: "assets/icons/website.svg",
            press: () {
              Navigator.pushReplacementNamed(context, WebViewApp.route);
            },
          ),
          ProfileMenu(
            text: "Our location",
            icon: "assets/icons/map.svg",
            press: () {
              Navigator.pushReplacementNamed(context, MapScreen.route);
            },
          ),
          ProfileMenu(
            text: "Edit Shipping details",
            icon: "assets/icons/shipping.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.pushReplacementNamed(context, SigninScreen.route);
            },
          ),
        ],
      ),
    );
  }
}
