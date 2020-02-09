import 'package:flutter/material.dart';
import 'package:provider_explained_theme/screens/login_screen.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: LoginScreen(),
    );
  }
}
