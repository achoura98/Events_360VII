import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:event_360/constants.dart';
import 'package:event_360/screen/favoris/wishlist.dart';
import 'package:event_360/screen/home/home_screen.dart';
import 'package:event_360/screen/profil/profil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

// import '../feeds/feeds.dart';
import '../tickets/ticket_screen.dart';

class BubbleNavBar extends StatefulWidget {
  static String routeName = "/nav_bar";

  @override
  _BubbleNavBarState createState() => _BubbleNavBarState();
}

class _BubbleNavBarState extends State<BubbleNavBar> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int currentIndex = 0;

  final screens = [
    HomeScreen(),
    // FeedScreen(),
    WishlistScreen(),
    TicketScreen(),
    ProfilScreen()
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(LineAwesomeIcons.home, size: 25),
      // Icon(Icons.rss_feed_sharp, size: 25),
      Icon(Icons.favorite, size: 25),
      Icon(CupertinoIcons.tickets),
      Icon(Icons.person, size: 25),
    ];
    return SafeArea(
      top: false,
      child: Scaffold(
          backgroundColor: Colors.white,
          body: screens[currentIndex],
          extendBody: true,
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(iconTheme: IconThemeData(color: Colors.white)),
            child: CurvedNavigationBar(
              key: navigationKey,
              color: kPrimaryColor,
              height: 50,
              animationCurve: Curves.easeInOutExpo,
              animationDuration: Duration(milliseconds: 400),
              items: items,
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: kPrimaryColor,
              index: currentIndex,
              onTap: (currentIndex) => setState(
                (() => this.currentIndex = currentIndex),
              ),
            ),
          )),
    );
  }
}
