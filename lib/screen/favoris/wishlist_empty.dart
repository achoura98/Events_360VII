// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:event_360/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class WishlistEmpty extends StatelessWidget {
  const WishlistEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Liste de souhait",
          style: TextStyle(
              color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            LineAwesomeIcons.angle_left,
            color: kPrimaryColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Vous n'avez aucun évènement avec la mention j'aime",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                      "Mettez la mention J'aime à un évènement et retrouvez-le plus tard, recevez des notifications avant votre épuisement et aidez-nous à ameliorer les propositions pour vous",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
