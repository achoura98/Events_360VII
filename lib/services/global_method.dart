import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class GlobalMethods {
  Future<void> showDialogg(
      String title, String subtitle, Function fct, BuildContext context) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(LineAwesomeIcons.exclamation_triangle)),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(title),
                )
              ],
            ),
            content: Text(subtitle),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Annuler'),
              ),
              TextButton(
                onPressed: () {
                  fct();
                  Navigator.pop(context);
                },
                child: Text('Ok'),
              ),
            ],
          );
        });
  }
}
