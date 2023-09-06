import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/presentation/signup/signup_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset("assets/images/singup_pattern.png"),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 90, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Find Your \nFavorite Food",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 30),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // White background color
                          borderRadius: BorderRadius.circular(12),
                          // Adjust border radius as needed
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              // Black shadow color
                              spreadRadius: 2,
                              // Adjust spread radius
                              blurRadius: 5,
                              // Adjust blur radius
                              offset: Offset(0, 2), // Adjust offset
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(10), // Adjust padding as needed
                        child: Image.asset(
                          "assets/images/icon_notification.png",
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20), // Add spacing between the rows
                Container(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 240,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFDA6317)
                                .withOpacity(0.5), // Border color with opacity
                          ),
                          borderRadius: BorderRadius.circular(
                              10), // Adjust border radius as needed
                        ),
                        child: Expanded(
                          child: Container(
                            color: Color(0xFFffad52).withOpacity(0.4),
                            // Set opacity to 0.7 (adjust as needed)
                            width: 100,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "What do you want to order?",
                                hintStyle: TextStyle(
                                    color: Color(0xFFDA6317).withOpacity(0.5),
                                    fontSize: 14), // Set hint text color

                                icon: Image.asset(
                                  "assets/images/search_icon.png",
                                  width: 25,
                                  height: 25,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "assets/images/filter_icon.png",
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/promo_frame.png"),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/ice_cream.png",
                              width: 300,
                              height: 200,
                            ),
     
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 190, top: 20),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Special Deal for \nOctober",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.green,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                      color: Colors.green, fontWeight: FontWeight.w800
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
