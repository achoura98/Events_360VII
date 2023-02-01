import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';

DropdownMenuItem<String> buildCategoryMenu(String value) => DropdownMenuItem(
      value: value,
      child: Text(
        value,
        style: GoogleFonts.poppins(
            color: kPrimaryColor, fontWeight: FontWeight.w500),
      ),
    );

DropdownMenuItem<String> buildNberTicketMenu(String number) => DropdownMenuItem(
    value: number,
    child: Text(
      number + ' Ticket(s)',
      style: GoogleFonts.poppins(
          color: kPrimaryColor, fontWeight: FontWeight.w500),
    ));
