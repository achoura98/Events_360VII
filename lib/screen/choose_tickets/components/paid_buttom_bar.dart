import 'package:event_360/screen/choose_tickets/components/body.dart';
import 'package:flutter/material.dart';

import '../../payment/payement.dart';
import 'custom_elevated_button.dart';

class PaidButtomBar extends StatelessWidget {
  const PaidButtomBar({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final Body widget;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              child: CustomElevatedButton(
                text: "Passer à la caisse".toUpperCase(),
                onClick: () {
                  Navigator.pushNamed(context, PayementScreen.routeName,
                      arguments: PayementArguments(event: widget.event));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
