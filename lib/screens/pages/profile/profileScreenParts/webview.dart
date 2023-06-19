import 'package:flutter/material.dart';

class WebViewApp extends StatefulWidget {
  static String route = "webview";
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // body: SafeArea(
        // child: WebView(
        //     initialURl: "https://www.foodappsco.com/",
        //     JavaScriptMode: JavaScriptMode.unrestricted),
        //   ),
        );
  }
}
