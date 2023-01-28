import 'dart:async';

import 'package:event_360/screen/onboarding-screen/onboarding_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:event_360/screen/constant/size_config.dart';
import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 6),
        () => Navigator.pushNamed(context, OnboardingScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 60.0),
                    Text(
                      "EVENTS_360",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(30),
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Bienvenue sur Events_360, Let's go!"),
                    SizedBox(
                      height: 60.0,
                    ),
                    Image.asset(
                      "assets/image/event_image/splash.png",
                      height: getProportionateScreenHeight(280),
                      width: getProportionateScreenWidth(250),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              SpinKitCubeGrid(
                color: kPrimaryColor,
              ),
              SizedBox(
                height: 90.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
