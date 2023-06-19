import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  static String route = "googleMap";

  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;
  Set<Marker> markers = {};
  LatLng myLocation = const LatLng(27.7047139, 85.3295421);
  @override
  void initState() {
    markers.add(
      Marker(
        // add marker on google map
        markerId: MarkerId(myLocation.toString()),
        position: myLocation,
        infoWindow: const InfoWindow(
          title: " Gopal Dai ko chatamari",
          snippet: 'Chatamari',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
      zoomControlsEnabled: true,
      initialCameraPosition: CameraPosition(target: myLocation, zoom: 10),
      markers: markers,
      mapType: MapType.normal,
      onMapCreated: (controller) {
        setState(() {
          mapController = controller;
        });
      },
    ));
  }
}
