import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_kit/theme/app_theme.dart';
import 'package:ui_kit/theme/data/app_theme_data.dart';
import 'package:ui_kit/ui_kit.dart';

class AdaptiveTheme extends StatefulWidget {
  const AdaptiveTheme({
    required this.child,
    Key? key,
  }) : super(key: key);
  final Widget child;

  @override
  State<AdaptiveTheme> createState() => _AdaptiveThemeState();

  static AppThemeColorMode colorModeOf(BuildContext context) {
    final platformBrightness =
        View.of(context).platformDispatcher.platformBrightness;
    final useDarkTheme = platformBrightness == ui.Brightness.dark;
    if (useDarkTheme) {
      return AppThemeColorMode.dark;
    }

    return AppThemeColorMode.light;
  }
}

class _AdaptiveThemeState extends State<AdaptiveTheme> {
  var theme = AppThemeData.light();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    View.of(context).platformDispatcher.onPlatformBrightnessChanged = () {
      final colorMode = AdaptiveTheme.colorModeOf(context);
      switch (colorMode) {
        case AppThemeColorMode.dark:
          theme = AppThemeData.dark();
          break;
        case AppThemeColorMode.light:
          theme = AppThemeData.light();
          break;
      }
    };
  }

  @override
  void initState() {
    super.initState();

    unawaited(
      SystemChrome.setPreferredOrientations(
        <DeviceOrientation>[
          DeviceOrientation.portraitUp,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      theme: theme,
      child: widget.child,
    );
  }
}

enum AppThemeColorMode {
  light,
  dark,
}
