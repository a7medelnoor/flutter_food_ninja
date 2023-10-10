  import 'package:flutter/material.dart';
import 'package:food_ninja/presentation/call/call_ringing.dart';
import 'package:food_ninja/presentation/order/finish_order_screen.dart';
import 'package:food_ninja/presentation/order/rate_order_screen.dart';
import 'package:food_ninja/presentation/order/rate_restaurant_screen.dart';

  class VoucherPromoScreen extends StatefulWidget {
    const VoucherPromoScreen({super.key});

    @override
    State<VoucherPromoScreen> createState() => _VoucherPromoScreenState();
  }

  class _VoucherPromoScreenState extends State<VoucherPromoScreen> {
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
              padding: const EdgeInsets.only(top: 110, left: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Voucher Promo",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/call/voucher1.png",
                    width: 320,
                    height: 250,
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),            Positioned(
              top: 270,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/call/voucher2.png",
                    width: 320,
                    height: 250,
                  ),

                ],
              ),
            ),

            Positioned(
              bottom: 10, // Place it at the bottom
              left: 10,
              right: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Container(
                      width:300,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle the skip action here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0), // Decreased the corner radius
                          ),
                        ),
                        child: Text(
                          "Check Out",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
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
