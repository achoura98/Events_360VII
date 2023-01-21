import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../constants.dart';
import '../../../models/event/event.dart';
import '../../../size_config.dart';

class TicketCountwWdget extends StatelessWidget {
  const TicketCountwWdget({
    Key? key,
    required this.event,
    required this.text,
    required this.priceType,
  }) : super(key: key);

  final EventModel? event;
  final String? priceType;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(80),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Text(
                  "#" + priceType!,
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            ),
            Row(
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(4.0),
                    onTap: (() {}),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          LineAwesomeIcons.minus,
                          color: kPrimaryColor,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 12,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.12,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Text(
                      '1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(4.0),
                    onTap: () {},
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          LineAwesomeIcons.plus,
                          color: Colors.green,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
