import 'package:flutter/material.dart';
import 'package:tikfest/model/user_model.dart';

class MainDashboardProvider extends ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  MainDashboardProvider(UserModel userModel) {
    _user = userModel;
  }
}
