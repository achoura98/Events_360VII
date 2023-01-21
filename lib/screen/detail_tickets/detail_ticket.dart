import 'package:event_360/screen/detail_tickets/components/body.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../constants.dart';

class TicketsDetails extends StatelessWidget {
  static String routeName = "/detail_tickets";
  TicketsDetails({Key? key}) : super(key: key);

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
          "Détails du ticket",
          style: TextStyle(
              color: kPrimaryColor, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
