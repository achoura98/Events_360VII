import 'package:event_360/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFF44336);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final RegExp emailValidateRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Veuillez saisir votre email";
const String kInvalidPhoneError = "Veuillez saisir un numero valide";
const String kNamelNullError = "Veuillez saisir votre Prénom";
const String kPhoneNumberNullError = "Veuillez saisir votre Télephone";
const String kInvalidEmailError = "Veuillez saisir une adresse e-mail valide";
const String kAddressNullError = "Veuillez saisir votre adresse";

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
    borderSide: BorderSide(color: kTextColor, width: 2.0),
  );
}
