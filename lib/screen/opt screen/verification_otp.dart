import 'package:event_360/screen/opt%20screen/components/body.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../constants.dart';

class VerificationOtp extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                LineAwesomeIcons.angle_left,
                color: kPrimaryColor,
              )),
          title: Text(
            "Vérification Otp",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Body(),
      ),
    );
  }
}
