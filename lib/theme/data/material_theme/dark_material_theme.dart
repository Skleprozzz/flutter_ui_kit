import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_kit/theme/data/app_theme_data.dart';

ThemeData get darkTheme {
  final colorScheme = AppColorScheme.dark();
  final typography = AppTypography.regular();
  final backgroundColor = AppColorScheme.dark().background.background;

  return ThemeData(
    brightness: Brightness.dark,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      titleTextStyle:
          typography.headline4Bold.copyWith(color: colorScheme.neutral.primary),
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: backgroundColor,
        systemNavigationBarColor: backgroundColor,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      backgroundColor: backgroundColor,
      centerTitle: true,
      foregroundColor: backgroundColor,
    ),
  );
}
