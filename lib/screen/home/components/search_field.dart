import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';

class Searchfield extends StatelessWidget {
  const Searchfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: kPrimaryColor),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: kPrimaryColor),
                borderRadius: BorderRadius.circular(10)),
            hintText: "Recherche",
            hintStyle: GoogleFonts.poppins(color: kPrimaryColor),
            prefixIcon: Icon(Icons.search),
            prefixIconColor: kPrimaryColor,
            contentPadding: EdgeInsets.all(15)),
      ),
    );
  }
}
