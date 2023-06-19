import 'package:flutter/material.dart';
import '../../../components/navigationbar.dart';
import '../../../repository/user_repository.dart';
import '../../forget/forget_screen.dart';
import '../../signup/signup.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _key = GlobalKey<FormState>();
  final _usernameController = TextEditingController(text: 'shishir');
  final _passwordController = TextEditingController(text: 'shishir');
  _signIn() async {
    try {
      var userRep = await UserRepositoryImp()
          .login(_usernameController.text, _passwordController.text);
      if (userRep) {
        // ignore: use_build_context_synchronously
        Navigator.pushNamed(context, DashboardScreen.route);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              "Login Successfully",
            ),
            backgroundColor: Colors.green,
            behavior: SnackBarBehavior.floating,
            duration: Duration(seconds: 4),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Login Failed",
          ),
          backgroundColor: Colors.redAccent,
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 4),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Form(
          key: _key,
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
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _usernameController,
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  setState(() {
                    _usernameController.text = value.toString();
                  });
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    prefixIcon: Icon(Icons.person_2_rounded),
                    labelText: 'Enter your User Name'),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  setState(() {
                    _passwordController.text = value.toString();
                  });
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Enter Password'),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, ForgetScreen.route);
                        },
                        child: const Text("Forget Password"))
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ))),
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        _signIn();
                      }
                    },
                    child: const Text(
                      "Sign In",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Doesnot have an account?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, SignUpScreen.route);
                        },
                        child: const Text("Register Now"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
