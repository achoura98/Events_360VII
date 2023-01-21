import 'package:event_360/constants.dart';
import 'package:event_360/screen/choose_tickets/components/body.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../models/event/event.dart';

class ChooseTicketScreen extends StatelessWidget {
  static String routeName = "/chooseTicket";

  ChooseTicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ChooseTicketsArguments args =
        ModalRoute.of(context)!.settings.arguments as ChooseTicketsArguments;
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
          "Choisis tes tickets",
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

class ChooseTicketsArguments {
  final EventModel? event;

  ChooseTicketsArguments({required this.event});
}

Widget checkoutSection(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10),
    width: double.infinity,
    height: 70,
    decoration: BoxDecoration(
        border: Border(top: BorderSide(color: kPrimaryColor, width: 1.5))),
    child: Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              side: BorderSide.none,
            ),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Caisse",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Total: ",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          " 10000 Fcfa",
          style: TextStyle(
              color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],
    ),
  );
}
