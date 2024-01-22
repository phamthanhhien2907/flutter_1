import 'package:flutter/material.dart';
import '../../../components/Cards/card.dart';
import '../../../components/Cards/card_5.dart';


class Take_Away extends StatefulWidget {
  const Take_Away({super.key});

  @override
  State<Take_Away> createState() => _Take_AwayState();
}

class _Take_AwayState extends State<Take_Away> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Flex(
      direction: Axis.vertical,
      children: [
        Expanded(
          child: card(),
          flex: 4,
        ),
        Expanded(
          child: card_5(),
          flex: 5,
        )
      ],
    ));
  }
}

class App_Bar {}
