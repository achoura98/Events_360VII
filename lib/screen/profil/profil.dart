import 'package:event_360/screen/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../constant/colors.dart';
import 'components/profil_menu.dart';
import 'components/update_profil.dart';

class ProfilScreen extends StatelessWidget {
  static String routeName = "/profil";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroungColors,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Profil",
          style: GoogleFonts.poppins(
              color: kPrimaryColor, fontSize: 25, fontWeight: FontWeight.bold),
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
                        fontSize: 30),
                  ),
                  Text(
                    "Tiger.wood@icloud.com",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
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
                    title: 'Centre de notification',
                    textColor: null,
                  ),
                  ProfilMenuWidget(
                    icon: LineAwesomeIcons.google_logo,
                    onPressed: () {},
                    title: 'Compte liés',
                    textColor: null,
                  ),
                  ProfilMenuWidget(
                    icon: LineAwesomeIcons.user,
                    onPressed: () {},
                    title: 'Personne qui suivent',
                    textColor: null,
                  ),
                  ProfilMenuWidget(
                    icon: LineAwesomeIcons.exclamation_circle,
                    onPressed: () {},
                    title: 'Problèmes de billets',
                    textColor: null,
                  ),
                  ProfilMenuWidget(
                    icon: LineAwesomeIcons.calendar,
                    onPressed: () {},
                    title: 'Gérer les évènements',
                    textColor: null,
                  ),
                  ProfilMenuWidget(
                    icon: LineAwesomeIcons.cog,
                    onPressed: () {},
                    title: 'Paramètres',
                    textColor: null,
                  ),
                  Divider(),
                  ProfilMenuWidget(
                      title: "Déconnexion",
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
