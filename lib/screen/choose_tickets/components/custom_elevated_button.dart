import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onClick,
  }) : super(key: key);

  final String text;
  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      child: Text(text,
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        side: BorderSide.none,
      ),
    );
  }
}
