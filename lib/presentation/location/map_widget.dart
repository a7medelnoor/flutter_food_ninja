

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapboxMapScreen extends StatelessWidget {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(25.276987, 55.296249);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 13.0,
        ),
      ),
    );
  }
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
}
