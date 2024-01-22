import 'package:flutter/material.dart';
import 'package:untitled2/components/Items/list_cart.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class carts extends StatefulWidget {
  const carts({super.key});

  @override
  State<carts> createState() => _cartsState();
}

class _cartsState extends State<carts> {
  bool _isDeleteDialogShown = false;
  List<Map<String, dynamic>> _allusers = [];
  // List<Map<String, dynamic>> _users = [];
  List<dynamic> users = [];
  int _solan = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchApi();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _allusers.length,
        itemBuilder: (context, index) {
          final user = _allusers[index]!;
          final strMeal = user['strMeal']!;
          final strMealThumb = user['strMealThumb']!;
          final strArea = user['strArea']!;
          final strId = user['idMeal']!;

          return Stack(children: [
            Container(
              margin: EdgeInsets.only(
                top: 16,
                left: 20,
              ),
              width: 370,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                        blurRadius: 10,
                        color: Color(0x0C3C506F))
                  ]),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: Text(
                        'Roti Tori',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue,
                          ),
                          child: IconButton(
                              onPressed: () {
                                if (index == 0) {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title:
                                            Text("Bạn có chắc muốn xóa không?"),
                                        content: Text(
                                            "Bạn sẽ không thể khôi phục lại được!"),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              // Xóa index
                                              _allusers.removeAt(index);
                                              setState(() {});
                                              // Hiển thị thông báo
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: Text("Thông báo"),
                                                    content: Text(
                                                        "Đã xóa thành công!"),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Text("OK"),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                              // Set flag
                                              _isDeleteDialogShown = true;
                                            },
                                            child: Text("OK"),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Cancel"),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                } else {
                                  _allusers.removeAt(index);
                                  setState(() {});
                                }
                              },
                              icon: Icon(Icons.delete,
                                  size: 20, color: Colors.white))),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 30,
                          left: 19,
                        ),
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            strMealThumb,
                            fit: BoxFit.cover,
                            alignment: Alignment.topLeft,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60, left: 10),
                            child: Text(
                              strArea,
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w700,
                                height: 0.06,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, left: 10),
                            child: Text(
                              'Smirnoff Vodka, Bombay Gin, ni ...',
                              style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 12,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                                height: 0.10,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 10),
                                child: Text(
                                  'HK\$100.00',
                                  style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 20,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w700,
                                    height: 0.10,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40, top: 10),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Color(0xFFC6D1D7)),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text('-',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18),
                                                textAlign: TextAlign.left),
                                          )),
                                      onTap: () {
                                        // _allusers[index]["quantity"]--;
                                        if (_solan > 1) {
                                          setState(() {
                                            _solan -= 1;
                                          });
                                        }
                                      },
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        '${_solan}',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.blue),
                                          child: Center(
                                            child: Text('+',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                                textAlign: TextAlign.right),
                                          )),
                                      onTap: () {
                                        // _allusers[index]["quantity"]++;
                                        if (_solan < 30) {
                                          setState(() {
                                            _solan += 1;
                                          });
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ]);
        });
  }

  void fetchApi() async {
    final url = 'https://www.themealdb.com/api/json/v1/1/search.php?f=b';
    Map<String, String> headers = {
      "Access-Control-Allow-Origin": "*",
      // "Access-Control-Allow-Credentials": true,
      "Access-Control-Allow-Headers":
          "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
    };
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final jsonData = json["meals"];
    // for (var i = 0; i < json["meals"].length; i++) {
    //   _users.add({
    //     // "id": jsonData[i]["_id"],
    //     "strMeal": json[i]["strMeal"],
    //     // "averageScore": jsonData[i]["averageScore"],
    //   });
    // }

    for (var i = 0; i < jsonData.length; i++) {
      _allusers.add({
        // "id": jsonData[i]["_id"],
        "strMeal": jsonData[i]["strMeal"],
        "strMealThumb": jsonData[i]["strMealThumb"],
        "strArea": jsonData[i]["strArea"],
        "idMeal": jsonData[i]["idMeal"],

        // "averageScore": jsonData[i]["averageScore"],
      });
    }

    setState(() {
      // users = jsonData;
      _allusers;
    });
    print(_allusers);

    print("fetch user completed");
  }
}
