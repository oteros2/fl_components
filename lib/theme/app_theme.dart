 import 'package:flutter/material.dart';

class AppTheme {
static const Color primary = Color.fromARGB(255, 56, 174, 45);
static final ThemeData lightTheme = ThemeData.light().copyWith(
  //color primario 
        primaryColor: primary,
        //AppBar Theme
        appBarTheme: const AppBarTheme(
          color: primary,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 30,),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        //ListTile theme
        listTileTheme: const ListTileThemeData(
          iconColor: primary,
        ), 
);
 
 }
