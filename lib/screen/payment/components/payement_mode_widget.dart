import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class PayementModeWidget extends StatelessWidget {
  const PayementModeWidget({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: kPrimaryColor),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 60,
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Icon(
                    CupertinoIcons.arrowtriangle_right_fill,
                    color: Colors.white,
                    size: 25,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
