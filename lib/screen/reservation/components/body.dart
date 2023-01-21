import 'package:event_360/screen/reservation/components/reservation_header.dart';
import 'package:flutter/material.dart';

import '../../../models/event/event.dart';

class Body extends StatefulWidget {
  final EventModel? event;

  const Body({Key? key, this.event}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Résumé",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          SizedBox(height: 30),
          ReservationHeader(
            event: widget.event,
          ),
          SizedBox(height: 30),
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
