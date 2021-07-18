import 'dart:math';

import 'package:flutter/material.dart';

class NotFoundPage extends StatefulWidget {
  @override
  _NotFoundPageState createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
  final rnd = Random();

  late String firstText, secondText, thirdText;

  @override
  void initState() {
    firstText = generateText(4);
    secondText = generateText(0);
    thirdText = generateText(4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(firstText),
              ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.cover,
                child: Text(secondText),
              ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.cover,
                child: Text(thirdText),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String generateText(int number) {
    final rndBool = rnd.nextBool();
    if (rndBool) {
      if (number == 4) return '4';
      if (number == 0) return '0';
    }
    if (number == 4) return 'QUATTRO';
    if (number == 0) return 'ZERO';

    throw 'Numero non conteggiato nel random';
  }
}
