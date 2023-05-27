import 'dart:async';

import 'package:example/buttons.dart';
import 'package:example/cards.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/theme/adaptive_theme.dart';
import 'package:ui_kit/theme/app_theme.dart';

void main() {
  runZonedGuarded<void>(() {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const MyApp());
  }, (_, __) {});
}

bool themeIsLight = true;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      builder: (context, theme) => MaterialApp(
        title: 'Ui Kit Demo',
        home: const UiKitMainPage(),
        theme: theme.materialTheme,
      ),
    );
  }
}

class UiKitMainPage extends StatefulWidget {
  const UiKitMainPage({super.key});

  @override
  State<UiKitMainPage> createState() => _UiKitMainPageState();
}

class _UiKitMainPageState extends State<UiKitMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI-кiт'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
            _createListItem(
              context,
              'Buttons',
              Theme(
                data: Theme.of(context),
                child: const ButtonsExampleScreen(),
              ),
            ),
            _createListItem(
              context,
              'Cards',
              Theme(
                data: Theme.of(context),
                child: const CardsExampleScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _createListItem(
  BuildContext context,
  String label,
  Widget examplePage,
) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: TextButton(
      style: TextButton.styleFrom(
        foregroundColor: AppTheme.of(context).colorScheme.background.primary,
        backgroundColor: AppTheme.of(context).colorScheme.accent.primary,
        minimumSize: const Size(30, 40),
      ),
      child: Text(label),
      onPressed: () {
        Navigator.of(context).push<dynamic>(
          MaterialPageRoute<dynamic>(
            builder: (_) => examplePage,
          ),
        );
      },
    ),
  );
}
