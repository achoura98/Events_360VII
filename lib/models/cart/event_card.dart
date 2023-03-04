import 'package:event_360/models/event/event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import '../../provider/favs_provider.dart';
import '../../screen/constant/colors.dart';
import '../../screen/event/event_detail.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.width,
  }) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    final eventAttribut = Provider.of<EventModel>(context);
    final favosProvider = Provider.of<FavsProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(1.0, 1.0),
                blurRadius: 10.0,
                spreadRadius: 1.0),
          ],
          borderRadius: BorderRadius.circular(10.0),
        ),
        width: width,
        child: Column(
          children: [
            GestureDetector(
              onTap: (() => Navigator.pushNamed(context, EventDetail.routeName,
                  arguments: eventAttribut.id)),
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Image.asset(
                        eventAttribut.images,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 85,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white.withOpacity(0.8),
                      ),
                      height: 40,
                      // width: 205,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              LineAwesomeIcons.calendar,
                              color: kPrimaryColor,
                            ),
                            Text(
                              eventAttribut.date,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      eventAttribut.title,
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(LineAwesomeIcons.map_marker),
                      Text(
                        eventAttribut.location,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      LikeButton(
                        likeBuilder: (isLiked) {
                          return Icon(
                            CupertinoIcons.heart_fill,
                            color: favosProvider.getFavsItems
                                    .containsKey(eventAttribut.id)
                                ? kPrimaryColor
                                : Colors.grey,
                          );
                        },
                      ),
                      IconButton(
                        onPressed: () {
                          Share.share(
                              "https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
                        },
                        icon: Icon(
                          Icons.share,
                          color: kPrimaryColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
