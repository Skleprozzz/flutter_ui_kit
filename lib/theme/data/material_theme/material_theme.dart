import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_kit/theme/data/app_theme_data.dart';

class MaterialTheme {
  MaterialTheme._();

  static ThemeData get darkTheme => _materialTheme(
        colorScheme: AppColorScheme.dark(),
        typography: AppTypography.regular(),
      );

  static ThemeData get lightTheme => _materialTheme(
        colorScheme: AppColorScheme.light(),
        typography: AppTypography.regular(),
      );

  static ThemeData _materialTheme({
    required AppColorScheme colorScheme,
    required AppTypography typography,
  }) {
    final backgroundColor = colorScheme.background.background;

    final buttonTheme = ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );

    return ThemeData(
      brightness: Brightness.dark,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        titleTextStyle: typography.headline4Bold
            .copyWith(color: colorScheme.neutral.primary),
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
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: buttonTheme,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: buttonTheme,
      ),
      textButtonTheme: TextButtonThemeData(
        style: buttonTheme,
      ),
      sliderTheme: SliderThemeData(
        activeTickMarkColor: colorScheme.accent.primary,
        inactiveTickMarkColor: colorScheme.neutral.tertiaryVariant,
        activeTrackColor: colorScheme.accent.primary,
        inactiveTrackColor: colorScheme.neutral.tertiaryVariant,
      ),
    );
  }
}
