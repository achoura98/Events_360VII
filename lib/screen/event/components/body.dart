import 'package:event_360/models/event/event.dart';
import 'package:event_360/screen/choose_tickets/choose_tickets.dart';
import 'package:event_360/screen/event/components/other_event_card.dart';

import 'package:event_360/screen/home/components/new_components/custom_like_icon.dart';
import 'package:event_360/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import '../../../constants.dart';
import '../../../models/event/data.dart';

class Body extends StatelessWidget {
  final EventModel? event;
  const Body({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Image.asset(
                    event!.images,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          LineAwesomeIcons.angle_left,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Row(
                        children: [
                          CustomLikeButton(),
                          IconButton(
                              onPressed: () {
                                Share.share(
                                    "https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
                              },
                              icon: Icon(
                                CupertinoIcons.share,
                                color: Colors.white,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ]),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Détails de l'évènement",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getProportionateScreenWidth(280),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      event!.title,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor),
                    ),
                    Text(
                      event!.about,
                      textAlign: TextAlign.justify,
                      maxLines: 9,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            LineAwesomeIcons.calendar,
                            color: kPrimaryColor,
                            size: 25,
                          ),
                          SizedBox(width: 3),
                          Text(
                            event!.date,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Mulish-ExtraBoldItalic",
                                fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            LineAwesomeIcons.clock_1,
                            color: kPrimaryColor,
                            size: 25,
                          ),
                          SizedBox(width: 3),
                          Text(
                            event!.fromTo,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Mulish-ExtraBoldItalic",
                                fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            LineAwesomeIcons.clock,
                            color: kPrimaryColor,
                            size: 25,
                          ),
                          SizedBox(width: 3),
                          Text(
                            event!.duration + ' Heure',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Mulish-ExtraBoldItalic",
                                fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            LineAwesomeIcons.map_marked,
                            color: kPrimaryColor,
                            size: 25,
                          ),
                          SizedBox(width: 3),
                          Text(
                            event!.location,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Mulish-ExtraBoldItalic",
                                fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            LineAwesomeIcons.tag,
                            color: kPrimaryColor,
                            size: 25,
                          ),
                          SizedBox(width: 3),
                          Text(
                            event!.cost,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Mulish-Black",
                                fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Divider(),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 115,
                    width: 115,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(event!.autorImage),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(event!.auteur,
                      style: TextStyle(
                          fontSize: 22,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "Organisateur",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60.0),
                child: Text(
                  "Plus d'évènement comme\ncelui-ci",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        weekEvents.length,
                        (index) => OtherEventCard(
                              event: weekEvents[index],
                            ))
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                      context, ChooseTicketScreen.routeName,
                      arguments: ChooseTicketsArguments(event: event)),
                  child: Text("Acheter Ticket",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    side: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
