import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tikfest/components/constans.dart';
import 'package:tikfest/screen/user_edit/bottom_navbar_model.dart';
import 'package:tikfest/screen/user_edit/main/user_edit_page.dart';

class UserEditScreen extends StatefulWidget {
  const UserEditScreen({super.key});

  @override
  State<UserEditScreen> createState() => _UserEditScreenState();
}

class _UserEditScreenState extends State<UserEditScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: bottomNavbarModelList.elementAt(index).page,
        bottomNavigationBar: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(bottom: Constans.defaultPadding / 2),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constans.defaultPadding,
                vertical: Constans.defaultPadding / 2),
            child: GNav(
                backgroundColor: Colors.white,
                tabBackgroundColor: Colors.blueAccent.withOpacity(0.15),
                hoverColor: Colors.blueAccent.withOpacity(0.1),
                rippleColor: Colors.blueAccent.withOpacity(0.1),
                activeColor: const Color.fromARGB(255, 21, 118, 231),
                color: Colors.black.withOpacity(0.5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                gap: Constans.defaultPadding / 2,
                tabs: bottomNavbarModelList,
                selectedIndex: index,
                onTabChange: (index) {
                  setState(() {
                    this.index = index;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
