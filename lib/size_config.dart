import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

// Obtenir une hauteur proportionnée selon la taille de l'écran
double getProportionateScreenHeight(double inputHeight) {
  double? screenHeight = SizeConfig.screenHeight;
  // 812 est la hauteur de mise en page utilisée
  return (inputHeight / 812.0) * screenHeight!;
}

// Obtenir une largeur proportionnée selon la taille de l'écran
double getProportionateScreenWidth(double inputWidth) {
  double? screenWidth = SizeConfig.screenHeight;
  // 812 est la largeur de mise en page utilisée
  return (inputWidth / 812.0) * screenWidth!;
}
