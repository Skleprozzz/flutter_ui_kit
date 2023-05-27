import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_kit/theme/data/app_theme_data.dart';

ThemeData get lightTheme {
  final colorScheme = AppColorScheme.light();
  final typography = AppTypography.regular();
  final backgroundColor = colorScheme.background.background;
  return ThemeData(
    brightness: Brightness.light,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      titleTextStyle:
          typography.headline4Bold.copyWith(color: colorScheme.neutral.primary),
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: backgroundColor,
        systemNavigationBarColor: backgroundColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      backgroundColor: backgroundColor,
      centerTitle: true,
      foregroundColor: backgroundColor,
    ),
  );
}
