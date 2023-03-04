import 'package:event_360/provider/events.dart';
import 'package:event_360/screen/choose_tickets/choose_tickets.dart';
import 'package:event_360/screen/event/components/event_info_widget.dart';
import 'package:event_360/screen/event/components/other_event_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import '../../../provider/favs_provider.dart';
import '../../constant/colors.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favosProvider = Provider.of<FavsProvider>(context);
    final eventData = Provider.of<EventModels>(context);
    final eventList = eventData.upcomingEvent;
    final eventId = ModalRoute.of(context)!.settings.arguments as String;
    final eventAttr = eventData.findById(eventId);
    print('eventId $eventId');

    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(1.0, 1.0),
                        blurRadius: 10.0,
                        spreadRadius: 1.0),
                  ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    child: Image.asset(
                      eventAttr.images,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Row(
                        children: [
                          InkWell(
                              splashColor: kPrimaryColor,
                              onTap: () {
                                favosProvider.addAndRemoveFromFav(
                                    eventId,
                                    eventAttr.title,
                                    eventAttr.location,
                                    eventAttr.images,
                                    eventAttr.day,
                                    eventAttr.date);
                              },
                              child: Icon(
                                favosProvider.getFavsItems.containsKey(eventId)
                                    ? CupertinoIcons.heart_fill
                                    : CupertinoIcons.heart_fill,
                                color: favosProvider.getFavsItems
                                        .containsKey(eventId)
                                    ? kPrimaryColor
                                    : Colors.grey,
                              )),
                          IconButton(
                            onPressed: () {
                              Share.share(
                                  "https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
                            },
                            icon: Icon(
                              CupertinoIcons.share,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ]),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          eventAttr.title,
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: kPrimaryColor, width: 2),
                              color: kPrimaryColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            eventAttr.categoryName,
                            style: GoogleFonts.poppins(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: EventInfoWidget(),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A propos de l'évènement",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor),
                      ),
                      SizedBox(height: 10),
                      Text(
                        eventAttr.about,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kSecondTextColor),
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
                      backgroundImage: AssetImage(eventAttr.autorImage),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(eventAttr.auteur,
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "Organisateur",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w600),
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
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                          eventList.length,
                          (index) => ChangeNotifierProvider.value(
                                value: eventList[index],
                                child: OtherEventCard(),
                              ))
                    ],
                  ),
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
            BottomAppBar(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(
                        context, ChooseTicketScreen.routeName,
                        arguments: eventAttr.id),
                    child: Text("Acheter Ticket",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      side: BorderSide.none,
                    ),
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
