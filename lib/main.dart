import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen1/responsive_screen.dart';
import 'package:screen1/screen_one.dart';
import 'package:screen1/screen_two.dart';
import 'package:screen1/screen_three.dart';
import 'package:screen1/user_screen.dart';
import 'package:screen1/userdata_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Demo App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lobster",
        primaryColor: Colors.red,
        brightness: Brightness.light,
        cardColor: Colors.yellow,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.purple),
          bodyText1: TextStyle(fontSize: 12, color: Colors.green),
        ),
      ),
      darkTheme: ThemeData(
        fontFamily: "Lobster",
        primaryColor: Colors.black,
        primaryColorDark: Colors.black,
        brightness: Brightness.dark,
        cardColor: Colors.yellow,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          bodyText1: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ),
      themeMode: ThemeMode.light,
      // // initialRoute: PostScreen.path,
      // routes: {
      //   PostScreen.path: (context) => PostScreen(),
      //   ScreenOne.path: (context) => ScreenOne(),
      //   ScreenTwo.path: (context) => ScreenTwo(),
      //   ScreenThree.path: (context) => ScreenThree()
      // },
      // home: ResposiveScreen(),
      home: UserData(),
    ),
  );
}
