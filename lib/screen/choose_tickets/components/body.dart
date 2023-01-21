import 'package:event_360/constants.dart';
import 'package:event_360/screen/choose_tickets/components/ticket_count.dart';
import 'package:event_360/screen/reservation/reservation.dart';
import 'package:flutter/material.dart';

import '../../../models/event/event.dart';
import 'choose_tickets_header.dart';

class Body extends StatefulWidget {
  const Body({Key? key, this.event}) : super(key: key);
  final EventModel? event;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          TicketHeader(
            event: widget.event,
          ),
          SizedBox(height: 60),
          TicketCountwWdget(
            event: widget.event,
            text: 'Prix Habituel',
            priceType: "5000",
          ),
          widget.event!.premiumPrice != null
              ? TicketCountwWdget(
                  event: widget.event,
                  text: 'Prix Premium',
                  priceType: "10000",
                )
              : Container(),
          SizedBox(height: 10),
          Column(
            children: [
              Text(
                'Résumé',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset.zero,
                            blurRadius: 0.0,
                            spreadRadius: 0.0),
                        BoxShadow(
                          color: Colors.black54,
                          offset: const Offset(
                            4.0,
                            4.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Quantité',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Description',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Prix Habituel',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Prix premium',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Tarifs',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  widget.event!.regularPrice.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  widget.event!.premiumPrice == null
                                      ? " "
                                      : widget.event!.premiumPrice!.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Divider(
                          color: Colors.black,
                          height: 3,
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            Text("10000",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          BottomAppBar(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Réserver votre tickets",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Divider(color: kPrimaryColor),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, ReservationScreen.routeName,
                            arguments:
                                ReservationArguments(event: widget.event));
                      },
                      child: Text("Passer à la caisse".toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor.withOpacity(0.6),
                        side: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
