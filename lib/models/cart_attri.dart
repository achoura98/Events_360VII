import 'package:flutter/cupertino.dart';

class CartAttr with ChangeNotifier {
  final String id;
  final String title;
  final int quantity;
  final String image;
  final int price;
  final String date;

  CartAttr(
      {required this.id,
      required this.title,
      required this.quantity,
      required this.image,
      required this.price,
      required this.date});
}
