import 'package:flutter/material.dart';

class EventModel {
  final String image;
  final String eventtitle;
  final String price;
  final DateTime date;
  final String address;
  final String description;

  EventModel({
    required this.image,
    required this.eventtitle,
    required this.price,
    required this.date,
    required this.address,
    required this.description,
  });
}

EventModel currentEvent = EventModel(
  image: 'assets/images/Event_background_image_1.png',
  eventtitle: 'Education Bootcamp',
  price: 'Rp. 75.000',
  date: DateTime(2022, 9, 6), 
  address: 'Lorem ipsum dolor sit amet',
  description: 'Lorem ipsum dolor sit amet',
);
