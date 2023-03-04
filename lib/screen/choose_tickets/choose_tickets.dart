import 'package:event_360/screen/choose_tickets/components/body.dart';
import 'package:event_360/screen/constant/constants.dart';
import 'package:event_360/screen/payment/payement.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../../provider/events.dart';
import '../constant/colors.dart';

class ChooseTicketScreen extends StatelessWidget {
  static String routeName = "/chooseTicket";

  ChooseTicketScreen({Key? key}) : super(key: key);

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
        title: Text("Details tickets", style: headingStyle2),
      ),
      body: Body(),
    ));
  }
}

Widget checkoutSection(
  BuildContext context,
) {
  final eventData = Provider.of<EventModels>(context);
  final eventId = ModalRoute.of(context)!.settings.arguments as String;
  final eventAttr = eventData.findById(eventId);

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
              backgroundColor: kPrimaryColor,
              side: BorderSide.none,
            ),
            onPressed: () {
              Navigator.pushNamed(context, PayementScreen.routeName,
                  arguments: eventAttr.id);
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Caisse",
                style: GoogleFonts.poppins(
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
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          " 10000 Fcfa",
          style: GoogleFonts.poppins(
              color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],
    ),
  );
}
