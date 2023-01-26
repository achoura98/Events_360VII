import 'package:event_360/constants.dart';
import 'package:event_360/models/event/data.dart';
import 'package:event_360/models/event/event.dart';
import 'package:event_360/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // ignore: non_constant_identifier_names
  List<EventModel> display_list = List.from(weekEvents);

  void updateList(String value) {
    // fonction pour filtrer notre liste
    setState(() {
      display_list = weekEvents
          .where((element) =>
              element.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getProportionateScreenHeight(15.0)),
          TextField(
            onChanged: ((value) => updateList(value)),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white54,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(width: 2.0, color: kSecondaryColor)),
                hintText: "eg: Culture Nordique",
                hintStyle: TextStyle(color: kPrimaryColor),
                suffixIcon: Icon(
                  Icons.search,
                  color: kPrimaryColor,
                ),
                suffixIconColor: kPrimaryColor),
          ),
          SizedBox(height: getProportionateScreenHeight(20.0)),
          Expanded(
              child: display_list.length == 0
                  ? Center(
                      child: Text(
                        "Aucun resultat trouvé",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => ListTile(
                            contentPadding: EdgeInsets.all(6.0),
                            title: Text(
                              display_list[index].title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              display_list[index].location,
                              style: TextStyle(
                                  color: kTextColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            leading: Image.asset(
                              display_list[index].images,
                              width: 70,
                              height: 70,
                            ),
                          )))
        ],
      ),
    );
  }
}
