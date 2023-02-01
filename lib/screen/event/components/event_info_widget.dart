import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../models/event/event.dart';
import '../../constant/colors.dart';

class EventInfoWidget extends StatelessWidget {
  const EventInfoWidget({
    Key? key,
    required this.event,
  }) : super(key: key);

  final EventModel? event;

  @override
  Widget build(BuildContext context) {
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
                event!.day + ", " + event!.date,
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
                event!.fromTo,
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
                event!.duration + ' Heure',
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
                event!.location,
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
