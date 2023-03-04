import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../constant/colors.dart';
import '../constant/constants.dart';

class VisaScreen extends StatelessWidget {
  const VisaScreen({Key? key}) : super(key: key);
  static String routeName = "/visacard";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kBackgroungColors,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                LineAwesomeIcons.times,
                color: Colors.black,
              )),
          title: Text(
            "Carte de Crédit",
            style: headingStyle2,
          ),
        ),
        body: Container(),
      ),
    );
  }
}
