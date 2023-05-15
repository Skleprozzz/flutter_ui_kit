import 'package:flutter/material.dart';
import 'package:ui_kit/buttons/app_button.dart';

class ButtonsExampleScreen extends StatelessWidget {
  const ButtonsExampleScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Buttons'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).maybePop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: GeneratorButtons(),
            // child: Column(children: <Widget>[
            //   AppButton(
            //     onPressed: () {},
            //     left: const Icon(Icons.access_alarm_sharp),
            //     center: const Text('Text'),
            //     // right: child[2],
            //     style: const UncoloredAppButtonStyle(),
            //     type: AppButtonType.fixedSmall,
            //     height: 48,
            //     width: 200,
            //   ),
            // ]
            // ),
            //     // const AppButton(
            //     //   center: Text('Text'),
            //     //   // onPressed: () {},
            //     //   style: PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.fixedLarge,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // const AppButton(
            //     //   center: Text('Text'),
            //     //   // onPressed: () {},
            //     //   style: PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.fixedSmall,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // AppButton(
            //     //   center: const Text('Text'),
            //     //   onPressed: () {
            //     //     return;
            //     //   },
            //     //   style: const PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.fixedLarge,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // AppButton(
            //     //   center: const Text('Text'),
            //     //   onPressed: () {
            //     //     return;
            //     //   },
            //     //   style: const PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.fixedSmall,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // AppButton(
            //     //   center: const Text('Text'),
            //     //   onPressed: () {
            //     //     return;
            //     //   },
            //     //   style: const PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.floating,
            //     //   width: 150,
            //     //   height: 36,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // const AppButton(
            //     //   center: Text('Text'), right: Icon(Icons.access_alarm_sharp),
            //     //   // onPressed: () {},
            //     //   style: PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.fixedLarge,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // const AppButton(
            //     //   center: Text('Text'), left: Icon(Icons.access_alarm_sharp),
            //     //   // onPressed: () {},
            //     //   style: PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.fixedSmall,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // AppButton(
            //     //   center: const Text('Text'),
            //     //   left: const Icon(Icons.access_alarm_sharp),
            //     //   onPressed: () {
            //     //     return;
            //     //   },
            //     //   style: const PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.fixedLarge,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // AppButton(
            //     //   center: const Text('Text'),
            //     //   left: const Icon(Icons.access_alarm_sharp),
            //     //   onPressed: () {
            //     //     return;
            //     //   },
            //     //   style: const PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.fixedSmall,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // AppButton(
            //     //   center: const Text('Text'),
            //     //   left: const Icon(Icons.access_alarm_sharp),
            //     //   onPressed: () {
            //     //     return;
            //     //   },
            //     //   style: const PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.floating,
            //     //   width: 150,
            //     //   height: 36,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // const AppButton(
            //     //   center: Text('Text'), right: Icon(Icons.access_alarm_sharp),
            //     //   // onPressed: () {},
            //     //   style: PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.fixedLarge,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // const AppButton(
            //     //   center: Text('Text'), right: Icon(Icons.access_alarm_sharp),
            //     //   // onPressed: () {},
            //     //   style: PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.fixedSmall,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // AppButton(
            //     //   center: const Text('Text'),
            //     //   right: const Icon(Icons.access_alarm_sharp),
            //     //   onPressed: () {
            //     //     return;
            //     //   },
            //     //   style: const PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.fixedLarge,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // AppButton(
            //     //   center: const Text('Text'),
            //     //   right: const Icon(Icons.access_alarm_sharp),
            //     //   onPressed: () {
            //     //     return;
            //     //   },
            //     //   style: const PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.fixedSmall,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //     // AppButton(
            //     //   center: const Text('Text'),
            //     //   right: const Icon(Icons.access_alarm_sharp),
            //     //   onPressed: () {
            //     //     return;
            //     //   },
            //     //   style: const PrimaryAppButtonStyle(),
            //     //   type: AppButtonType.floating,
            //     //   width: 150,
            //     //   height: 36,
            //     // ),
            //     // const SizedBox(
            //     //   height: 4,
            //     // ),
            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}

class GeneratorButtons extends StatelessWidget {
  GeneratorButtons({super.key});

  final callbacks = [
    () {
      return;
    },
    null
  ];

  final types = [
    AppButtonType.floating,
    AppButtonType.fixedSmall,
    AppButtonType.fixedLarge
  ];

  final styles = [
    const PrimaryAppButtonStyle(),
    const SecondaryAppButtonStyle(),
    const OutlineAppButtonStyle(),
    const UncoloredAppButtonStyle(),
    const WarningAppButtonStyle(),
  ];

  final children = <List<Widget?>>[
    [
      null,
      const Text('Text'),
      null,
    ],
    [
      const Icon(Icons.access_alarm_sharp),
      const Text('Text'),
      null,
    ],
    [
      null,
      const Text('Text'),
      const Icon(Icons.access_alarm_sharp),
    ],
    [
      const Icon(Icons.access_alarm_sharp),
      const Text('Text'),
      const Icon(Icons.access_alarm_sharp)
    ],
  ];

  @override
  Widget build(BuildContext context) {
    final buttons = <Widget>[];

    for (final callback in callbacks) {
      for (final child in children) {
        for (final type in types) {
          buttons.addAll([
            AppButton.primary(
              onPressed: callback,
              left: child[0],
              center: child[1]!,
              right: child[2],
              type: type,
              height: 48,
              width: 200,
            ),
            const SizedBox(
              height: 10,
            ),
            AppButton.secondary(
              onPressed: callback,
              left: child[0],
              center: child[1]!,
              right: child[2],
              type: type,
              height: 48,
              width: 200,
            ),
            const SizedBox(
              height: 10,
            ),
            AppButton.outline(
              onPressed: callback,
              left: child[0],
              center: child[1]!,
              right: child[2],
              type: type,
              height: 48,
              width: 200,
            ),
            const SizedBox(
              height: 10,
            ),
            AppButton.uncolored(
              onPressed: callback,
              left: child[0],
              center: child[1]!,
              right: child[2],
              type: type,
              height: 48,
              width: 200,
            ),
            const SizedBox(
              height: 10,
            ),
            AppButton.warning(
              onPressed: callback,
              left: child[0],
              center: child[1]!,
              right: child[2],
              type: type,
              height: 48,
              width: 200,
            ),
            const SizedBox(
              height: 10,
            ),
          ]);
        }
      }
    }
    return Column(
      children: buttons,
    );
  }
}
