import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CardsExampleScreen extends StatelessWidget {
  const CardsExampleScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Cards'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).maybePop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            // child: GeneratorButtons(),
            child: Column(children: <Widget>[
              RouteCards.small(
                duration: 9,
                imageUrl:
                    'https://i.ytimg.com/vi/kWN22C_2N3Y/maxresdefault.jpg',
                length: 12,
                points: 16,
                rating: 4.6,
                description:
                    'Нижне-Волжская набережная — одна из самых протяжённых улиц Нижнего Новгорода. Имеет два уровня: первый 073456045гщешкпщзркеущрп',
                title: 'Нижневолжская набережная',
              ),
              SizedBox(
                height: 10,
              ),
              RouteCards.small(
                duration: 9,
                imageUrl:
                    'https://i.ytimg.com/vi/kWN22C_2N3Y/maxresdefault.jpg',
                length: 12,
                points: 16,
                rating: 4.6,
                title: 'Нижневолжская набережная',
              ),
              SizedBox(
                height: 10,
              ),
              RouteCards.large(
                duration: 9,
                imageUrl:
                    'https://i.ytimg.com/vi/kWN22C_2N3Y/maxresdefault.jpg',
                length: 12,
                points: 16,
                rating: 4.6,
                description:
                    'Нижне-Волжская набережная — одна из самых протяжённых улиц Нижнего Новгорода. Имеет два уровня: первый 073456045гщешкпщзркеущрп',
                title: 'Нижневолжская набережная',
              ),
              SizedBox(
                height: 10,
              ),
              RouteCards.large(
                duration: 9,
                imageUrl:
                    'https://i.ytimg.com/vi/kWN22C_2N3Y/maxresdefault.jpg',
                length: 12,
                points: 16,
                rating: 4.6,
                title: 'Нижневолжская набережная',
              ),
            ]),

            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}
