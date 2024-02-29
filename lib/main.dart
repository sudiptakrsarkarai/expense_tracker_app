import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var KColorScheme = ColorScheme.fromSeed(
  seedColor: Color(0xff91e0ff),
);
var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark, seedColor: Color.fromARGB(255, 5, 99, 125));
void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: kDarkColorScheme,
      cardTheme: const CardTheme().copyWith(
        color: kDarkColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kDarkColorScheme.primaryContainer,
          foregroundColor: kDarkColorScheme.onPrimaryContainer,
        ),
      ),
    ),
    theme: ThemeData().copyWith(
      useMaterial3: true,
      scaffoldBackgroundColor: Color(0xff88c2f2),
      colorScheme: KColorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: KColorScheme.onPrimaryContainer,
        foregroundColor: KColorScheme.primaryContainer,
      ),
      cardTheme: const CardTheme().copyWith(
        color: KColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: KColorScheme.primaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: KColorScheme.onSecondaryContainer,
                fontSize: 15),
          ),
    ),
    themeMode: ThemeMode.system,
    home: Expenses(),
  ));
}
