import 'package:flutter/material.dart';

import '../../location/map_widget.dart';

class TrackOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          // Add your map widget here
          // Replace this with your map widget
          MapboxMapScreen() // Replace with your map widge
          ,
          Positioned(
            bottom: 10,
            right: 0,
            left: 0,
            child: Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/place_order/track_order_pattern.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 30),
                        child: Text(
                          "Track Orders",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: Image.asset(
                            "assets/images/place_order/track_order_profile_pic.png",
                            width: 90,
                            height: 90,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mr Kemplas",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/place_order/map_icon.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "25 minutes on the way",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: 200,
                          height: 60,
                          child: Row(
                            children: [
                              Container(
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 60.0),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.call, // Replace with your desired icon
                                            color: Colors.green,
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            'Call',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset(
                          "assets/images/place_order/message_button.png",
                          width: 120, // Adjust the width as needed
                          height: 100, // Adjust the height as needed
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
