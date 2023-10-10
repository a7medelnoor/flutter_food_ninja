import 'package:flutter/material.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset("assets/images/singup_pattern.png"),
          ),
          Positioned(
            child: Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(top: 50, bottom: 0, left: 20),
              child: Image.asset("assets/images/icon_back.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.only(left: 5, top: 5, bottom: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/chat/anamwap.png",
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ananmwp",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/chat/online.png",
                              width: 10,
                              height: 10,
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "Online",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                  color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10, right: 20),
                      child: Image.asset(
                        "assets/images/chat/call_icon.png",
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Positioned(
            top: 300,
            left: 20,
            right: 200,
            child: Container(
              padding: EdgeInsets.only(left: 12, top: 12, bottom: 12),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                  children: [
                    Text("Just to order", style: TextStyle(fontSize: 16, color: Colors.black),),
                    SizedBox(width: 20),

                  ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Positioned(
            top: 370,
            left: 80,
            right: 20,
            child: Container(
              padding: EdgeInsets.only(left: 12, top: 12, bottom: 12),
              decoration: BoxDecoration(
                color: Colors.green.shade600,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                  children: [
                    Text("Ok for what level of spiciness?", style: TextStyle(fontSize: 16, color: Colors.white),),
                    SizedBox(width: 20),

                  ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Positioned(
            top: 440,
            left: 20,
            right:140,
            child: Container(
              padding: EdgeInsets.only(left: 12, top: 12, bottom: 12),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                  children: [
                    Text("Okay, wait a minute 👍", style: TextStyle(fontSize: 16, color: Colors.black),),
                    SizedBox(width: 20),

                  ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Positioned(
            top: 510,
            left: 80,
            right: 20,
            child: Container(
              padding: EdgeInsets.only(left: 12, top: 12, bottom: 12),
              decoration: BoxDecoration(
                color: Colors.green.shade600,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                  children: [
                    Text("Okay, I'm waiting 👍", style: TextStyle(fontSize: 16, color: Colors.white),),
                    SizedBox(width: 20),

                  ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Positioned(
            bottom: 10, // Place it at the bottom
            left: 10,
            right: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Okay, I'm waiting 👍",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Image.asset("assets/images/chat/send.png", width: 30, height: 30,)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
