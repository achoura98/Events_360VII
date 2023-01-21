import 'package:event_360/models/event/event.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../../constants.dart';
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
          margin: EdgeInsets.all(3.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: kPrimaryColor, width: 2)),
          child: Row(
            children: [
              Container(
                height: 138,
                width: 138,
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0)),
                    child: Image.asset(
                      event.images,
                      height: 138,
                      fit: BoxFit.fill,
                    ),
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
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                      Text(
                        event.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      Text(
                        event.location,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
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
