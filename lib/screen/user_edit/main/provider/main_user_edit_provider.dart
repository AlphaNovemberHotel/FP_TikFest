import 'package:flutter/material.dart';
import 'package:tikfest/model/user_model.dart';
import 'package:tikfest/screen/user_edit/main/user_edit_page.dart';

class MainUserEditProvider extends ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  MainUserEditProvider(UserModel userModel) {
    _user = userModel;
  }

  void navigateTo(MainUserEditPage mainUserEditPage) {}
}
