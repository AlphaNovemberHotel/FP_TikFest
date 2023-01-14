import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/screen/login/login_screen.dart';

class UserLogout extends StatefulWidget {
  const UserLogout({super.key, required userModel});

  @override
  State<UserLogout> createState() => _UserLogoutState();
}

class _UserLogoutState extends State<UserLogout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: const EdgeInsets.symmetric(
              horizontal: Constans.defaultPadding * 2,
              vertical: Constans.defaultPadding * 1.3,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadowColor: Colors.black,
            elevation: 7,
          ),
          child: Text(
            'Logout',
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ],
    );
  }
}
