import 'package:event_360/screen/cart/components/body.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../constants.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cartscreen";
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              LineAwesomeIcons.arrow_left,
              color: kPrimaryColor,
            )),
        title: Text(
          "Panier",
          style: TextStyle(
              fontSize: 20, color: kPrimaryColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Body(),
    );
  }
}
