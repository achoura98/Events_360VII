import 'package:event_360/screen/choose_tickets/choose_tickets.dart';
import 'package:event_360/screen/choose_tickets/components/event_info_widget2.dart';
import 'package:event_360/screen/constant/text_string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../models/event/event.dart';
import '../../../provider/events.dart';
import '../../constant/colors.dart';
import 'dropdown_widget.dart';

class Body extends StatefulWidget {
  Body({Key? key, this.event}) : super(key: key);
  final EventModel? event;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String ticketCatValue = 'Ticket Bronze';
  String numbersTicket = '1';

  int ticketsPrice = 0;

  @override
  Widget build(BuildContext context) {
    final eventData = Provider.of<EventModels>(context);
    final eventId = ModalRoute.of(context)!.settings.arguments as String;
    final eventAttr = eventData.findById(eventId);
    final seatCategory = ['Ticket Bronze', 'Ticket Gold'];
    final nberTicket = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

    price(String prix) {
      ticketCatValue == 'Ticket Bronze'
          ? prix = numbersTicket + " * " + eventAttr.regularPrice.toString()
          : prix = numbersTicket + " * " + eventAttr.premiumPrice.toString();
      return prix;
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(eventAttr.title,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 18)),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: kPrimaryColor, width: 2),
                          color: kPrimaryColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        eventAttr.categoryName,
                        style: GoogleFonts.poppins(
                            color: kPrimaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Divider(color: kPrimaryColor, height: 30),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Résumé",
                        style: GoogleFonts.poppins(
                            color: kPrimaryTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      EventInfoWidget2(),
                      Divider(color: kPrimaryColor, height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Catégorie de ticket",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 4),
                                  height: 35,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: kPrimaryColor,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                        value: ticketCatValue,
                                        iconSize: 25,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down,
                                          color: kPrimaryColor,
                                        ),
                                        isExpanded: true,
                                        items: seatCategory
                                            .map(buildCategoryMenu)
                                            .toList(),
                                        onChanged: (String? newValue) =>
                                            setState(() =>
                                                ticketCatValue = newValue!)),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nombre de ticket",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 4),
                                  height: 35,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: kPrimaryColor,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                        value: numbersTicket,
                                        iconSize: 25,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down,
                                          color: kPrimaryColor,
                                        ),
                                        isExpanded: true,
                                        items: nberTicket
                                            .map(buildNberTicketMenu)
                                            .toList(),
                                        onChanged: (String? newValue2) =>
                                            setState(() =>
                                                numbersTicket = newValue2!)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(color: kPrimaryColor, height: 50),
                      Column(
                        children: [
                          Text(
                            "Prix du Tickets",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: kPrimaryColor),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tickets ($numbersTicket)",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: kPrimaryColor),
                              ),
                              // ignore: unrelated_type_equality_checks
                              Text(
                                price("Prix"),
                                style: GoogleFonts.poppins(
                                    color: kPrimaryTextColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Frais d'opération",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: kPrimaryColor),
                              ),
                              // ignore: unrelated_type_equality_checks
                              Text(
                                "250",
                                style: GoogleFonts.poppins(
                                    color: kPrimaryTextColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Montant total",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: kPrimaryColor,
                                ),
                              ),
                              // ignore: unrelated_type_equality_checks
                              Text(
                                "10000",
                                style: GoogleFonts.poppins(
                                    color: kPrimaryTextColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            tBillingDetailText,
                            style: GoogleFonts.poppins(
                                color: kPrimaryTextColor,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          checkoutSection(context)
        ],
      ),
    );
  }
}
