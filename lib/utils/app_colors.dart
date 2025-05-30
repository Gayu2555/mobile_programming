import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFE50914);
  static const Color secondary = Color(0xFF1DB954);
  static const Color background = Color(0xFF000000);
  static const Color surface = Color(0xFF121212);
  static const Color cardBackground = Color(0xFF1E1E1E);
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFB3B3B3);
  static const Color accent = Color(0xFF2196F3);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, Color(0xFFB71C1C)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF000000),
      Color(0xFF1A1A1A),
    ],
  );
}
