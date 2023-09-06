import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/presentation/signup/signup_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                          padding: EdgeInsets.all(10),
                          // Adjust padding as needed
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
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 300,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFDA6317).withOpacity(
                                  0.5), // Border color with opacity
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
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Text(
                          "Type",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFffad52).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "Restaurant",
                              style: TextStyle(
                                color: Color(0xFFffad52),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFffad52).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "Menu",
                              style: TextStyle(
                                color: Color(0xFFffad52),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFffad52).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "1Km",
                              style: TextStyle(
                                color: Color(0xFFffad52),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFffad52).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              ">10 Km",
                              style: TextStyle(
                                color: Color(0xFFffad52),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFffad52).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "<10 Km",
                              style: TextStyle(
                                color: Color(0xFFffad52),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Text(
                          "Food",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFffad52).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "Cake",
                              style: TextStyle(
                                color: Color(0xFFffad52),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFffad52).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "Soup",
                              style: TextStyle(
                                color: Color(0xFFffad52),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFffad52).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "Main Course",
                              style: TextStyle(
                                color: Color(0xFFffad52),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFffad52).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "Appetizer",
                              style: TextStyle(
                                color: Color(0xFFffad52),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),               SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFffad52).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "Dessert",
                              style: TextStyle(
                                color: Color(0xFFffad52),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: GestureDetector(
                      onTap: () {
                        // Handle the search button tap here
                      },
                      child: Material(
                        elevation: 4, // Add elevation for shadow
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.green, // Green background color
                        child: Container(
                          height: 60,
                          width: 300, // Match parent width
                          alignment: Alignment.center,
                          child: Text(
                            "Search",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
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
