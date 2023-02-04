import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

import '../../../models/event/event.dart';
import '../../constant/colors.dart';
import '../../constant/size_config.dart';
import '../event_detail.dart';

class OtherEventCard extends StatelessWidget {
  const OtherEventCard({
    Key? key,
    this.width = 230,
    required this.event,
  }) : super(key: key);

  final EventModel event;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: (() => Navigator.pushNamed(context, EventDetail.routeName,
            arguments: EventDetailArguments(event: event))),
        child: Container(
          width: width,
          //height: getProportionateScreenHeight(285),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(1.0, 1.0),
                  blurRadius: 10.0,
                  spreadRadius: 1.0),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 140,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                  child: Image.asset(
                    event.images,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(event.date,
                        style: GoogleFonts.poppins(
                            color: kPrimaryColor, fontWeight: FontWeight.w600)),
                    Text(
                      event.title,
                      style: GoogleFonts.poppins(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      event.location,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.share,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: getProportionateScreenWidth(3)),
                        LikeButton(
                          isLiked: false,
                          key: GlobalKey<LikeButtonState>(),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
