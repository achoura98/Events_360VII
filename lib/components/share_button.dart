import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../screen/constant/colors.dart';

class ShareButtonWidget extends StatefulWidget {
  const ShareButtonWidget({Key? key}) : super(key: key);

  @override
  State<ShareButtonWidget> createState() => _ShareButtonWidgetState();
}

class _ShareButtonWidgetState extends State<ShareButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          fixedSize: Size.fromWidth(90),
          padding: EdgeInsets.all(5),
          side: BorderSide(color: kPrimaryColor, width: 3),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      onPressed: () {
        Share.share(
            "https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
      },
      child: Icon(
        Icons.share,
        color: kPrimaryColor,
        size: 30,
      ),
    );
  }
}
