import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/cart/event_card.dart';
import '../../../../models/event/event.dart';
import '../../../../provider/events.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventProvider = Provider.of<EventModels>(context);
    List<EventModel> allEventList = eventProvider.allEvent;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...List.generate(
                allEventList.length,
                (index) => ChangeNotifierProvider.value(
                      value: allEventList[index],
                      child: EventCard(
                        width: 350,
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}
