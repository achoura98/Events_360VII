import 'package:event_360/models/event/data.dart';
import 'package:event_360/screen/constant/constants.dart';
import 'package:event_360/screen/tickets/components/past_ticket_empty.dart';
import 'package:event_360/screen/tickets/components/past_tickets_card.dart';
import 'package:event_360/screen/tickets/components/ticket_empty.dart';
import 'package:event_360/screen/tickets/components/tickets_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colors.dart';

class TicketScreen extends StatelessWidget {
  static String routeName = "/TicketScreen";

  @override
  Widget build(BuildContext context) {
    List ticket = [];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: kBackgroungColors,
            title: Text(
              "Billets",
              style: headingStyle2,
            ),
            automaticallyImplyLeading: false,
            bottom: TabBar(
                labelStyle: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.bold),
                labelColor: kPrimaryColor,
                unselectedLabelColor: Colors.grey,
                indicatorColor: kPrimaryColor,
                tabs: [
                  Tab(
                    text: "Prochainement",
                  ),
                  Tab(text: "Mes Billets")
                ]),
          ),
          body: TabBarView(children: [
            ticket.isNotEmpty
                ? TicketEmpty()
                : ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext ctx, int index) {
                      return TicketCard(
                        event: popularEvents[index],
                      );
                    },
                  ),
            ticket.isNotEmpty
                ? Scaffold(body: PastTicketEmpty())
                : ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext ctx, int index) {
                      return PastTicketCard(
                        event: upcomingHomeEvents[index],
                      );
                    },
                  ),
          ])),
    );
  }
}
