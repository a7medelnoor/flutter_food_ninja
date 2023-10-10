  import 'package:flutter/material.dart';
import 'package:food_ninja/presentation/call/call_ringing.dart';
import 'package:food_ninja/presentation/order/finish_order_screen.dart';
import 'package:food_ninja/presentation/order/rate_order_screen.dart';
import 'package:food_ninja/presentation/order/rate_restaurant_screen.dart';

import '../voucher/vocher_pomo_screen.dart';

  class NotificationScreen extends StatefulWidget {
    const NotificationScreen({super.key});

    @override
    State<NotificationScreen> createState() => _NotificationScreenState();
  }

  class _NotificationScreenState extends State<NotificationScreen> {
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
                margin: EdgeInsets.only(top: 50, bottom: 0, left: 10),
                child: Image.asset("assets/images/icon_back.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Notifications",
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
                padding: EdgeInsets.only( top: 20, bottom: 20, right: 5),
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
                      "assets/images/call/done_icon.png",
                      width: 80,
                      height: 80,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your order has been taken by \nthe driver",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "Recently",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.only( top: 20, bottom: 20, right: 5),
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
                      "assets/images/call/money_icon.png",
                      width: 80,
                      height: 80,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Topup for 100 was successufl",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "10.00 Am",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              top: 480,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.only( top: 20, bottom: 20, right: 5),
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
                      "assets/images/call/order_canclled.png",
                      width: 80,
                      height: 80,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your order has been cancelled",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "21 July 2021",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      );
    }
  }
