import 'package:flutter/material.dart';

class FavouriteProvider with ChangeNotifier {
  final List<String> _favouriteSongs = [];

  List<String> get favouriteSongs => _favouriteSongs;

  void addFavourite(String song) {
    if (!_favouriteSongs.contains(song)) {
      _favouriteSongs.add(song);
      notifyListeners();
    }
  }

  void removeFavourite(String song) {
    _favouriteSongs.remove(song);
    notifyListeners();
  }
}
