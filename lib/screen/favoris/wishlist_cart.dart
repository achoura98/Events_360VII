import 'package:event_360/models/favo_attrib.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../provider/favs_provider.dart';
import '../../services/global_method.dart';
import '../constant/colors.dart';
import '../event/event_detail.dart';

class WishlistCard extends StatefulWidget {
  const WishlistCard({this.width = double.infinity, required this.eventId});
  final double width;
  final String eventId;

  @override
  State<WishlistCard> createState() => _WishlistCardState();
}

class _WishlistCardState extends State<WishlistCard> {
  @override
  Widget build(BuildContext context) {
    final favsAttri = Provider.of<FavsAtr>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Stack(
        children: [
          Container(
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
                InkWell(
                  onTap: (() => Navigator.pushNamed(
                      context, EventDetail.routeName,
                      arguments: favsAttri.id)),
                  child: Container(
                    height: 138,
                    width: 138,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      child: Image.asset(
                        favsAttri.date,
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
                          favsAttri.location + ',\n ' + favsAttri.image,
                          style: GoogleFonts.poppins(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                          ),
                          maxLines: 2,
                        ),
                        Text(
                          favsAttri.title,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 14.0),
                        ),
                        Text(
                          favsAttri.day,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 14.0),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.share,
                            color: kPrimaryColor,
                            size: 25,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          positionedRemove(widget.eventId)
        ],
      ),
    );
  }

  Widget positionedRemove(String eventId) {
    final favsProvider = Provider.of<FavsProvider>(context);
    GlobalMethods globalMethods = GlobalMethods();

    return Positioned(
        top: 0,
        right: 0,
        child: Container(
          height: 30,
          width: 30,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            padding: EdgeInsets.all(0.0),
            color: kPrimaryColor,
            onPressed: () => {
              globalMethods.showDialogg(
                  'Supprimer ce favoris!',
                  'Ce Favori sera supprimer de la liste',
                  () => favsProvider.removeItem(eventId),
                  context)
            },
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ));
  }
}
