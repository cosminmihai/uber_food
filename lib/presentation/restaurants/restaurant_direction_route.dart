import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RestaurantDirectionRoute extends StatefulWidget {
  const RestaurantDirectionRoute({@required LatLng restaurantLocation, @required LatLng userLocation})
      : assert(restaurantLocation != null),
        assert(userLocation != null),
        restaurantLocation = restaurantLocation,
        userLocation = userLocation;

  final LatLng restaurantLocation;
  final LatLng userLocation;

  @override
  _RestaurantDirectionRouteState createState() => _RestaurantDirectionRouteState();
}

class _RestaurantDirectionRouteState extends State<RestaurantDirectionRoute> {
  GoogleMapController _googleMapController;

  Future<void> _centerView() async {
    await _googleMapController.getVisibleRegion();
    final double left = min(widget.userLocation.latitude, widget.restaurantLocation.latitude);
    final double right = max(widget.userLocation.latitude, widget.restaurantLocation.latitude);
    final double top = max(widget.userLocation.longitude, widget.restaurantLocation.longitude);
    final double bottom = min(widget.userLocation.longitude, widget.restaurantLocation.longitude);

    final LatLngBounds bounds = LatLngBounds(
      southwest: LatLng(left, bottom),
      northeast: LatLng(right, top),
    );
    final CameraUpdate cameraUpdate = CameraUpdate.newLatLngBounds(bounds, 70);
    await _googleMapController.animateCamera(cameraUpdate);
    print('The camera vas animated');
  }

  Set<Marker> _createMarkers() {
    final Set<Marker> tmp = <Marker>{}..add(
        Marker(
          markerId: MarkerId('restaurantLocation'),
          position: widget.restaurantLocation,
        ),
      );
    return tmp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Restaurant location:'),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: GoogleMap(
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          initialCameraPosition: CameraPosition(target: widget.userLocation, zoom: 9),
          compassEnabled: true,
          onMapCreated: (GoogleMapController googleMapController) {
            _googleMapController = googleMapController;
            _centerView();
          },
          markers: _createMarkers(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: _centerView,
        child: const Icon(
          Icons.zoom_out_map,
          color: Colors.white,
        ),
      ),
    );
  }
}
