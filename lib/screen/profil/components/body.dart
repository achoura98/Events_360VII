import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30.0),
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
                      LineAwesomeIcons.camera,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 50),
            Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      prefixIconColor: kPrimaryColor,
                      label: Text(
                        "Nom Complet",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      prefixIcon: Icon(
                        LineAwesomeIcons.user,
                        color: Colors.black,
                      ),
                      border: outlineInputBorder(),
                      labelStyle: TextStyle(color: kPrimaryColor),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3.0, color: kPrimaryColor))),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      prefixIconColor: Colors.black,
                      floatingLabelStyle: TextStyle(color: kPrimaryColor),
                      label: Text(
                        "E-Mail",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      prefixIcon: Icon(
                        LineAwesomeIcons.envelope,
                        color: Colors.black,
                      ),
                      border: outlineInputBorder(),
                      labelStyle: TextStyle(color: kPrimaryColor),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3.0, color: kPrimaryColor))),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      label: Text(
                        "No Téléphone",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      prefixIcon: Icon(
                        LineAwesomeIcons.phone,
                        color: Colors.black,
                      ),
                      prefixIconColor: kPrimaryColor,
                      border: outlineInputBorder(),
                      labelStyle: TextStyle(color: kPrimaryColor),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3.0, color: kPrimaryColor))),
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Modifier profil",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                        side: BorderSide.none,
                        shape: StadiumBorder()),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
