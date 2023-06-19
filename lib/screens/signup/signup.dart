import "package:flutter/material.dart";
import "../../../model/user.dart";
import "../../app/snackbar.dart";
import "../../repository/user_repository.dart";
import "../signin/signin_screen.dart";

class SignUpScreen extends StatefulWidget {
  static String route = "signup";

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _key = GlobalKey<FormState>();
  final _fullnameController = TextEditingController();
  final _emialController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  _saveUser() async {
    User user = User(
      fullname: _fullnameController.text,
      email: _emialController.text,
      username: _usernameController.text,
      password: _passwordController.text,
    );

    int status = await UserRepositoryImp().addUser(user);
    _showMessage(status);
  }

  _showMessage(int status) {
    if (status == 1) {
      showSnackbar(context, 'User Added Successfully', Colors.green);
    } else {
      showSnackbar(context, 'Error registring User', Colors.red);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: _key,
              child: Column(
                children: [
                  const SizedBox(
                    height: 130,
                  ),
                  const Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Welcome Onbord",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Let's Become the Family member?",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    controller: _fullnameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Fullname';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Full name'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: _usernameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter UserName';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Username'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: _emialController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Email Address';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Email'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // TextFormField(
                  //   obscureText: true,
                  //   keyboardType: TextInputType.text,
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return 'Confirm the above Password';
                  //     }
                  //     return null;
                  //   },
                  //   decoration: const InputDecoration(
                  //       border: OutlineInputBorder(
                  //           borderRadius:
                  //               BorderRadius.all(Radius.circular(20))),
                  //       prefixIcon: Icon(Icons.lock),
                  //       labelText: 'Conform Password'),
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
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
                          _saveUser();
                        }
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account?'),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, SigninScreen.route);
                            },
                            child: const Text("Login Now"))
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
