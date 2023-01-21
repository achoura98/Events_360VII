import 'package:event_360/screen/profil/components/body.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../../constants.dart';

class UpdateProfilScreen extends StatelessWidget {
  static String routeName = "/updateprofil";
  UpdateProfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                LineAwesomeIcons.angle_left,
                color: kPrimaryColor,
              )),
          title: Text(
            "Modifier Profil",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Body());
  }
}
