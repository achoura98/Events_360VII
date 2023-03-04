import 'package:flutter/material.dart';

class FavsAtr with ChangeNotifier {
  final String id;
  final String title;
  final String day;
  final String date;
  final String location;
  final String image;

  FavsAtr({
    required this.id,
    required this.title,
    required this.day,
    required this.date,
    required this.location,
    required this.image,
  });
}
