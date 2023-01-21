import 'package:event_360/screen/sign_up_success/components/body.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SignUpSuccessScreen extends StatelessWidget {
  static String routeName = "/Sign_up_success";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Inscription Reussie",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Body(),
      ),
    );
  }
}
