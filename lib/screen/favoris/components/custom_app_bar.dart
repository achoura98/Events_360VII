import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '../../constant/colors.dart';
import '../../constant/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kBackgroungColors,
      floating: true,
      snap: true,
      title: Text("Favoris", style: headingStyle2),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: IconButton(
                  onPressed: () {},
                  splashRadius: 20,
                  icon: Badge(
                      badgeColor: Colors.white,
                      badgeContent: Text(
                        "0",
                        style: TextStyle(color: kPrimaryColor),
                      ),
                      animationDuration: Duration(milliseconds: 300),
                      child: Icon(
                        Icons.notifications,
                        size: 30,
                        color: Colors.grey,
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
