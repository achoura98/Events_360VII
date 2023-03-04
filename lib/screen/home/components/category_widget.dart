import 'package:event_360/screen/inner_screen/feeds/categorie_feed.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../constant/colors.dart';

// widget categorie
// ignore: must_be_immutable
class CatergoryWidget extends StatelessWidget {
  final int index;

  CatergoryWidget({Key? key, required this.index}) : super(key: key);

  // liste des different categorie d evenement
  List<Map> categories = [
    {
      "categoryName": "Musique",
      "icon": LineAwesomeIcons.music,
    },
    {
      "categoryName": "Mode",
      "icon": LineAwesomeIcons.t_shirt,
    },
    {
      "categoryName": "Science",
      "icon": LineAwesomeIcons.microscope,
    },
    {
      "categoryName": "Sport",
      "icon": LineAwesomeIcons.basketball_ball,
    },
    {
      "categoryName": "Food",
      "icon": LineAwesomeIcons.hamburger,
    },
    {
      "categoryName": "Art",
      "icon": LineAwesomeIcons.palette,
    },
    {
      "categoryName": "Religion",
      "icon": LineAwesomeIcons.pray,
    },
    {
      "categoryName": "Entreprenariat",
      "icon": LineAwesomeIcons.business_time,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(CategoryFeedScreen.routeName,
                arguments: '${categories[index]['categoryName']}');
          },
          child: Container(
            decoration: BoxDecoration(
                color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
            height: 40,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    categories[index]['icon'],
                    color: Colors.white,
                  ),
                  SizedBox(width: 5),
                  Text(
                    categories[index]['categoryName'],
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
