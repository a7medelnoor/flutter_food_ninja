import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/presentation/signup/payment_method.dart';

class FillInScreen extends StatefulWidget {
  const FillInScreen({super.key});

  @override
  State<FillInScreen> createState() => _FillInScreenState();
}

class _FillInScreenState extends State<FillInScreen> {
  bool keepMeSignedIn = false; // Initialize checkbox value
  bool EmailMeAboutSpecilPricing = false; // Initialize checkbox value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset("assets/images/singup_pattern.png"),
          ),
          Align(
            alignment: Alignment.topLeft,
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
                "Fill in your bio to get started",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "This data will be displayed in your account profile for security",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Positioned(
            top: 260,
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
                        labelText: "First Name",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your first name';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8), // Add radius
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        // Set background color to white
                        filled: true,
                        border: InputBorder.none,
                        // Remove default border
                        labelText: "Last Name",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your last name';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 10),
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
                        labelText: "Mobile Number",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your mobile number';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align( // Align the "Next" button at the bottom
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 80),
              child: ElevatedButton(
                onPressed: () {
    Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => PaymentMethod()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(130, 50),
                ),
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
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
