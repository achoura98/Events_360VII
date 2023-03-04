import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/events.dart';
import '../../constant/colors.dart';

class PayementHeader extends StatelessWidget {
  const PayementHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventData = Provider.of<EventModels>(context);
    final eventId = ModalRoute.of(context)!.settings.arguments as String;
    final eventAttr = eventData.findById(eventId);
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
          eventAttr.title,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
