import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:tikfest/model/user_model.dart';
import 'package:tikfest/screen/dashboard/main/dashboard_page.dart';
import 'package:tikfest/screen/dashboard/main/provider/main_dashboard_provider.dart';
import 'package:tikfest/screen/profile/main/profile_page.dart';

import 'main/provider/main_profile_provider.dart';

class BottomNavbarModel extends GButton {
  final Widget page;

  const BottomNavbarModel({
    super.key,
    required this.page,
    required icon,
    required text,
  }) : super(
          icon: icon,
          text: text,
        );
}

List<BottomNavbarModel> bottomNavbarModelList = [
  BottomNavbarModel(
      page: ChangeNotifierProvider(
          create: (context) => MainDashboardProvider(currentUser),
          child: const MainDashboardPage()),
      icon: Icons.dashboard_outlined,
      text: 'Dashboard'),
  BottomNavbarModel(
    page: ChangeNotifierProvider(
        create: (context) => MainDashboardProvider(currentUser),
        child: const MainDashboardPage()),
    icon: Icons.card_travel,
    text: 'Cart',
  ),
  BottomNavbarModel(
    page: ChangeNotifierProvider(
        create: (context) => MainDashboardProvider(currentUser),
        child: const MainDashboardPage()),
    icon: Icons.folder,
    text: 'MyTicket',
  ),
  BottomNavbarModel(
      page: ChangeNotifierProvider(
          create: (context) => MainProfileProvider(currentUser),
          child: const MainProfilePage()),
      icon: Icons.settings,
      text: 'Settings'),
];
