import 'package:flutter/material.dart';
import 'package:food_ninja/presentation/order/track_order/track_order.dart';

import 'map_widget.dart';

class setLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          // Add your map widget here
          // Replace this with your map widget
          MapboxMapScreen() // Replace with your map widge
          ,Positioned(
            bottom: 30,
            left: 10,
            right: 10,
            child:               Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
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
                children:[
                  Row(
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 10),
                        child: Text(
                          "Your Location",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              color: Colors.grey
                          ),
                        ),
                      )
                    ] ,
                  ),
                  Row(
                    children: [

                      Image.asset(
                        "assets/images/place_order/icon_location.png",
                        width: 90,
                        height: 90,
                      ),
                      Text(
                        "4517 Washington Ave. Manchester,\n Kentucky 39495",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),

                    ],
                  ),
                  Container(
                    width: 320,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press (Place My Order)
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TrackOrderScreen(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Set Location',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ] ,
              ),
            )
,
          ),
          Positioned(
            top: 50,
            left: 15,
            right: 15,
            child: Container(
              height: 80.0,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                  topLeft:  Radius.circular(20.0),
                  topRight:  Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding:EdgeInsets.only(left: 20,right: 10),
                    child: IconButton(
                      icon: Icon(Icons.search, color: Color(0xFFDA6317),size: 28,),
                      onPressed: () {
                        // Handle search action.
                      },
                    ),
                  ),
                  Text(
                    "Find Your Location",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFDA6317).withOpacity(0.5)
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
