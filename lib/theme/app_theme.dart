import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 56, 174, 45);
  static const Color textColor = Colors.white;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: primary,
      //AppBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        titleTextStyle: TextStyle(
          color: textColor,
          fontSize: 30,
        ),
        iconTheme: IconThemeData(color: textColor),
      ),
      //ListTile theme
      listTileTheme: const ListTileThemeData(
        iconColor: primary,
      ),
      //TextButtonTheme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),
      //FloatingActionButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
        shape: StadiumBorder(),
        foregroundColor: textColor
      ));
}
