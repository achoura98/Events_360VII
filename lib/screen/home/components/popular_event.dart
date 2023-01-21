import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'event_category.dart';
import 'section_title.dart';

class PopularEvent extends StatelessWidget {
  const PopularEvent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Évènements Populaires",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MonthCard(
                category: "Gastronomie",
                image: "assets/images/gastro.png",
                information: "Special Sushi",
                press: () {},
              ),
              MonthCard(
                category: "Sport",
                image: "assets/images/sport.png",
                information: "Remise en forme",
                press: () {},
              ),
              MonthCard(
                category: "Réligion",
                image: "assets/images/ramadan.png",
                information: "Les lois du Ramadan",
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
