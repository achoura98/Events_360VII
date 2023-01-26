import 'package:event_360/constants.dart';
import 'package:event_360/models/event/data.dart';
import 'package:event_360/screen/payment/components/billing_card.dart';
import 'package:event_360/screen/payment/components/reservation_header.dart';
import 'package:flutter/material.dart';

import '../../../models/event/event.dart';

class Body extends StatefulWidget {
  final EventModel? event;

  const Body({Key? key, this.event}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selected = 0;

  Widget customRadio(
      {required String text,
      required int index,
      required VoidCallback onClicked}) {
    return OutlinedButton(
      onPressed: onClicked,
      child: Text(
        text,
        style: TextStyle(
            color: selected == index ? kPrimaryColor : Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          side: BorderSide(
              color: (selected == index) ? kPrimaryColor : Colors.grey,
              width: 3)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PayementHeader(
            event: widget.event,
          ),
          SizedBox(height: 30),
          BillingCard(
            event: popularEvents[0],
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: kPrimaryColor)),
              child: Column(
                children: [
                  Text(
                    "Mode de payement",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customRadio(
                            text: 'Carte de crédit',
                            index: 1,
                            onClicked: () => showModalBottomSheet(
                                context: context,
                                builder: (context) => buildsheet())),
                        customRadio(
                            text: 'T-money',
                            index: 2,
                            onClicked: () => showModalBottomSheet(
                                context: context,
                                builder: (context) => buildsheet1())),
                        customRadio(
                            text: 'Flooz',
                            index: 3,
                            onClicked: () => showModalBottomSheet(
                                context: context,
                                builder: (context) => buildsheet2()))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget buildsheet() => Container();
Widget buildsheet1() => Container();
Widget buildsheet2() => Container();
