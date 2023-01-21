import 'package:badges/badges.dart';
import 'package:event_360/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../models/cart/event_card.dart';
import '../../models/event/data.dart';
import '../cart/cart_screen.dart';
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
                  category['name'],
                  style: TextStyle(
                      color: _selectedCategory == categories.indexOf(category)
                          ? kPrimaryColor
                          : Colors.black,
                      fontWeight: FontWeight.bold),
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
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Acceuil",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25)),
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
                          badgeContent: Text(
                            "0",
                            style: TextStyle(color: Colors.white),
                          ),
                          animationDuration: Duration(milliseconds: 300),
                          child: Icon(
                            LineAwesomeIcons.bell,
                            size: 30,
                            color: kPrimaryColor,
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
                          badgeContent: Text(
                            "0",
                            style: TextStyle(color: Colors.white),
                          ),
                          animationDuration: Duration(milliseconds: 300),
                          child: Icon(
                            LineAwesomeIcons.shopping_cart,
                            size: 30,
                            color: kPrimaryColor,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
                            style: TextStyle(
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
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(weekEvents.length,
                            (index) => EventCard(event: weekEvents[index]))
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  EventHeaderWidget(
                    text: "Évènement populaire",
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(weekEvents.length,
                            (index) => EventCard(event: popularEvents[index]))
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  EventHeaderWidget(
                    text: "Évènement à venir",
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                            weekEvents.length,
                            (index) =>
                                EventCard(event: upcomingHomeEvents[index]))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
