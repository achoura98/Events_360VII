import 'package:event_360/screen/complete_profil/components/body.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inscription"),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
