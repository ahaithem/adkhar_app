import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.green,
  appBarTheme: AppBarTheme(
    color: Colors.green[600],
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.green,
  appBarTheme: AppBarTheme(
    color: Colors.green[900],
  ),
);
