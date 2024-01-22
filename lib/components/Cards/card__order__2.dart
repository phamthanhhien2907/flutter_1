import 'package:flutter/material.dart';

class card__order__2 extends StatefulWidget {
  const card__order__2({super.key});

  @override
  State<card__order__2> createState() => _card__order__2State();
}

class _card__order__2State extends State<card__order__2> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 16, left: 16, right: 16),
            width: 363,
            height: 187,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0C3C506E),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10, right: 5),
                                child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.blue[100],
                                        borderRadius: BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      size: 20,
                                      color: Colors.blue,
                                    )),
                              ),
                              Text(
                                'Roti Tori',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w700,
                                  height: 0.07,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5, bottom: 10),
                                  child: Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Preparing',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF4C95FF),
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                    height: 0.08,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 311,
                      height: 1,
                      decoration: BoxDecoration(color: Color(0x7FEBEFF2)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 16, left: 16),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(0xFF4C95FF),
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.network(
                        'https://i.pinimg.com/564x/2d/ce/6d/2dce6d5cd8400bab06605db59160aa5a.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Queueing time: 2020-05-29  06:00PM',
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 13,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Queue Numbe: A002',
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 13,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Seat: 4',
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 13,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 88,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        child: Center(
                          child: Text(
                            'Re-order',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w700,
                              height: 0.10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}
