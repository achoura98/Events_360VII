import 'package:event_360/screen/event/components/body.dart';
import 'package:flutter/material.dart';

import '../../models/event/event.dart';

class EventDetail extends StatelessWidget {
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    final EventDetailArguments args =
        ModalRoute.of(context)!.settings.arguments as EventDetailArguments;
    return SafeArea(
      child: Scaffold(
          body: Body(
        event: args.event,
      )),
    );
  }
}

class EventDetailArguments {
  final EventModel? event;

  EventDetailArguments({required this.event});
}
