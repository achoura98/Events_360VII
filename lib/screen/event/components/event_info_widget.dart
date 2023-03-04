import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../../../provider/events.dart';
import '../../constant/colors.dart';

class EventInfoWidget extends StatelessWidget {
  const EventInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventData = Provider.of<EventModels>(context);
    final eventId = ModalRoute.of(context)!.settings.arguments as String;
    final eventAttr = eventData.findById(eventId);

    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                LineAwesomeIcons.calendar,
                color: kPrimaryColor,
                size: 25,
              ),
              SizedBox(width: 15),
              Text(
                eventAttr.day + ", " + eventAttr.date,
                style: GoogleFonts.poppins(
                    color: kSecondTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                LineAwesomeIcons.clock_1,
                color: kPrimaryColor,
                size: 25,
              ),
              SizedBox(width: 15),
              Text(
                eventAttr.fromTo,
                style: GoogleFonts.poppins(
                    color: kSecondTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                LineAwesomeIcons.clock,
                color: kPrimaryColor,
                size: 25,
              ),
              SizedBox(width: 15),
              Text(
                eventAttr.duration + ' Heure',
                style: GoogleFonts.poppins(
                    color: kSecondTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                LineAwesomeIcons.map_marker,
                color: kPrimaryColor,
                size: 25,
              ),
              SizedBox(width: 15),
              Text(
                eventAttr.location,
                style: GoogleFonts.poppins(
                    color: kSecondTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
            ],
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
