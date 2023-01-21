import 'package:event_360/screen/home/components/section_title.dart';
import 'package:event_360/size_config.dart';
import 'package:flutter/material.dart';

class EventType extends StatelessWidget {
  const EventType({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Ce mois-ci",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MonthCard(
                image: "assets/images/Image Banner 2.png",
                category: "Smartphone",
                information: "Nouvelles Technologies",
                press: () {},
              ),
              MonthCard(
                image: "assets/images/Image Banner 3.png",
                category: "Mode",
                information: "Soirée tout Blanc",
                press: () {},
              ),
              MonthCard(
                image: "assets/images/Image Banner 2.png",
                category: "Smartphone",
                information: "Nouvelles Technologies",
                press: () {},
              ),
              MonthCard(
                image: "assets/images/Image Banner 2.png",
                category: "Smartphone",
                information: "Nouvelles Technologies",
                press: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class MonthCard extends StatelessWidget {
  const MonthCard({
    Key? key,
    required this.category,
    required this.image,
    required this.information,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final String information;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenHeight(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenWidth(10)),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$category\n",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: "$information")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
