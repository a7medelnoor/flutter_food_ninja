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
      body: Stack(
        children: [
          Container(
            child: Image.asset("assets/images/singup_pattern.png"),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 10, left: 30, right: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)

          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 1, blurRadius: 120),
          ],
        ),
        child: Container(
          padding: EdgeInsets.only(left: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
              bottomLeft: Radius.circular(25.0),
            ),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: _selectedIndex == 0 ? Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20), // Adjust padding
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/images/home_icon.png",
                      width: 25,
                      height: 25,
                    ),
                  ): Image.asset(
          "assets/images/home_icon.png",
          width: 25,
          height: 25,
        ),
\
        label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 1 ? Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20), // Adjust padding
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
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      "assets/images/profile_icon_no_active.png",
                      width: 25,
                      height: 25,
                    ),
                  ) :
                  Image.asset(
                    "assets/images/profile_icon_no_active.png",
                    width: 25,
                    height: 25,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon:  _selectedIndex == 2 ? Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20), // Adjust padding
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
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      "assets/images/cart_icon_no_active.png",
                      width: 25,
                      height: 25,
                    ),
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
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20), // Adjust padding
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
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      "assets/images/chat_icon_no_active.png",
                      width: 25,
                      height: 25,
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
