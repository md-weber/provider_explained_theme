import 'package:flutter/material.dart';
import 'package:provider_explained_theme/screens/login_screen.dart';

void main() {
  // TODO: read from the sharedPreferences
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Use the Provider to select the sharedPreference
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: LoginScreen(),
    );
  }
}
