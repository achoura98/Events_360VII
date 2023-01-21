import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class EventHeaderWidget extends StatelessWidget {
  const EventHeaderWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(40),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Voir tout',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ))
        ],
      ),
    );
  }
}