import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/search_screen.dart';
import '../menu/popular_menu_screen.dart';
class PopularRestaurantScreen extends StatefulWidget {
  const PopularRestaurantScreen({super.key});

  @override
  State<PopularRestaurantScreen> createState() => _PopularRestaurantScreenState();
}

class _PopularRestaurantScreenState extends State<PopularRestaurantScreen> {
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
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SearchScreen(), // Replace with your SearchScreen
                                  ));
                                },
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
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Restaurant",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(left: 10, top: 10,bottom: 20),
                      scrollDirection: Axis.horizontal,
                      child: Container(
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

                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(left: 10, top: 0,bottom: 20),
                      scrollDirection: Axis.horizontal,
                      child: Container(
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
                                      "assets/images/products/good_food.png",
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 20),
                                    child: Text(
                                      "Good Food",
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
                                      "assets/images/products/smart_resto.png",
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 20),
                                    child: Text(
                                      "Smart Resto",
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
                  ),
                  Container(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(left: 10, top: 0,bottom: 20),
                      scrollDirection: Axis.horizontal,
                      child: Container(
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
                                        "assets/images/products/vegtable.png",
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,right: 20),
                                    child: Text(
                                      "Vegam Resto",
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
                                      "assets/images/products/rice.png",
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
