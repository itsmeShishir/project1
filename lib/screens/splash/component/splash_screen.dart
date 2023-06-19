import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text.rich(
            TextSpan(
              text: 'Cars',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              children: [
                TextSpan(
                  text: 'Neapl',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          SizedBox(height: 25),
          Text(
            'ONLINE Car Parts',
            style: TextStyle(
              color: Colors.red,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 25),
          Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
