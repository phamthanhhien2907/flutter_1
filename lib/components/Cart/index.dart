import 'package:flutter/material.dart';
import 'package:untitled2/MyApp.dart';
import 'package:untitled2/components/Cards/card.dart';
import 'package:untitled2/components/Cards/card_11.dart';
import 'package:untitled2/components/Cards/card_12.dart';
import 'package:untitled2/components/Cards/card_2.dart';
import 'package:untitled2/components/Cards/card__order.dart';
import 'package:untitled2/components/Cart/carts.dart';
import 'package:untitled2/components/Cart/pay.dart';
import 'package:untitled2/components/Items/list_cart.dart';
import 'package:untitled2/pages/App/Home/Take_Away.dart';

class index_cart extends StatefulWidget {
  const index_cart({super.key});

  @override
  State<index_cart> createState() => _index_cartState();
}

class _index_cartState extends State<index_cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 110, bottom: 100),
          child: carts(),
        ),
        Column(
          children: [
            Stack(children: [
              Column(
                children: [
                  Container(
                    width: 430,
                    height: 90,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 299),
                    child: Stack(children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        width: 430,
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x0C3C506F),
                                blurRadius: 10,
                                offset: Offset(0, -2),
                                spreadRadius: 0,
                              )
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Total: HK\$',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                    children: [
                                      TextSpan(
                                        text: '400.400',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    '8 sản phẩm',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blue),
                                  child: Center(
                                    child: const Text(
                                      'Pay',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => pay()));
                                });
                              },
                            )
                          ],
                        ),
                      )
                    ]),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(50)),
                      child: GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AppBarApp()));
                        },
                      ),
                    ),
                    Text(
                      'Cart',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.add_shopping_cart,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 35, right: 20),
                child: Container(
                  width: 340,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey, // Shadow color
                          blurRadius: 5.0, // Blur radius
                          offset: Offset(-5.0, 5.0), // Shadow offset
                          spreadRadius: 1.0, // Optional spread radius
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Dine in time',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                            textAlign: TextAlign.left),
                        Text('ImMediately >',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                            textAlign: TextAlign.right),
                      ],
                    ),
                  ),
                ),
              )
            ]),
          ],
        ),
      ]),
    );
  }
}
