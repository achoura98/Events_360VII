import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/event/event.dart';

class ReservationHeader extends StatelessWidget {
  const ReservationHeader({
    Key? key,
    required this.event,
  }) : super(key: key);
  final EventModel? event;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(0.2),
          border: Border(
            top: BorderSide(color: kPrimaryColor, width: 3.0),
          )),
      child: Center(
        child: Text(
          event!.title,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
