import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _defaultFont = GoogleFonts.roboto;
// Twitter Color Scheme
const _lightColorScheme = ColorScheme.light(
  primary: Color(0xFF1DA1F2),
  primaryContainer: Color(0xFF1DA1F2),
  secondary: Color(0xFF1DA1F2),
  secondaryContainer: Color(0xFF1DA1F2),
  surface: Color(0xFFFFFFFF),
  background: Color(0xFFFFFFFF),
  error: Color(0xFFE0245E),
  onPrimary: Color(0xFFFFFFFF),
  onSecondary: Color(0xFFFFFFFF),
  onSurface: Color(0xFF000000),
  onBackground: Color(0xFF000000),
  onError: Color(0xFFFFFFFF),
  brightness: Brightness.light,
);

const _darkColorScheme = ColorScheme.dark(
  primary: Color(0xFF1DA1F2),
  primaryContainer: Color(0xFF1DA1F2),
  secondary: Color(0xFF1DA1F2),
  secondaryContainer: Color(0xFF1DA1F2),
  surface: Color(0xFF1E1B18),
  background: Color(0xFF1E1B18),
  error: Color(0xFFE0245E),
  onPrimary: Color(0xFFFFFFFF),
  onSecondary: Color(0xFFFFFFFF),
  onSurface: Color(0xFFFFFFFF),
  onBackground: Color(0xFFFFFFFF),
  onError: Color(0xFFFFFFFF),
  brightness: Brightness.dark,
);

final lightTheme = ThemeData(
  fontFamily: _defaultFont().fontFamily,
  textTheme: GoogleFonts.robotoTextTheme(),
  scaffoldBackgroundColor: _lightColorScheme.background,
  canvasColor: _lightColorScheme.background,
  backgroundColor: _lightColorScheme.background,
  colorScheme: _lightColorScheme,
  appBarTheme: _appBarTheme(_lightColorScheme),
);
final darkTheme = ThemeData(
  fontFamily: _defaultFont().fontFamily,
  textTheme: GoogleFonts.robotoTextTheme(
    ThemeData.dark().textTheme,
  ),
  scaffoldBackgroundColor: _darkColorScheme.background,
  backgroundColor: _darkColorScheme.background,
  canvasColor: _darkColorScheme.background,
  colorScheme: _darkColorScheme,
  appBarTheme: _appBarTheme(_darkColorScheme),
  brightness: Brightness.dark,
);

AppBarTheme _appBarTheme(ColorScheme colors) {
  return AppBarTheme(
    backgroundColor: colors.surface,
    elevation: 0,
    iconTheme: IconThemeData(color: colors.onSurface),
    actionsIconTheme: IconThemeData(color: colors.onSurface),
  );
}
