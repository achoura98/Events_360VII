import 'package:event_360/constants.dart';
import 'package:event_360/size_config.dart';
import 'package:flutter/material.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      // ignore: deprecated_member_use
      child: FlatButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.white,
        onPressed: press,
        child: Icon(
          iconData,
          color: kPrimaryColor,
          size: 25,
        ),
      ),
    );
  }
}
