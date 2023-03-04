import 'package:event_360/screen/event/components/body.dart';
import 'package:flutter/material.dart';

class EventDetail extends StatelessWidget {
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Body()),
    );
  }
}
