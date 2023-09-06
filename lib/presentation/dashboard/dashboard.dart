import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/presentation/signup/reset_password.dart';
import 'package:food_ninja/presentation/signup/upload_photo_profile.dart';

import '../cart/cart_screen.dart';
import '../chat/chat_screen.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)

          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 1, blurRadius: 120),
          ],
        ),
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: _selectedIndex == 0 ? Container(
                    margin: EdgeInsets.only(left: 10,top: 10),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 0,), // Adjust padding
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: _selectedIndex == 0
                            ? [
                          Color(0xFFAFFFCD),
                          Color(0xFFAFFFCD), // Lighter shade of #53E88B
                        ]
                            : [
                          Colors.transparent,
                          Colors.transparent,
                        ],
                        stops: [0.0, 1.0], // For 100% opacity
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/home_icon.png",
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(width: 10,),
                          Expanded(child: Text("Home", style: TextStyle(fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ): Image.asset(
          "assets/images/home_no_active.png",
          width: 25,
          height: 25,
        ),
        label: '',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 1 ? Container(
                    margin: EdgeInsets.only(left: 10,top: 10),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 0), // Adjust padding
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: _selectedIndex == 1
                            ? [
                          Color(0xFFAFFFCD),
                          Color(0xFFAFFFCD), // Lighter shade of #53E88B
                        ]
                            : [
                          Colors.transparent,
                          Colors.transparent,
                        ],
                        stops: [0.0, 1.0], // For 100% opacity
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(                      padding: EdgeInsets.only(left: 10),


                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/profile_icon_no_active.png",
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(width: 10,),
                          Expanded(child: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold),))

                        ],
                      ),
                    ),
                  ) :
                  Image.asset(
                    "assets/images/profile_no_active.png",
                    width: 25,
                    height: 25,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon:  _selectedIndex == 2 ? Container(
                    margin: EdgeInsets.only(left: 10,top: 10),

                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 0), // Adjust padding
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: _selectedIndex == 2
                            ? [
                          Color(0xFFAFFFCD),
                          Color(0xFFAFFFCD), // Lighter shade of #53E88B
                        ]
                            : [
                          Colors.transparent,
                          Colors.transparent,
                        ],
                        stops: [0.0, 1.0], // For 100% opacity
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10),

                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/cart_icon_no_active.png",
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(width: 10,),
                          Expanded(child: Text("Cart", style: TextStyle(fontWeight: FontWeight.bold),))
                        ],
                      ),
                    )
                  ) :
                  Image.asset(
                    "assets/images/cart_icon_no_active.png",
                    width: 25,
                    height: 25,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon:  _selectedIndex == 3 ? Container(
                    margin: EdgeInsets.only(left: 10,top: 10,right: 10),

                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 0), // Adjust padding
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: _selectedIndex == 3
                            ? [
                          Color(0xFFAFFFCD),
                          Color(0xFFAFFFCD), // Lighter shade of #53E88B
                        ]
                            : [
                          Colors.transparent,
                          Colors.transparent,
                        ],
                        stops: [0.0, 1.0], // For 100% opacity
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/chat_active.png",
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(width: 10,),
                          Expanded(child: Text("Chat", style: TextStyle(fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ):
                  Image.asset(
                    "assets/images/chat_icon_no_active.png",
                    width: 25,
                    height: 25,
                  ),
                  label: '',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.green[800],
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
              
          ),
        ),
      ),
    );
  }
}
