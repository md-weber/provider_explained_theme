import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _selectedTheme;
  Typography defaultTypography;
  SharedPreferences prefs;

  ThemeData dark = ThemeData.dark().copyWith(
    accentColor: Colors.yellowAccent.shade700,
    buttonColor: Colors.yellow.shade800,
  );

  ThemeData light = ThemeData.light().copyWith(
    primaryColor: Colors.blue.shade900,
    accentColor: Colors.blue.shade500,
    buttonColor: Colors.blue.shade900,
  );

  ThemeProvider(bool darkThemeOn) {
    _selectedTheme = darkThemeOn ? dark : light;
  }

  Future<void> swapTheme() async {
    prefs = await SharedPreferences.getInstance();

    if (_selectedTheme == dark) {
      _selectedTheme = light;
      await prefs.setBool("darkTheme", false);
    } else {
      _selectedTheme = dark;
      await prefs.setBool("darkTheme", true);
    }

    notifyListeners();
  }

  ThemeData getTheme() => _selectedTheme;
}
