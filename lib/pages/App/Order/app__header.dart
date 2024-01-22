import 'package:flutter/material.dart';
import 'package:untitled2/pages/App/Order/order.dart';

class app__header extends StatefulWidget {
  const app__header({super.key});

  @override
  State<app__header> createState() => _app__headerState();
}

class _app__headerState extends State<app__header> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 120),
          child: order(),
        ),
        Column(
          children: [
            Container(
              width: 430,
              height: 50,
              color: Color(0xFF4C95FF),
              child: Center(
                child: Text(
                  'Order',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            Stack(children: [
              Container(
                width: 430,
                height: 60,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey, // Shadow color
                    blurRadius: 5.0, // Blur radius
                    offset: Offset(-5.0, 5.0), // Shadow offset
                    spreadRadius: 1.0, // O
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                          onPressed: null,
                          child: Text(
                            'All orders',
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          )),
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      // decoration: BoxDecoration(
                      //   color: Colors.blue,
                      //   borderRadius: BorderRadius.circular(20),
                      // ),
                      child: TextButton(
                          onPressed: null,
                          child: Text(
                            'Current',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          )),
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      // decoration: BoxDecoration(
                      //   color: Colors.blue,
                      //   borderRadius: BorderRadius.circular(20),
                      // ),
                      child: TextButton(
                          onPressed: null,
                          child: Text(
                            'Completed',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          )),
                    ),
                  ],
                ),
              )
            ])
          ],
        ),
      ]),
    );
  }
}
