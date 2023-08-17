import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/presentation/signup/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset("assets/images/singup_pattern.png"),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 80, bottom: 0),
              child: Image.asset("assets/images/food_logo.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Login To Your Account",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 8,
            right: 8,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.grey[100]!,
                    Colors.grey[100]!,
                  ],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8), // Add radius
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        // Set background color to white
                        filled: true,
                        border: InputBorder.none,
                        // Remove default border
                        labelText: "Email",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8), // Add radius
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        // Set background color to white
                        filled: true,
                        border: InputBorder.none,
                        // Remove default border
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "or Continue with",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Image.asset(
                                "assets/images/facebook.png",
                                // Replace with your image path
                                width: 30, // Adjust the image size as needed
                                height: 30,
                              ),
                            ),
                            Text(
                              "Facebook",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 18),
                      Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Image.asset(
                                "assets/images/google.png",
                                // Replace with your image path
                                width: 30, // Adjust the image size as needed
                                height: 30,
                              ),
                            ),
                            Text(
                              "Google",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Forget your passowrd?",
                    style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Implement login functionality
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                        minimumSize: Size(130,50)
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                   InkWell(
                     onTap: (){
                       Navigator.pushReplacement(
                           context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                     },
                     child: Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 16
                        ),
                      ),
                   ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
