import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../../../constant/colors.dart';

class CustomLikeButton extends StatefulWidget {
  const CustomLikeButton({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomLikeButton> createState() => _CustomLikeButtonState();
}

class _CustomLikeButtonState extends State<CustomLikeButton> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return LikeButton(
      likeBuilder: (isLiked) {
        return Icon(
          CupertinoIcons.heart_fill,
          color: isLiked ? kPrimaryColor : Colors.grey,
        );
      },
    );
  }
}
