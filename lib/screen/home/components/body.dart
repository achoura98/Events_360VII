import 'package:event_360/screen/home/components/event_category.dart';
import 'package:event_360/screen/home/components/home_header.dart';
import 'package:event_360/screen/home/components/popular_event.dart';
import 'package:event_360/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(30)),
            EventType(),
            SizedBox(height: getProportionateScreenHeight(30)),
            PopularEvent(),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
