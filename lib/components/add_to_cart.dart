import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screen/constant/colors.dart';
import '../models/event/event.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    Key? key,
    required this.event,
  }) : super(key: key);

  final EventModel event;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {}),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [kPrimaryColor, Colors.orange]),
              color: kPrimaryColor),
          child: Center(
            child: Text(
              "Ajouter au panier",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
