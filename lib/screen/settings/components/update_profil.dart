import 'package:event_360/screen/constant/constants.dart';
import 'package:event_360/screen/settings/components/body.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../constant/colors.dart';

class UpdateProfilScreen extends StatelessWidget {
  static String routeName = "/updateprofil";
  UpdateProfilScreen({Key? key}) : super(key: key);

// modification profil
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kBackgroungColors,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                LineAwesomeIcons.angle_left,
                color: Colors.black,
              )),
          title: Text(
            "Modifier Profil",
            style: headingStyle2,
          ),
        ),
        body: Body());
  }
}
