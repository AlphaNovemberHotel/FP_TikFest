import 'package:flutter/material.dart';
import 'package:tikfest/model/month_model.dart';

class CardModel {
  final String title;
  final String description;
  final String image;
  final int totalParticipants;
  final DateTime date;
  bool isFavorite;

  CardModel({
    required this.title,
    required this.description,
    required this.image,
    required this.totalParticipants,
    required this.date,
    required this.isFavorite,
  });

  String getFormattedDate() {
    MonthName monthName = MonthName();
    return '${date.day} ${monthName.getMonthName(date.month)} ${date.year}';
  }

  IconData getIcon() {
    return isFavorite ? Icons.favorite : Icons.favorite_border;
  }

  Color getIconColor() {
    return isFavorite ? Colors.red : Colors.grey;
  }
}

List<CardModel> cardModelList = [
  CardModel(
    title: 'Lorem',
    description: 'Lorem ipsum dolor sit amet',
    image: 'assets/images/Card_background_image_1.png',
    totalParticipants: 500,
    date: DateTime(2022, 9, 6),
    isFavorite: false,
  ),
  CardModel(
    title: 'Lorem',
    description: 'Lorem ipsum dolor sit amet',
    image: 'assets/images/Card_background_image_1.png',
    totalParticipants: 500,
    date: DateTime(2022, 9, 6),
    isFavorite: false,
  ),
  CardModel(
    title: 'Lorem',
    description: 'Lorem ipsum dolor sit amet',
    image: 'assets/images/Card_background_image_1.png',
    totalParticipants: 500,
    date: DateTime(2022, 9, 6),
    isFavorite: false,
  ),
  CardModel(
    title: 'Lorem',
    description: 'Lorem ipsum dolor sit amet',
    image: 'assets/images/Card_background_image_1.png',
    totalParticipants: 500,
    date: DateTime(2022, 9, 6),
    isFavorite: false,
  ),
  CardModel(
    title: 'Lorem',
    description: 'Lorem ipsum dolor sit amet',
    image: 'assets/images/Card_background_image_1.png',
    totalParticipants: 500,
    date: DateTime(2022, 9, 6),
    isFavorite: false,
  ),
  CardModel(
    title: 'Lorem',
    description: 'Lorem ipsum dolor sit amet',
    image: 'assets/images/Card_background_image_1.png',
    totalParticipants: 500,
    date: DateTime(2022, 9, 6),
    isFavorite: false,
  ),
];
