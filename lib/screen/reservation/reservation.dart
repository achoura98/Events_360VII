import 'package:event_360/screen/reservation/components/body.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../constants.dart';
import '../../models/event/event.dart';

class ReservationScreen extends StatelessWidget {
  static String routeName = "/reservation";

  ReservationScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ReservationArguments args =
        ModalRoute.of(context)!.settings.arguments as ReservationArguments;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              LineAwesomeIcons.times,
              color: kPrimaryColor,
            )),
        title: Text(
          "Réservation",
          style: TextStyle(
              fontSize: 20, color: kPrimaryColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Body(
        event: args.event,
      ),
    ));
  }
}

class ReservationArguments {
  final EventModel? event;

  ReservationArguments({required this.event});
}
