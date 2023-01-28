import 'package:badges/badges.dart';
import 'package:event_360/screen/home/components/new_components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../models/cart/event_card.dart';
import '../../models/event/data.dart';
import '../cart/cart_screen.dart';
import '../constant/colors.dart';
import '../feeds/feeds.dart';
import 'components/new_components/event_header.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedCategory = 0;

  List<Widget> buildCategoriesWidgets() {
    List<Widget> categoriesWidgets = [];
    for (Map category in categories) {
      categoriesWidgets.add(GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                border: _selectedCategory == categories.indexOf(category)
                    ? Border.all(color: kPrimaryColor, width: 2)
                    : null,
                color: _selectedCategory == categories.indexOf(category)
                    ? kPrimaryColor.withOpacity(0.2)
                    : Colors.grey.shade200,
                borderRadius: _selectedCategory == categories.indexOf(category)
                    ? BorderRadius.circular(10)
                    : BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Icon(
                  category['icon'],
                  color: _selectedCategory == categories.indexOf(category)
                      ? kPrimaryColor
                      : Colors.black,
                ),
                SizedBox(width: 10),
                Text(
                  category['categoryName'],
                  style: GoogleFonts.poppins(
                    color: _selectedCategory == categories.indexOf(category)
                        ? kPrimaryColor
                        : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
        onTap: (() {
          setState(() {
            _selectedCategory = categories.indexOf(category);
          });
        }),
      ));
    }
    return categoriesWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: kBackgroungColors,
                floating: true,
                snap: true,
                title: Text("Bienvenue",
                    style: GoogleFonts.poppins(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )),
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
                        Center(
                          child: IconButton(
                            splashRadius: 20,
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                CartScreen.routeName,
                              );
                            },
                            icon: Badge(
                                badgeColor: Colors.white,
                                badgeContent: Text(
                                  "0",
                                  style:
                                      GoogleFonts.poppins(color: kPrimaryColor),
                                ),
                                animationDuration: Duration(milliseconds: 300),
                                child: Icon(
                                  Icons.shopping_cart,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              LineAwesomeIcons.map_marker,
                              color: kPrimaryColor,
                              size: 20,
                            ),
                            Text(
                              "Lomé",
                              style: GoogleFonts.poppins(
                                  color: kPrimaryColor,
                                  fontSize: 18,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Searchfield(),
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: buildCategoriesWidgets(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
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
                              weekEvents.length,
                              (index) => EventCard(
                                    event: weekEvents[index],
                                    width: 300,
                                  ))
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
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
                          ...List.generate(
                              weekEvents.length,
                              (index) => EventCard(
                                    event: popularEvents[index],
                                    width: 300,
                                  ))
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
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
                              weekEvents.length,
                              (index) => EventCard(
                                    event: upcomingHomeEvents[index],
                                    width: 300,
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
