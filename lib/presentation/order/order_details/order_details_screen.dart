import 'package:flutter/material.dart';


class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
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
                "Order Details",
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
            left: 10,
            right: 30,
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
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/place_order/order1.png",
                    width: 90,
                    height: 90,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Spacy fresh crab",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Waroenk Kita",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "dollar",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.green
                            ),
                          ),
                          Text(
                            "35",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.green
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle minus icon tap
                        },
                        child: Image.asset("assets/images/place_order/minus_icon.png"),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "1", // Replace with your desired number
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          // Handle plus icon tap
                        },
                        child: Image.asset("assets/images/place_order/plus_icon.png"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 290,
            left: 10,
            right: 30,
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
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/place_order/order2.png",
                    width: 90,
                    height: 90,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Spacy fresh crab",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Waroenk Kita",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "dollar",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.green
                            ),
                          ),
                          Text(
                            "35",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.green
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle minus icon tap
                        },
                        child: Image.asset("assets/images/place_order/minus_icon.png"),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "1", // Replace with your desired number
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          // Handle plus icon tap
                        },
                        child: Image.asset("assets/images/place_order/plus_icon.png"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 10,
            right: 30,
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
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/place_order/order3.png",
                    width: 90,
                    height: 90,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Spacy fresh crab",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Waroenk Kita",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "dollar",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.green
                            ),
                          ),
                          Text(
                            "35",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.green
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle minus icon tap
                        },
                        child: Image.asset("assets/images/place_order/minus_icon.png"),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "1", // Replace with your desired number
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          // Handle plus icon tap
                        },
                        child: Image.asset("assets/images/place_order/plus_icon.png"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Container(
              width: double.infinity, // Set the width to expand to the full available width
              height: 240, // Set your desired height
              decoration:  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/place_order/price_info_box.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub-Total',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '\$120',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Charge',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.w600

                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '\$10',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.w600

                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '\$20',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '\$150',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button press (Place My Order)
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Place My Order',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
  // TODO: when sliding the item left diplay orange bg and remove it from the
        ],
      ),
    );
  }
}
