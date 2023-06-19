import 'package:flutter/material.dart';
import 'package:parts/screens/slide/components/slide_content.dart';
import '../../signin/signin_screen.dart';
import '../../../app/size_config.dart';

class CarasolBody extends StatefulWidget {
  const CarasolBody({super.key});

  @override
  State<CarasolBody> createState() => _CarasolBodyState();
}

class _CarasolBodyState extends State<CarasolBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "image": "assets/images/splash_1.png",
      "text":
          "Buy and sell the car parts \n It is the Ecommerce Market for Cars . \n Interdum dictum tempus, interdum at \n dignissim metus. Ultricies sed nunc.",
    },
    {
      "image": "assets/images/splash_2.png",
      "text":
          "Buy and sell the car parts \n It is the Ecommerce Market for Cars . \n  Interdum dictum tempus, interdum at \n dignissim metus. Ultricies sed nunc.",
    },
    {
      "image": "assets/images/splash_3.png",
      "text":
          "Buy and sell the car parts \n It is the Ecommerce Market for Cars . \n  Interdum dictum tempus, interdum at \n dignissim metus. Ultricies sed nunc.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(90)),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(flex: 1),
                    SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(56),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, SigninScreen.route);
                        },
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(flex: 1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color:
            currentPage == index ? Colors.redAccent : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
