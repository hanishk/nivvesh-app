import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Define the light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
      secondary: Colors.blueAccent,
    ),
  );

  // Define the dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF2A2A2A),
    scaffoldBackgroundColor: const Color(0xFF121212),
    // appBarTheme: const AppBarTheme(
    //   backgroundColor: Color(0xFF2A2A2A),
    //   foregroundColor: Colors.white,
    //   elevation: 0,
    //   titleTextStyle: TextStyle(
    //     color: Colors.white,
    //     fontSize: 20,
    //     fontWeight: FontWeight.bold,
    //   ),
    // ),
    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.dark().textTheme,
    ).apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.yellow.shade700),
        borderRadius: BorderRadius.circular(8.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.yellow.shade700),
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.yellow.shade700,
        textStyle: const TextStyle(color: Colors.black),
      ),
    ),
    // colorScheme: ColorScheme.fromSwatch().copyWith(
    //     primary: Colors.black,
    //     secondary: Colors.black,
    //     brightness: Brightness.dark),
  );

  // Method to toggle between light and dark themes
  static ThemeData getTheme(bool isDarkMode) {
    return isDarkMode ? darkTheme : lightTheme;
  }
}
