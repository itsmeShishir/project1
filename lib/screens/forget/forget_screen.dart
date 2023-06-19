import "package:flutter/material.dart";

import "../signin/signin_screen.dart";

class ForgetScreen extends StatefulWidget {
  static String route = "forget";

  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  get formGlobalKey => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: formGlobalKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  const Image(
                    image: AssetImage('assets/images/login/loginimg.png'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      "Opt Verification",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      "Please enter the opt Verification send into Your Acount and Don’t share the Opt pin to Anyone ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Correct Email';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        prefixIcon: Icon(Icons.mail),
                        labelText: 'Enter your Email Address for Otp'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ))),
                        onPressed: () {},
                        child: const Text(
                          "Verify",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Allready have an Account?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, SigninScreen.route);
                            },
                            child: const Text("Sign In"))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
