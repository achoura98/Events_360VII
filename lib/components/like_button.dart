import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../screen/constant/colors.dart';

class LikeButtonWidget extends StatefulWidget {
  const LikeButtonWidget({Key? key}) : super(key: key);

  @override
  State<LikeButtonWidget> createState() => _LikeButtonWidgetState();
}

class _LikeButtonWidgetState extends State<LikeButtonWidget> {
  bool isLiked = false;
  bool hasBackground = false;
  int likeCount = 0;
  final key = GlobalKey<LikeButtonState>();

  @override
  Widget build(BuildContext context) {
    double size = 30;
    final animationDuration = Duration(milliseconds: 500);

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: hasBackground ? kPrimaryColor : null,
          fixedSize: Size.fromWidth(200),
          padding: EdgeInsets.zero,
          side: BorderSide(color: kPrimaryColor, width: 3),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      onPressed: () async {
        setState(() => hasBackground = !isLiked);

        await Future.delayed(Duration(milliseconds: 100));
        key.currentState?.onTap();
      },
      child: IgnorePointer(
        child: LikeButton(
          key: key,
          padding: EdgeInsets.all(5),
          size: size,
          isLiked: isLiked,
          likeCount: likeCount,
          likeBuilder: (isLiked) {
            final color = isLiked ? Colors.white : Colors.black;

            return Icon(
              Icons.star,
              color: color,
              size: size,
            );
          },
          animationDuration: animationDuration,
          countBuilder: ((
            likeCount,
            isLiked,
            text,
          ) {
            final color = isLiked ? Colors.white : Colors.black;
            return Text(
              "Intéressé(e)",
              style: TextStyle(
                color: color,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            );
          }),
          onTap: (isLiked) async {
            this.isLiked = !isLiked;
            likeCount += this.isLiked ? 1 : -1;

            Future.delayed(animationDuration)
                .then((_) => setState(() => hasBackground = !isLiked));
            //server request

            return !isLiked;
          },
        ),
      ),
    );
  }
}
