import 'package:flutter/material.dart';
import 'package:tikfest/model/event_model.dart';
import 'package:tikfest/model/user_model.dart';

class EventPageProvicer extends ChangeNotifier {
  late EventModel _event;

  EventModel get user => _event;

  EventPageProvicer(EventModel eventModel) {
    _event = eventModel;
  }
}
