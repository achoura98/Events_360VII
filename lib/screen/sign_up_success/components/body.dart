import 'package:event_360/screen/nav%20bar/nav_bar.dart';
import 'package:event_360/screen/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight! * 0.04,
        ),
        Image.asset(
          "assets/image/event_image/success.png",
          height: SizeConfig.screenHeight! * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.08),
        Text(
          "Inscription Reussie",
          style: GoogleFonts.poppins(
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
                  Navigator.pushNamed(context, NavBarWidget.routeName)),
              child: Text("Continuer".toUpperCase(),
                  style: GoogleFonts.poppins(
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
