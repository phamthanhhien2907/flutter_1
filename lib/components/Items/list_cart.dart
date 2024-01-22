import 'package:flutter/material.dart';
import 'package:untitled2/components/Cards/card_11.dart';
import 'package:untitled2/components/Cards/card_2.dart';
import 'package:untitled2/components/Cart/carts.dart';
import 'package:untitled2/components/Items/item_4.dart';

class list_cart extends StatefulWidget {
  const list_cart({super.key});

  @override
  State<list_cart> createState() => _list_cartState();
}
class _list_cartState extends State<list_cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: ListView(
        children: [
          carts(),
        ],
        
      ),
    ));
  }
}


