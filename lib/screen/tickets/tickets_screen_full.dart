import 'package:event_360/constants.dart';
import 'package:flutter/material.dart';
import 'package:ticket_material/ticket_material.dart';

class TicketScreenFull extends StatelessWidget {
  const TicketScreenFull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: TicketMaterial(
                height: 150,
                leftChild: _buildLeft(),
                rightChild: _buildRight(),
                colorBackground: Colors.white)),
      ],
    );
  }

  Center _buildRight() {
    return Center(
      child: RotatedBox(
        quarterTurns: -1,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/ramadanE.png"),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }

  Center _buildLeft() {
    return Center(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dec",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "01",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          ),
          Container(
            height: double.infinity,
            width: 3,
            decoration: BoxDecoration(color: kPrimaryColor),
          ),
          SizedBox(width: 7),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Joyeux Ramadan",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Jeu à 08:00 GMT",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Afficher billet(s)",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
