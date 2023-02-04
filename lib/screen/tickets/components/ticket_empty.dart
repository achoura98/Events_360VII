import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';

class TicketEmpty extends StatelessWidget {
  const TicketEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  backgroundColor: Colors.white,
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
              style: GoogleFonts.poppins(
                  color: kSecondTextColor,
                  fontSize: 20,
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
