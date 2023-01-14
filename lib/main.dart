import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tikfest/screen/cart/cart_screen.dart';
import 'package:tikfest/screen/dashboard/dashboard_screen.dart';
import 'package:tikfest/screen/login/login_screen.dart';
import 'package:tikfest/screen/myticket/my_ticket_screen.dart';
import 'package:tikfest/screen/profile/profile_screen.dart';
import 'package:tikfest/screen/user_edit/user_edit_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikFest',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          bodyText2: TextStyle(color: Colors.black),
          subtitle1: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
