import 'package:event_360/screen/constant/colors.dart';
import 'package:event_360/screen/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(20),
  fontWeight: FontWeight.bold,
  color: kPrimaryColor,
  height: 1.5,
);
final headingStyle2 = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(20),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
final headingStyle3 = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(20),
  fontWeight: FontWeight.bold,
  color: Colors.grey,
  height: 1.5,
);

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionateScreenWidth(15),
  ),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kPrimaryTextColor, width: 2.0),
  );
}
