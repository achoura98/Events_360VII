import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          BottomAppBar(
            child: Container(
              width: double.infinity,
              height: 80,
              child: Column(
                children: [
                  Text(
                    "  Titre de l'event",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Date et heure",
                    style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ])
      ],
    );
  }
}
