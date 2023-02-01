//import 'package:event_360/components/add_to_cart.dart';
import 'package:event_360/models/event/event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../components/add_to_cart.dart';
import '../../screen/constant/colors.dart';
import '../../screen/event/event_detail.dart';
import '../../screen/home/components/new_components/custom_like_icon.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.width,
    required this.event,
  }) : super(key: key);
  final double width;
  final EventModel event;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(2.0, 2.0),
                blurRadius: 10.0,
                spreadRadius: 1.0),
          ],
          borderRadius: BorderRadius.circular(10.0),
        ),
        width: width,
        child: Column(
          children: [
            GestureDetector(
              onTap: (() => Navigator.pushNamed(context, EventDetail.routeName,
                  arguments: EventDetailArguments(event: event))),
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: Image.asset(
                        event.images,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 85,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white.withOpacity(0.8),
                      ),
                      height: 40,
                      // width: 205,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              LineAwesomeIcons.calendar,
                              color: kPrimaryColor,
                            ),
                            Text(
                              event.date,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        event.title,
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      CustomLikeButton(),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(LineAwesomeIcons.map_marker),
                      Text(
                        event.location,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  AddToCartButton(event: event)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
