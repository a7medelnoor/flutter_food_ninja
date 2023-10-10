import 'package:flutter/material.dart';

class RateOrderScreen extends StatefulWidget {
  RateOrderScreen({Key? key});

  @override
  State<RateOrderScreen> createState() => _RateOrderScreenState();
}

class _RateOrderScreenState extends State<RateOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset("assets/images/singup_pattern.png"),
          ),

          Positioned(
            top: 140,
            left: 110,
            child: Container(
              child: Image.asset(
                "assets/images/call/rate_order_image.png",
                width: 180,
                height: 180,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 280, left: 8),
            child: Positioned(
              top: 440,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Thank you!\nEnjoy Your Meal", // Added a line break
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,),textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20,),

                      Text("Please rate your last driver"),
                      Image.asset(
                        "assets/images/call/finish_order_rating.png",
                        width: 240,
                        height: 100,
                      ),
                      SizedBox(height: 20,),
                      // Add a rounded green box with a white background and an edit icon
                      Container(
                        width: 300,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.blueGrey,
                                spreadRadius: 0.9

                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/call/edit_icon.png",
                                width: 50, // Adjust the icon width
                                height: 50, // Adjust the icon height
                              ),
                              SizedBox(width: 10), // Add space between icon and text
                              Text("Leave feedback", style: TextStyle(color:Colors.grey, fontSize: 16),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20), // Added some space between the elements
                      // Make a Row for the buttons with flexible widths
                      Row(
                        children: [
                          // Make a white background button with a shadow for the box and text "Skip" in light grey with opacity
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 200,
                              height: 60,
                              child: Expanded(
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
                                    "Submit",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 20),
                            child: Container(
                              width: 100,
                              height: 60,
                              child: Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Handle the submit action here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white.withOpacity(1), // Light grey with opacity
                                    shadowColor: Colors.black.withOpacity(0.2),
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0), // Decreased the corner radius
                                    ),
                                  ),
                                  child: Text(
                                    "Skip",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
