import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeService {
  const ThemeService._();
  static const instance = ThemeService._();
  ThemeData get defaultTheme => ThemeData(
        primaryColor: const Color(0xFF83524D),
        fontFamily: GoogleFonts.notoSans().fontFamily,
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF83524D),
          onSurface: Colors.black,
          surface: Color(0xFFF2F2F7),
        ),
        textTheme: const TextTheme(
          // Xsmall
          labelSmall: TextStyle(
            color: Colors.black,
            fontSize: 10,
            fontWeight: FontWeight.w400,
            height: 0.12,
          ),
          // Small
          bodySmall: TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            // height: 0.09,
          ),
          // Base
          bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
          // Large
          bodyLarge: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            height: 0.08,
          ),
          // Headline 1
          displayLarge: TextStyle(
            color: Colors.black,
            fontSize: 76,
            fontWeight: FontWeight.w400,
            height: 0.02,
          ),
          // Headline 2
          displayMedium: TextStyle(
            color: Colors.black,
            fontSize: 61,
            fontWeight: FontWeight.w400,
            height: 0.02,
          ),
          // Headline 3
          displaySmall: TextStyle(
            color: Colors.black,
            fontSize: 49,
            fontWeight: FontWeight.w400,
            height: 0.02,
          ),
          // Headline 4
          headlineMedium: TextStyle(
            color: Colors.black,
            fontSize: 39,
            fontWeight: FontWeight.w900,
            height: 0.03,
          ),
          // Headline 5
          headlineSmall: TextStyle(
            color: Colors.black,
            fontSize: 31,
            fontWeight: FontWeight.w400,
            height: 0.04,
          ),
          // Headline 6
          titleLarge: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
        ),
      );
}
