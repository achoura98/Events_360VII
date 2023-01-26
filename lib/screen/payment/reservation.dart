import 'package:event_360/screen/payment/components/body.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../constants.dart';
import '../../models/event/event.dart';

class PayementScreen extends StatelessWidget {
  static String routeName = "/payement";

  PayementScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PayementArguments args =
        ModalRoute.of(context)!.settings.arguments as PayementArguments;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              LineAwesomeIcons.times,
              color: kPrimaryColor,
            )),
        title: Text(
          "Option de payement",
          style: TextStyle(
              fontSize: 20, color: kPrimaryColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Body(
        event: args.event,
      ),
    ));
  }
}

class PayementArguments {
  final EventModel? event;

  PayementArguments({required this.event});
}
