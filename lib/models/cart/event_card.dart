//import 'package:event_360/components/add_to_cart.dart';
import 'package:event_360/constants.dart';
import 'package:event_360/models/event/event.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../components/add_to_cart.dart';
import '../../screen/event/event_detail.dart';
import '../../screen/home/components/new_components/custom_like_icon.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    this.width = 300,
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
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        width: width,
        //height: 300,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18),
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
                        style: TextStyle(
                            fontSize: 20,
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  AddToCartButton(event: event)
                ],
              ),
            ),

            // SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Icon(LineAwesomeIcons.calendar),
            //     Text(
            //       event.date,
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold, color: Colors.black),
            //     )
            //   ],
            // ),
            // SizedBox(height: 3),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Icon(LineAwesomeIcons.tag),
            //     Text(
            //       event.cost,
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold, color: Colors.black),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
