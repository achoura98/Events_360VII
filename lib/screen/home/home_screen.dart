import 'package:badges/badges.dart';
import 'package:event_360/models/event/event.dart';
import 'package:event_360/provider/events.dart';
import 'package:event_360/screen/constant/constants.dart';
import 'package:event_360/screen/home/components/category_widget.dart';
import 'package:event_360/screen/home/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../models/cart/event_card.dart';
import '../../models/event/data.dart';
import '../constant/colors.dart';
import '../feeds/feeds.dart';
import 'components/event_header.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final eventsProvider = Provider.of<EventModels>(context);
    List<EventModel> weekEventList = eventsProvider.weekEvent;
    List<EventModel> popularEventList = eventsProvider.popularEvent;
    List<EventModel> upcomingEventList = eventsProvider.upcomingEvent;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              //custum app bar
              SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: kBackgroungColors,
                floating: true,
                snap: true,
                title: Text("Bienvenue", style: headingStyle2),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                          child: IconButton(
                            onPressed: () {},
                            splashRadius: 20,
                            icon: Badge(
                                badgeColor: Colors.white,
                                badgeContent: Text(
                                  "0",
                                  style:
                                      GoogleFonts.poppins(color: kPrimaryColor),
                                ),
                                animationDuration: Duration(milliseconds: 300),
                                child: Icon(
                                  Icons.notifications,
                                  size: 30,
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ];
          },
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    // bar de recherche
                    Searchfield(),
                    SizedBox(height: 10),
                    // menu deroulant horizontale categorie widget
                    Container(
                      height: 50,
                      child: ListView.builder(
                          itemCount: categories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext ctx, int index) {
                            return CatergoryWidget(index: index);
                          }),
                    ),
                    SizedBox(height: 10),
                    // menu deroulant des differents evenements...evenement choisi
                    EventHeaderWidget(
                      text: "Choisis pour vous",
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FeedScreen())),
                    ),
                    SizedBox(height: 10),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(
                              weekEventList.length,
                              (index) => ChangeNotifierProvider.value(
                                    value: weekEventList[index],
                                    child: EventCard(
                                      width: 300,
                                    ),
                                  ))
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    // menu deroulant des differents evenements...evenement populaire
                    EventHeaderWidget(
                      text: "Évènement populaire",
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FeedScreen())),
                    ),
                    SizedBox(height: 10),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(popularEventList.length, (index) {
                            return ChangeNotifierProvider.value(
                              value: popularEventList[index],
                              child: EventCard(
                                width: 300,
                              ),
                            );
                          })
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    // menu deroulant des differents evenements...evenement a venir
                    EventHeaderWidget(
                      text: "Évènement à venir",
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FeedScreen())),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(
                              upcomingEventList.length,
                              (index) => ChangeNotifierProvider.value(
                                    value: upcomingEventList[index],
                                    child: EventCard(
                                      width: 300,
                                    ),
                                  ))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
