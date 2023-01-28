import 'package:event_360/screen/splash/components/body.dart';
import 'package:event_360/screen/constant/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    //methode call
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
