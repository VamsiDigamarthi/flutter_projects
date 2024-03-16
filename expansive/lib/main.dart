import 'package:expansive/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // this packages are used to lock the screen orientation

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 98, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness:
      Brightness.dark, // this tell flutter in dark mode using this seed color
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
  //   (value) => {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: const TextTheme().copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorScheme.onSecondaryContainer,
            fontSize: 18,
          ),
        ),
      ),
      themeMode: ThemeMode.system, // default setting
      home: const Expenses(),
    ),
  );
  //   },
  // );
}
