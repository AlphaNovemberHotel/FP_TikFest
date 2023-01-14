import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/screen/SignUp/components/back_widget.dart';
import 'package:tikfest/screen/SignUp/components/signup_name.dart';
import 'package:tikfest/screen/dashboard/dashboard_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          //Back IOS
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              BackWidget(),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(
                    top: Constans.defaultPadding / 2,
                    right: Constans.defaultPadding,
                    left: Constans.defaultPadding),
                child: Text(
                  "Name : ",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          //Masukan Nama
          Padding(
            padding: const EdgeInsets.only(
                top: Constans.defaultPadding / 2,
                right: Constans.defaultPadding,
                left: Constans.defaultPadding),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your name',
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

          //Email :
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(
                    top: Constans.defaultPadding / 2,
                    right: Constans.defaultPadding,
                    left: Constans.defaultPadding),
                child: Text(
                  "Email : ",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          //Masukan Emain
          Padding(
            padding: const EdgeInsets.only(
                top: Constans.defaultPadding / 2,
                right: Constans.defaultPadding,
                left: Constans.defaultPadding),
            child: TextField(
              controller: _emailTextController,
              decoration: InputDecoration(
                hintText: 'Enter your Email',
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
            children: const [
              Padding(
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
            padding: const EdgeInsets.only(
                top: Constans.defaultPadding / 2,
                right: Constans.defaultPadding,
                left: Constans.defaultPadding),
            child: TextField(
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
              ),
            ),
          ),

          //Confirm Password :
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: Constans.defaultPadding),
                child: Text(
                  "Confirm Password : ",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),

          //Masukan Nama
          Padding(
            padding: const EdgeInsets.only(
                top: Constans.defaultPadding / 2,
                right: Constans.defaultPadding,
                left: Constans.defaultPadding),
            child: TextField(
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
              ),
            ),
          ),

          //SignUp_Button
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(
              onPressed: () {
                AwesomeDialog(
                  context: context,
                  animType: AnimType.leftSlide,
                  headerAnimationLoop: false,
                  dialogType: DialogType.success,
                  showCloseIcon: true,
                  title: 'Succes',
                  desc: 'Successfull Register',
                ).show();
                FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
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
                'SignUp',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
