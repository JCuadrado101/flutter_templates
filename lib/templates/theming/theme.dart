import 'package:flutter/material.dart';

ThemeData buildThemeData1() {
  return ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Colors.yellow,
    primaryColorDark: Colors.green,
    primaryColorLight: Colors.red,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        elevation: MaterialStateProperty.all<double>(10),
        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(10)),
      ),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.blue, toolbarTextStyle: const TextTheme(
        subtitle1: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ).bodyText2, titleTextStyle: const TextTheme(
        subtitle1: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ).headline6,
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
  );
}


ThemeData buildThemeData2() {
  return ThemeData(
    primarySwatch: Colors.green,
    primaryColor: Colors.deepPurpleAccent,
    primaryColorDark: Colors.green,
    primaryColorLight: Colors.red,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
        elevation: MaterialStateProperty.all<double>(10),
        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(25)),
      ),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.amber, toolbarTextStyle: const TextTheme(
      subtitle1: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ).bodyText2, titleTextStyle: const TextTheme(
      subtitle1: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ).headline6,
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: Colors.pink,
      ),
    ),
  );
}


ThemeData buildThemeData3() {
  return ThemeData(
    primarySwatch: Colors.red,
    primaryColor: Colors.white,
    primaryColorDark: Colors.white,
    primaryColorLight: Colors.red,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
        elevation: MaterialStateProperty.all<double>(30),
        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(50)),
      ),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.grey, toolbarTextStyle: const TextTheme(
      subtitle1: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ).bodyText2, titleTextStyle: const TextTheme(
      subtitle1: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ).headline6,
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: Colors.green,
      ),
    ),
  );
}
