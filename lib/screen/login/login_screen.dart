import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';

import 'package:tikfest/components/constans.dart';
import 'package:tikfest/main.dart';
import 'package:tikfest/screen/SignUp/SignUp.dart';
import 'package:tikfest/screen/dashboard/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Logo
          Container(
            margin: const EdgeInsets.all(20),
            child: const Image(
              width: 150,
              image: AssetImage('assets/images/Logo5.png'),
            ),
          ),

          //Login into your account
          const Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text("Login into your account"),
          ),

          //Login :
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: Constans.defaultPadding),
                child: Text(
                  "Login : ",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          //Box Masukan Email
          Padding(
            padding: const EdgeInsets.only(
                top: Constans.defaultPadding / 2,
                right: Constans.defaultPadding,
                left: Constans.defaultPadding),
            child: TextField(
              controller: _emailTextController,
              decoration: InputDecoration(
                hintText: 'Masukan email',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),

          //Password :
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    top: Constans.defaultPadding / 2,
                    right: Constans.defaultPadding,
                    left: Constans.defaultPadding),
                child: Text(
                  "Password : ",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          //Masukan Password
          Padding(
            padding: const EdgeInsets.all(Constans.defaultPadding),
            child: TextField(
                obscureText: true,
                controller: _passwordTextController,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                )),
          ),

          //Text Button Forgot Password
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: Constans.defaultPadding),
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 13),
                  ),
                  onPressed: () {},
                  child: const Text('Forgot password?',
                      textAlign: TextAlign.right),
                ),
              ),
            ],
          ),

          //Login Button
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const DashboardScreen(),
              //   ),
              // );
              AwesomeDialog(
                context: context,
                animType: AnimType.leftSlide,
                headerAnimationLoop: false,
                dialogType: DialogType.success,
                showCloseIcon: true,
                title: 'Succes',
                desc: 'Login Into your dashboard',
              ).show();
              FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text)
                  .then(
                    (value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardScreen()),
                    ),
                  )
                  .catchError((onError) => {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.rightSlide,
                          headerAnimationLoop: false,
                          title: 'Error',
                          desc: 'Error ${onError.toString()}',
                          btnOkOnPress: () {},
                          btnOkIcon: Icons.cancel,
                          btnOkColor: Colors.red,
                        ).show(),
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Error ${onError.toString()}")))
                      });
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: Constans.defaultPadding * 8,
                vertical: Constans.defaultPadding * 1.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              shadowColor: Colors.black,
              elevation: 7,
            ),
            child: Text(
              'Login',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),

          //----or----
          Column(children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(
                        right: Constans.defaultPadding,
                        left: Constans.defaultPadding),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
              Text("OR"),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(
                        right: Constans.defaultPadding,
                        left: Constans.defaultPadding),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
            ]),
          ]),

          //Sign Up Button
          TextButton(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Constans.defaultPadding * 7,
                  vertical: Constans.defaultPadding - 5,
                ),
                child: Text(
                  "Sign Up".toUpperCase(),
                  style: TextStyle(fontSize: 14),
                ),
              ),
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: Colors.blue)))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const SignUpScreen();
                }));
              }),
        ],
      ),
    );
  }
}
