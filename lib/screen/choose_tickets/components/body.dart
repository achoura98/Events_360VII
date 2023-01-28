import 'package:event_360/screen/payment/payement.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/event/event.dart';
import '../../constant/colors.dart';

class Body extends StatefulWidget {
  const Body({Key? key, this.event}) : super(key: key);
  final EventModel? event;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // DetailsTicketHeader(
          //   event: widget.event,
          // ),
          // TicketCountwWdget(
          //   event: widget.event,
          //   text: 'Prix Habituel',
          //   priceType: "5000",
          // ),
          // widget.event!.premiumPrice != null
          //     ? TicketCountwWdget(
          //         event: widget.event,
          //         text: 'Prix Premium',
          //         priceType: "10000",
          //       )
          //     : Container(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.event!.title,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: kPrimaryColor, width: 2),
                          color: kPrimaryColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        widget.event!.categoryName,
                        style: GoogleFonts.poppins(
                            color: kPrimaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(color: kPrimaryColor),
                ),
                Text("Résumé",
                    style: GoogleFonts.poppins(
                        color: kPrimaryTextColor, fontWeight: FontWeight.bold))
              ],
            ),
          ),

          BottomAppBar(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: CustomElevatedButton(
                      text: "Passer à la caisse".toUpperCase(),
                      onClick: () {
                        Navigator.pushNamed(context, PayementScreen.routeName,
                            arguments: PayementArguments(event: widget.event));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onClick,
  }) : super(key: key);

  final String text;
  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      child: Text(text,
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        side: BorderSide.none,
      ),
    );
  }
}
