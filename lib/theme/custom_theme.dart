import 'package:flutter/material.dart';

class CustomTheme {
  static final theme = ThemeData(
    primarySwatch: Colors.purple,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.grey[800],
      ),
    ),
  );
}
