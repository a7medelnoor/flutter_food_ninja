import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                "Payment",
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
            right: 10,
            child: Container(
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
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/place_order/payment_paypal.png",
                      width:100,
                      height: 100,
                    ),
                    SizedBox(width: 40,),
                    Text(
                      "212163528465 ****",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 20,
            right: 10,
            child: Container(
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
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/place_order/payment_visa.png",
                      width:100,
                      height: 100,
                    ),
                    SizedBox(width: 40,),
                    Text(
                      "212163528465 ****",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 430,
            left: 20,
            right: 10,
            child: Container(
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
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/place_order/payment_payoneer.png",
                      width:100,
                      height: 100,
                    ),
                    SizedBox(width: 40,),
                    Text(
                      "212163528465 ****",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
