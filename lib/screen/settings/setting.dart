import 'package:event_360/screen/constant/constants.dart';
import 'package:event_360/screen/constant/size_config.dart';
import 'package:event_360/screen/constant/text_string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../constant/colors.dart';
import 'components/profil_menu.dart';
import 'components/update_profil.dart';

// setting screen
class ProfilScreen extends StatelessWidget {
  static String routeName = "/profil";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroungColors,
        automaticallyImplyLeading: false,
        title: Text(
          "Profil",
          style: headingStyle2,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image(
                            image: AssetImage("assets/profil/tigerprofil.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: getProportionateScreenHeight(35),
                          width: getProportionateScreenWidth(35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: kPrimaryColor),
                          child: Icon(
                            LineAwesomeIcons.alternate_pencil,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(10)),
                  Text(
                    "Tiger Wood",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  Text(
                    "Tiger.wood@icloud.com",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  SizedBox(
                    width: getProportionateScreenWidth(200),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(
                          context, UpdateProfilScreen.routeName),
                      child: Text("Modifer Profil",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryColor),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  Divider(),
                  SizedBox(height: getProportionateScreenHeight(10)),

                  //Menu
                  ProfilMenuWidget(
                    icon: LineAwesomeIcons.bell,
                    onPressed: () {},
                    title: tprofiltitle1,
                    textColor: null,
                  ),
                  ProfilMenuWidget(
                    icon: LineAwesomeIcons.google_logo,
                    onPressed: () {},
                    title: tprofiltitle2,
                    textColor: null,
                  ),
                  ProfilMenuWidget(
                    icon: LineAwesomeIcons.user,
                    onPressed: () {},
                    title: tprofiltitle3,
                    textColor: null,
                  ),
                  ProfilMenuWidget(
                    icon: LineAwesomeIcons.exclamation_circle,
                    onPressed: () {},
                    title: tprofiltitle4,
                    textColor: null,
                  ),
                  ProfilMenuWidget(
                    icon: LineAwesomeIcons.calendar,
                    onPressed: () {},
                    title: tprofiltitle5,
                    textColor: null,
                  ),
                  ProfilMenuWidget(
                    icon: LineAwesomeIcons.cog,
                    onPressed: () {},
                    title: tprofiltitle6,
                    textColor: null,
                  ),
                  Divider(),
                  ProfilMenuWidget(
                      title: tprofiltitle7,
                      textColor: kPrimaryColor,
                      icon: LineAwesomeIcons.moon,
                      endIcon: false,
                      onPressed: () {}),
                  ProfilMenuWidget(
                      title: tprofiltitle8,
                      textColor: kPrimaryColor,
                      icon: LineAwesomeIcons.alternate_sign_out,
                      endIcon: false,
                      onPressed: () {}),

                  SizedBox(
                    height: getProportionateScreenHeight(60),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
