import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../constants.dart';

class TicketEmpty extends StatelessWidget {
  const TicketEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Billets",
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: CircleAvatar(
                radius: 85,
                backgroundColor: kPrimaryColor,
                child: CircleAvatar(
                  radius: 83,
                  backgroundColor: kPrimaryLightColor,
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Icon(
                      CupertinoIcons.ticket,
                      size: 80,
                      color: kSecondaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text(
              "Vous n'avez aucun tickets dans votre panier. Trouvez un évènement qui vous convient.",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
              maxLines: 3,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45),
          )
        ],
      ),
    );
  }
}
