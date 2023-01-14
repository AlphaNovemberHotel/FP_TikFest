import 'package:flutter/material.dart';
import 'package:tikfest/model/user_model.dart';

class MainProfileProvider extends ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  MainProfileProvider(UserModel userModel) {
    _user = userModel;
  }
}
