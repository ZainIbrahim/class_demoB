import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class counterProvider extends ChangeNotifier {
  int counter = 0;
  void increaseCounter() {
    counter++;
    notifyListeners();
    addSharedpref();
  }

  addSharedpref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt("counter", counter);
  }

  loudSharedPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    counter = pref.getInt("counter") ?? 0;
    notifyListeners();
  }
}
