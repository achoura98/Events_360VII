import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:event_360/screen/favoris/wishlist.dart';
import 'package:event_360/screen/home/home_screen.dart';
import 'package:event_360/screen/profil/profil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// import '../feeds/feeds.dart';
import '../constant/colors.dart';
import '../tickets/ticket_screen.dart';

class NavBarWidget extends StatefulWidget {
  static String routeName = "/nav_bar";

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
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
    return SafeArea(
      top: false,
      child: Scaffold(
          backgroundColor: Colors.white,
          body: screens[currentIndex],
          extendBody: true,
          bottomNavigationBar: Container(
            height: 60,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0)
            ]),
            child: GNav(
              tabActiveBorder: Border.all(width: 3, color: kPrimaryColor),
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(10),
              activeColor: kPrimaryColor,
              duration: Duration(milliseconds: 1000),
              gap: 10,
              key: navigationKey,
              color: Colors.grey,
              onTabChange: (currentIndex) =>
                  setState((() => this.currentIndex = currentIndex)),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Acceuil',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Favoris',
                ),
                GButton(
                  icon: CupertinoIcons.tickets,
                  text: 'Tickets',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Paramètres',
                ),
              ],
            ),
          )),
    );
  }
}
