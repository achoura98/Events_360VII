import 'package:event_360/screen/constant/text_string.dart';
import 'package:event_360/screen/nav%20bar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colors.dart';

// page de favoris vide
class WishlistEmpty extends StatelessWidget {
  const WishlistEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              width: 200,
              height: 200,
              child: Image.asset(
                "assets/image/empty_icon/empty-box.png",
                fit: BoxFit.fill,
              )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              twishlisttext1,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: kPrimaryTextColor,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: (() =>
                Navigator.pushNamed(context, NavBarWidget.routeName)),
            child: Text("Trouver mon évènement".toUpperCase(),
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              side: BorderSide.none,
            ),
          ),
        ],
      ),
    );
  }
}
