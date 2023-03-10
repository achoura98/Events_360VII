import 'package:event_360/components/social_card.dart';
import 'package:event_360/screen/constant/constants.dart';
import 'package:event_360/screen/constant/text_string.dart';
import 'package:event_360/screen/opt%20screen/verification_otp.dart';
import 'package:event_360/screen/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../constant/colors.dart';

// page dinscription

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: SizeConfig.screenHeight! * 0.03,
            ),
            Text(
              tinscriptiontext1,
              style: headingStyle2,
            ),
            Text(
              tinscriptiontext1,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, color: kSecondTextColor),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.07,
            ),
            IntlPhoneField(
              decoration: InputDecoration(
                  enabledBorder: outlineInputBorder(),
                  labelText: "Télephone",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: kPrimaryColor)),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: kPrimaryColor),
                  hintText: "Entrez votre numero",
                  hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: CustomSuffixIcon(
                    svgIcon: "assets/icons/Phone.svg",
                  )),
            ),
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (c) => VerificationOtp()));
                },
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
            SizedBox(height: getProportionateScreenHeight(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SizedBox(width: getProportionateScreenWidth(10)),
                SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SizedBox(width: getProportionateScreenWidth(10)),
                SocialCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            ),
            Text(tinscriptiontext3,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, color: kSecondTextColor)),
            SizedBox(height: getProportionateScreenHeight(50)),
          ],
        ),
      ),
    );
  }
}
