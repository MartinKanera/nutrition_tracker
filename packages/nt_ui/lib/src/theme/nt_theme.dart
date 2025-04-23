import 'package:flutter/material.dart';

class NtTheme {
  const NtTheme();

  ThemeData get themeData {
    return ThemeData(
      useMaterial3: true,
      colorScheme: _colorScheme,
      scaffoldBackgroundColor: _colorScheme.surface,
      textTheme: _textTheme,
      cardTheme: _cardTheme,
      elevatedButtonTheme: _elevatedButtonThemeData,
      inputDecorationTheme: _inputDecorationTheme,
    );
  }

  ColorScheme get _colorScheme {
    return const ColorScheme(
      primary: Color(0xFF26A69A),
      onPrimary: Colors.white,
      secondary: Color(0xFFFF8A65),
      onSecondary: Colors.white,
      tertiary: Color(0xFF9575CD),
      onTertiary: Colors.white,
      surface: Color(0xFFF5F7FA),
      onSurface: Color(0xFF303030),
      error: Color(0xFFE57373),
      onError: Colors.white,
      brightness: Brightness.light,
      surfaceContainerHighest: Color(0xFFEEF2F6),
      outline: Color(0xFFBDBDBD),
      outlineVariant: Color(0xFFE0E0E0),
      shadow: Color(0x29000000),
    );
  }

  TextTheme get _textTheme {
    // Main font style for the app
    // Sans-serif font style (Poppins) for body text and smaller titles
    const sansSerifStyle = TextStyle(
      package: 'nt_ui',
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );

    return TextTheme(
      // Large titles
      displayLarge: sansSerifStyle.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.5,
        height: 1.2,
        color: _colorScheme.onSurface,
      ),
      displayMedium: sansSerifStyle.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.25,
        height: 1.2,
        color: _colorScheme.onSurface,
      ),
      displaySmall: sansSerifStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 1.2,
        color: _colorScheme.onSurface,
      ),

      // Headings
      headlineLarge: sansSerifStyle.copyWith(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        height: 1.3,
        color: _colorScheme.onSurface,
      ),
      headlineMedium: sansSerifStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 1.3,
        color: _colorScheme.onSurface,
      ),
      headlineSmall: sansSerifStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.3,
        color: _colorScheme.onSurface,
      ),

      // Titles
      titleLarge: sansSerifStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 1.4,
        color: _colorScheme.onSurface,
      ),
      titleMedium: sansSerifStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.4,
        letterSpacing: 0.15,
        color: _colorScheme.onSurface,
      ),
      titleSmall: sansSerifStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.4,
        letterSpacing: 0.1,
        color: _colorScheme.onSurface,
      ),

      // Body text
      bodyLarge: sansSerifStyle.copyWith(
        fontSize: 16,
        height: 1.5,
        letterSpacing: 0.15,
        color: _colorScheme.onSurface,
      ),
      bodyMedium: sansSerifStyle.copyWith(
        fontSize: 14,
        height: 1.5,
        letterSpacing: 0.25,
        color: _colorScheme.onSurface,
      ),
      bodySmall: sansSerifStyle.copyWith(
        fontSize: 12,
        height: 1.5,
        letterSpacing: 0.4,
        color: _colorScheme.onSurfaceVariant,
      ),

      // Labels
      labelLarge: sansSerifStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.4,
        letterSpacing: 0.1,
        color: _colorScheme.onSurface,
      ),
      labelMedium: sansSerifStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.4,
        letterSpacing: 0.5,
        color: _colorScheme.onSurface,
      ),
      labelSmall: sansSerifStyle.copyWith(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 1.4,
        letterSpacing: 0.5,
        color: _colorScheme.onSurfaceVariant,
      ),
    );
  }

  CardTheme get _cardTheme {
    return CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: _colorScheme.surface,
    );
  }

  ElevatedButtonThemeData get _elevatedButtonThemeData {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
      filled: true,
      fillColor: _colorScheme.surfaceVariant,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: _colorScheme.outline, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: _colorScheme.primary, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    );
  }
}
