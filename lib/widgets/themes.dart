import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      cardColor: const Color.fromARGB(255, 159, 159, 156),
      canvasColor: Colors.white,
      primaryColor: Color(0xff6e44ff),
      appBarTheme: const AppBarTheme(
          elevation: 0.0,
          color: Colors.white,
          iconTheme: IconThemeData(color: Color(0xff6e44ff)),
          toolbarTextStyle: TextStyle(color: Colors.black)));
}
