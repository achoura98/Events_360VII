import 'package:badges/badges.dart';
import 'package:event_360/models/event/data.dart';
import 'package:event_360/screen/favoris/wishlist_empty.dart';
import 'package:event_360/screen/favoris/wishlist_cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../cart/cart_screen.dart';
import '../constant/colors.dart';

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
            backgroundColor: kBackgroungColors,
            floating: true,
            snap: true,
            title: Text("Favoris",
                style: GoogleFonts.poppins(
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
                            badgeColor: Colors.white,
                            badgeContent: Text(
                              "0",
                              style: TextStyle(color: kPrimaryColor),
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
                              style: GoogleFonts.poppins(color: kPrimaryColor),
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
      body: wishlist.isNotEmpty
          ? WishlistEmpty()
          : ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext ctx, int index) {
                return WishlistCard(event: upcomingHomeEvents[index]);
              },
            ),
    );
  }
}
