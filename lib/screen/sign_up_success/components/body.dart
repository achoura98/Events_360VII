import 'package:event_360/screen/nav%20bar/nav_bar.dart';
import 'package:event_360/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight! * 0.04,
        ),
        Image.asset(
          "assets/image/success.png",
          height: SizeConfig.screenHeight! * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.08),
        Text(
          "Inscription Reussie",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: (() =>
                  Navigator.pushNamed(context, BubbleNavBar.routeName)),
              child: Text("Continuer".toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                side: BorderSide.none,
              ),
            ),
          ),
        ),
        Spacer()
      ],
    );
  }
}
