import 'package:event_360/screen/constant/constants.dart';
import 'package:event_360/screen/sign_up/components/body.dart';
import 'package:flutter/material.dart';
import '../constant/colors.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kBackgroungColors,
          title: Text(
            "Inscription",
            style: headingStyle2,
          ),
        ),
        body: Body(),
      ),
    );
  }
}
