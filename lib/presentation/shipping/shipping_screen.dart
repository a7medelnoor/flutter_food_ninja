import 'package:flutter/material.dart';


class ShippingScreen extends StatefulWidget {
  const ShippingScreen({super.key});

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {
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
                "Shipping",
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
              child: Column(
                children:[
                  Row(
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 10),
                        child: Text(
                          "Order Location",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              color: Colors.grey
                          ),
                        ),
                      )
                    ] ,
                  ),
                  Row(
                    children: [

                      Image.asset(
                        "assets/images/place_order/icon_location.png",
                        width: 90,
                        height: 90,
                      ),
                      Text(
                        " 8502 Prestpm Rd, Inglewood,\n Maine 98380",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                    ],
                  )
                ] ,
              ),
            ),
          ),

          Positioned(
            top: 340,
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
              child: Column(
                children:[
                  Row(
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 10),
                        child: Text(
                          "Deliver To",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              color: Colors.grey
                          ),
                        ),
                      )
                    ] ,
                  ),
                  Row(
                    children: [

                      Image.asset(
                        "assets/images/place_order/icon_location.png",
                        width: 90,
                        height: 90,
                      ),
                      Text(
                        "4517 Washington Ave. Manchester,\n Kentucky 39495",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),

                    ],
                  )
                ] ,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
