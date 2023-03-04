import 'package:badges/badges.dart';
import 'package:event_360/screen/constant/constants.dart';
import 'package:event_360/screen/feeds/components/body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constant/colors.dart';

class CategoryFeedScreen extends StatelessWidget {
  static String routeName = "/category_feed";

  const CategoryFeedScreen({Key? key}) : super(key: key);

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
              title: Text('Par catégorie', style: headingStyle2),
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
        body: Body(),
      ),
    ));
  }
}
