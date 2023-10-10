import 'package:flutter/material.dart';

class CallRingingScreen extends StatefulWidget {
  CallRingingScreen({Key? key});

  @override
  State<CallRingingScreen> createState() => _CallRingingScreenState();
}

class _CallRingingScreenState extends State<CallRingingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset("assets/images/singup_pattern.png"),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: Container(
              height: 50,
              width: 50,
              child: Image.asset("assets/images/icon_back.png"),
            ),
          ),
          Positioned(
            top: 190,
            left: 80,
            child: Container(
              child: Image.asset(
                "assets/images/call/caller_profile.png",
                width: 200,
                height: 200,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 230),
            child: Positioned(
              top: 400,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10), // Add margin here
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Courtney Henry",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text("Ringing ... "),
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/call/speaker_icon.png",
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/images/call/close_icon.png",
                            width: 100,
                            height: 100,
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
