import 'package:event_360/models/favo_attrib.dart';
import 'package:flutter/material.dart';

class FavsProvider with ChangeNotifier {
  Map<String, FavsAtr> _favsItems = {};

  Map<String, FavsAtr> get getFavsItems {
    return {..._favsItems};
  }

  void addAndRemoveFromFav(String eventId, String title, String day,
      String date, String location, String image) {
    if (_favsItems.containsKey(eventId)) {
      removeItem(eventId);
    } else {
      _favsItems.putIfAbsent(
          eventId,
          () => FavsAtr(
                id: DateTime.now().toString(),
                date: date,
                day: day,
                image: image,
                location: location,
                title: title,
              ));
    }
    notifyListeners();
  }

  void removeItem(String eventId) {
    _favsItems.remove(eventId);
    notifyListeners();
  }

  void clearFavs() {
    _favsItems.clear();
    notifyListeners();
  }
}
