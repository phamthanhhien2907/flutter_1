import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Add_Icon extends StatefulWidget {
  const Add_Icon({super.key});

  @override
  State<Add_Icon> createState() => _Add_IconState();
}

class _Add_IconState extends State<Add_Icon> {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.add_shopping_cart);
  }
}