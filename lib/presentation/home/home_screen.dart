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
      body: SingleChildScrollView(
        child: Stack(
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
                                      fontWeight: FontWeight.w800,
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
                                          color: Colors.green,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nearest Restaurant",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                        Text("View More",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Color(0XFFFF7C32),
                                fontSize: 18)),
                      ],
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start, // Align to the start (left)
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 10),

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  width: 80,
                                  height: 80, // Set the desired image height
                                  child: Image.asset(
                                    "assets/images/products/vegan_flower.png",
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20,right: 20),
                                  child: Text(
                                    "Vegan Resto",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                                  child: Text(
                                    "12 Mins", // Replace with your time data
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  width: 80,
                                  height: 80, // Set the desired image height
                                  child: Image.asset(
                                    "assets/images/products/organic.png",
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20,right: 20),
                                  child: Text(
                                    "Healthy Food",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                                  child: Text(
                                    "8 Mins", // Replace with your time data
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15,),

                          Container(
                            padding: EdgeInsets.only(bottom: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  width: 80,
                                  height: 80, // Set the desired image height
                                  child: Image.asset(
                                    "assets/images/products/organic.png",
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20,right: 20),
                                  child: Text(
                                    "Healthy Food",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                                  child: Text(
                                    "8 Mins", // Replace with your time data
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Menu",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                        Text("View More",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Color(0XFFFF7C32),
                                fontSize: 18)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                    padding: EdgeInsets.only(left: 20, bottom: 10, right: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          width: 80,
                          height: 80, // Set the desired image height
                          child: Image.asset(
                            "assets/images/menu/menu1.png",
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Herbal Pancake",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Warung Herbal", // Replace with your time data
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(width: 10,),
                        Text(
                          '\$7', // Replace with your time data
                          style: TextStyle(
                            color: Color(0XFFFEAD1D),
                            fontWeight: FontWeight.w800,
                            fontSize: 18
                          ),
                        ),
                        SizedBox(width: 15,),

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 30),
                    padding: EdgeInsets.only(left: 20, bottom: 10, right: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          width: 80,
                          height: 80, // Set the desired image height
                          child: Image.asset(
                            "assets/images/menu/menu2.png",
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Herbal Pancake",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Warung Herbal", // Replace with your time data
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(width: 10,),
                        Text(
                          '\$7', // Replace with your time data
                          style: TextStyle(
                            color: Color(0XFFFEAD1D),
                            fontWeight: FontWeight.w800,
                            fontSize: 18
                          ),
                        ),
                        SizedBox(width: 15,),

                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
