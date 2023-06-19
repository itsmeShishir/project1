// import 'package:flutter/material.dart';
// import 'package:parts/repository/user_repository.dart';
// import 'package:parts/screens/wearos/wearosdashboard.dart';
// import 'package:wear/wear.dart';

// import '../../app/snackbar.dart';
// import '../../repository/student_repo.dart';

// class WearLoginScreen extends StatefulWidget {
//   const WearLoginScreen({super.key});
//   static const String route = "wearLoginScreen";

//   @override
//   State<WearLoginScreen> createState() => _WearLoginScreenState();
// }

// class _WearLoginScreenState extends State<WearLoginScreen> {
//   final _formKey = GlobalKey<FormState>();

//   final _usernameController = TextEditingController(text: 'kiran');
//   final _passwordController = TextEditingController(text: 'kiran123');

//   _login() async {
//     final islogin = await UserRepositoryImpl()
//         .loginStudent(_usernameController.text, _passwordController.text);
//     if (islogin) {
//       _goToAnotherPage();
//     } else {
//       _showMessage();
//     }
//   }

//   _goToAnotherPage() {
//     Navigator.pushNamed(context, WearDashboardScreen.route);
//   }

//   _showMessage() {
//     showSnackbar(context, 'Invalid username or password', Colors.red);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WatchShape(
//       builder: ((context, shape, child) {
//         return AmbientMode(
//           builder: ((context, mode, child) {
//             return Scaffold(
//               appBar: AppBar(
//                 toolbarHeight: MediaQuery.of(context).size.height * .2,
//                 title: const Text('Login'),
//               ),
//               body: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(4.0),
//                   child: Form(
//                     key: _formKey,
//                     child: Column(
//                       children: [
//                         TextFormField(
//                           controller: _usernameController,
//                           decoration: const InputDecoration(
//                             labelText: 'Username',
//                           ),
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'Please enter username';
//                             }
//                             return null;
//                           },
//                         ),
//                         const SizedBox(height: 4),
//                         TextFormField(
//                           controller: _passwordController,
//                           obscureText: true,
//                           decoration: const InputDecoration(
//                             labelText: 'Password',
//                           ),
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'Please enter password';
//                             }
//                             return null;
//                           },
//                         ),
//                         SizedBox(
//                           width: double.infinity,
//                           child: ElevatedButton(
//                             onPressed: () {
//                               if (_formKey.currentState!.validate()) {
//                                 _login();
//                               }
//                             },
//                             child: const Text('Login'),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           }),
//         );
//       }),
//     );
//   }
// }
