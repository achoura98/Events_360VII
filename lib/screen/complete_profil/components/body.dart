import 'package:event_360/constants.dart';
import 'package:event_360/screen/complete_profil/components/complete_profil_form.dart';
import 'package:event_360/size_config.dart';
import 'package:flutter/material.dart';

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
              SizedBox(
                height: SizeConfig.screenHeight! * 0.02,
              ),
              Text(
                'Complèter Votre Profil',
                style: headingStyle,
              ),
              Text(
                "Entrer vos coordonnées ou continuer \navec les médias sociaux",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              CompleteProfileForm(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Text(
                "En continuant, Vous confirmez que vous acceptez \n nos conditions générales",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
