import 'package:badges/badges.dart';
import 'package:event_360/screen/constant/constants.dart';
import 'package:event_360/screen/feeds/components/body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../cart/cart_screen.dart';
import '../constant/colors.dart';

class FeedScreen extends StatelessWidget {
  static String routeName = "/feed";

  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: kBackgroungColors,
              title: Text("Tout les évènement", style: headingStyle2),
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
        body: Body(),
      ),
    ));
  }
}
