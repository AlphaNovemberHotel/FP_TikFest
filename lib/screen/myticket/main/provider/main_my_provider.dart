import 'package:flutter/material.dart';
import 'package:tikfest/model/event_model.dart';
import 'package:tikfest/model/user_model.dart';

class MainTicketProvider extends ChangeNotifier {
  late EventModel _event;

  EventModel get user => _event;

  MainTicketProvider(EventModel eventModel) {
    _event = eventModel;
  }
}
