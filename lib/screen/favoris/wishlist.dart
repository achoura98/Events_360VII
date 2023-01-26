import 'package:badges/badges.dart';
import 'package:event_360/constants.dart';
import 'package:event_360/models/event/data.dart';
import 'package:event_360/screen/favoris/wishlist_empty.dart';
import 'package:event_360/screen/favoris/wishlist_cart.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../cart/cart_screen.dart';

class WishlistScreen extends StatelessWidget {
  static String routeName = "/wishlistScreen";
  @override
  Widget build(BuildContext context) {
    List wishlist = [];
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: kPrimaryColor,
            floating: true,
            snap: true,
            title: Text("Favoris",
                style: TextStyle(
                    color: Colors.white,
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
                            badgeColor: Colors.white,
                            badgeContent: Text(
                              "0",
                              style: TextStyle(color: kPrimaryColor),
                            ),
                            animationDuration: Duration(milliseconds: 300),
                            child: Icon(
                              LineAwesomeIcons.bell,
                              size: 30,
                              color: Colors.white,
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
                              style: TextStyle(color: kPrimaryColor),
                            ),
                            animationDuration: Duration(milliseconds: 300),
                            child: Icon(
                              LineAwesomeIcons.shopping_cart,
                              size: 30,
                              color: Colors.white,
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
      body: wishlist.isNotEmpty
          ? WishlistEmpty()
          : ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext ctx, int index) {
                return WishlistCard(event: upcomingHomeEvents[index]);
              },
            ),
    );
  }
}
