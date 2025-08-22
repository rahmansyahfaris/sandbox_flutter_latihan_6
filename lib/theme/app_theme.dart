import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Color(0xFF394675),
      scaffoldBackgroundColor: Color(0xFFFFFFFF),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Color(0xFF394675), // navy blue cursor
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0, // remove Flutter’s default shadow
        titleSpacing: 0, // gives tighter layout control
        surfaceTintColor: Colors.transparent,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xFFC8C5CB),
            width: 1,
          ), // default border
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xFF394675),
            width: 2,
          ), // focus border uses primary
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF394675), // navy blue
          foregroundColor: Colors.white, // text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // less round corners
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
          textStyle: const TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
      fontFamily: "Inter",
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 24,
          color: Color(0xFF180E25), // the title color from figma
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          height: 1.4,
          color: Color(0xFF827D89), // neutral/dark grey
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          side: BorderSide(color: Color(0xFFC8C5CB), width: 1),
        ),
      ),
    );
  }
}
