import 'package:event_360/screen/constant/constants.dart';
import 'package:event_360/screen/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../../constant/colors.dart';
import '../../sign_up_success/sigu_up_success_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(50)),
              Text("Vérification OTP", style: headingStyle),
              Text(
                "Consulter votre messagerie pour valider le code",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, color: kSecondTextColor),
              ),
              SizedBox(height: getProportionateScreenHeight(50)),
              Pinput(
                length: 6,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Renvoyer le code",
                    style: GoogleFonts.poppins(color: kPrimaryColor),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.1,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (c) => SignUpSuccessScreen()));
                  },
                  child: Text("Vérifier".toUpperCase(),
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
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Ce code expirera dans "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: GoogleFonts.poppins(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
