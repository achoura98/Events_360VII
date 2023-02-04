import 'package:event_360/screen/constant/constants.dart';
import 'package:event_360/screen/opt%20screen/components/body.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class VerificationOtp extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kBackgroungColors,
          title: Text(
            "Vérification Otp",
            style: headingStyle2,
          ),
          centerTitle: true,
        ),
        body: Body(),
      ),
    );
  }
}
