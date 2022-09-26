import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      cardColor: const Color.fromARGB(255, 159, 159, 156),
      canvasColor: const Color.fromARGB(255, 115, 139, 211),
      appBarTheme: const AppBarTheme(
          elevation: 0.0,
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
          toolbarTextStyle: TextStyle(color: Colors.white)));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      cardColor: Colors.blueGrey,
      canvasColor: Colors.black,
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
          elevation: 0.0,
          color: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          toolbarTextStyle: TextStyle(color: Colors.white)));
}
