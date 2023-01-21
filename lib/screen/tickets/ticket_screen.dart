import 'package:event_360/screen/tickets/ticket_empty.dart';
import 'package:event_360/screen/tickets/tickets_screen_full.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../constants.dart';

class TicketScreen extends StatelessWidget {
  static String routeName = "/TicketScreen";

  @override
  Widget build(BuildContext context) {
    List ticket = [];
    return ticket.isNotEmpty
        ? Scaffold(body: TicketEmpty())
        : Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Billets",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  LineAwesomeIcons.angle_left,
                  color: kPrimaryColor,
                ),
              ),
            ),
            body: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext ctx, int index) {
                return TicketScreenFull();
              },
            ),
          );
  }
}
