import 'package:event_360/constants.dart';
import 'package:event_360/screen/search/components/body.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  static String routeName = "/search";

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Rechercher un évènement",
          style: TextStyle(
              color: kPrimaryColor, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Body(),
    );
  }
}
