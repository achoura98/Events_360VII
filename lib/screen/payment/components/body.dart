import 'package:event_360/screen/constant/image_string.dart';
import 'package:event_360/screen/constant/text_string.dart';
import 'package:event_360/screen/payment/components/payement_mode_widget.dart';
import 'package:event_360/screen/payment/components/reservation_header.dart';
import 'package:flutter/material.dart';

import '../../../models/event/event.dart';
import '../../constant/colors.dart';

class Body extends StatefulWidget {
  final EventModel? event;

  const Body({Key? key, this.event}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PayementHeader(
            event: widget.event,
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
                  PayementModeWidget(
                    image: tPayementmodeImage1,
                    onPressed: () {},
                    title: tPayementModeTitle1,
                  ),
                  PayementModeWidget(
                    image: tPayementmodeImage2,
                    onPressed: () {},
                    title: tPayementModeTitle2,
                  ),
                  PayementModeWidget(
                    image: tPayementmodeImage3,
                    onPressed: () {},
                    title: tPayementModeTitle3,
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
