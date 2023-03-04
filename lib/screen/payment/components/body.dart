import 'package:event_360/screen/constant/image_string.dart';
import 'package:event_360/screen/constant/text_string.dart';
import 'package:event_360/screen/mobile_money_screen/mobile_money.dart';
import 'package:event_360/screen/mobile_money_screen/visa_screen.dart';
import 'package:event_360/screen/payment/components/payement_mode_widget.dart';
import 'package:event_360/screen/payment/components/reservation_header.dart';
import 'package:flutter/material.dart';
import '../../constant/colors.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

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
          PayementHeader(),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: kPrimaryColor)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mode de payement",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: (() {
                      Navigator.pushNamed(context, VisaScreen.routeName);
                    }),
                    child: PayementModeWidget(
                      image: tPayementmodeImage1,
                      title: tPayementModeTitle1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MobileMoneyScreen.routeName);
                    },
                    child: PayementModeWidget(
                      image: tPayementmodeImage2,
                      title: tPayementModeTitle2,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
