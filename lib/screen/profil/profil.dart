import 'package:event_360/constants.dart';
import 'package:event_360/size_config.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'components/profil_menu.dart';
import 'components/update_profil.dart';

class ProfilScreen extends StatelessWidget {
  static String routeName = "/profil";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            LineAwesomeIcons.angle_left,
            color: kPrimaryColor,
          ),
        ),
        title: Text(
          "Profil",
          style: TextStyle(
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
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    "Tiger.wood@icloud.com",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  SizedBox(
                    width: getProportionateScreenWidth(200),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(
                          context, UpdateProfilScreen.routeName),
                      child: Text("Modifer Profil",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      style: ElevatedButton.styleFrom(primary: kPrimaryColor),
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
