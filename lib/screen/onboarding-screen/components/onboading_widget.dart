import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/onboading_model.dart';

class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(30),
      color: model.bgColors,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.4,
          ),
          Column(
            children: [
              Text(
                model.title,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black),
              ),
              Text(model.subtitle,
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blueGrey[700])),
            ],
          ),
          Text(model.counterText,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black)),
          SizedBox(height: 80.0)
        ],
      ),
    );
  }
}
