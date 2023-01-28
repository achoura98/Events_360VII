import 'package:event_360/screen/sign_up_success/components/body.dart';
import 'package:flutter/material.dart';

class SignUpSuccessScreen extends StatelessWidget {
  static String routeName = "/Sign_up_success";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
