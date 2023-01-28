import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../constant/colors.dart';
import '../../constant/size_config.dart';

class ProfilMenuWidget extends StatelessWidget {
  const ProfilMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.endIcon = true,
    required this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final bool endIcon;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Container(
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: kPrimaryColor.withOpacity(0.1)),
        child: Icon(icon, color: kPrimaryColor),
      ),
      title: Text(title,
          style: GoogleFonts.poppins(color: kPrimaryTextColor, fontSize: 20)),
      trailing: endIcon
          ? Container(
              height: getProportionateScreenHeight(30),
              width: getProportionateScreenWidth(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1)),
              child: Icon(LineAwesomeIcons.angle_right, color: Colors.black),
            )
          : null,
    );
  }
}
