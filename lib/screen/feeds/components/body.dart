import 'package:event_360/models/event/data.dart';
import 'package:flutter/material.dart';

import '../../../models/cart/event_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...List.generate(
                allEvent.length,
                (index) => EventCard(
                      event: allEvent[index],
                      width: 350,
                    ))
          ],
        ),
      ),
    );
  }
}
