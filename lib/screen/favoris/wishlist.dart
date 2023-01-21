import 'package:event_360/constants.dart';
import 'package:event_360/models/event/data.dart';
import 'package:event_360/screen/favoris/wishlist_empty.dart';
import 'package:event_360/screen/favoris/wishlist_cart.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class WishlistScreen extends StatelessWidget {
  static String routeName = "/wishlistScreen";
  @override
  Widget build(BuildContext context) {
    List wishlist = [];
    return wishlist.isNotEmpty
        ? Scaffold(body: WishlistEmpty())
        : Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: AppBar(
              title: const Text(
                "Favoris",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  LineAwesomeIcons.angle_left,
                  color: kPrimaryColor,
                ),
              ),
            ),
            body: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext ctx, int index) {
                return WishlistCard(event: upcomingHomeEvents[index]);
              },
            ),
          );
  }
}