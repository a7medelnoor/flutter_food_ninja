import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/presentation/signup/pin_location.dart';
import 'package:food_ninja/presentation/signup/verification_code.dart';

class SignUpProcessNotification extends StatefulWidget {
  const SignUpProcessNotification({super.key});

  @override
  State<SignUpProcessNotification> createState() => _SignUpProcessNotificationState();
}

class _SignUpProcessNotificationState extends State<SignUpProcessNotification> {
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
            alignment: Alignment.topCenter,

            child: Container(
              height: 150,
              width: 150,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 300),
              child: Image.asset("assets/images/sign_up_done.png"),
            ),
          ),

          SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              width: 150,
              margin: EdgeInsets.only(top: 180, bottom: 0, left: 20),
              alignment: Alignment.center,
              child: Text("Congrats!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Color(0xFF53E88B)), ),
            ),
          ),
          Align(
            child: Container(
              margin: EdgeInsets.only(top: 280),
              alignment: Alignment.center,
              child: Text("Your Profile Is Ready To Use!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22), ),
            ),
          ),

          Align( // Align the "Next" button at the bottom
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 80),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => VerificationCodeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(130, 50),
                ),
                child: Text(
                  "Try Order",
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
