import 'package:event_360/models/event/event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import '../constant/colors.dart';
import '../event/event_detail.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard(
      {Key? key, this.width = double.infinity, required this.event})
      : super(key: key);
  final double width;
  final EventModel event;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GestureDetector(
        onTap: (() => Navigator.pushNamed(context, EventDetail.routeName,
            arguments: EventDetailArguments(event: event))),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 10.0,
                  spreadRadius: 1.0),
            ],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Container(
                height: 138,
                width: 138,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  child: Image.asset(
                    event.images,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        event.day + ', ' + event.date,
                        style: GoogleFonts.poppins(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                      Text(
                        event.title,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      Text(
                        event.location,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Icon(
                              Icons.share,
                              color: kPrimaryColor,
                              size: 25,
                            ),
                          ),
                          Container(
                            child: LikeButton(
                              isLiked: false,
                              key: GlobalKey<LikeButtonState>(),
                              size: 25,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
