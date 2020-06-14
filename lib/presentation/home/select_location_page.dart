import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:uber_food/containers/user_position_container.dart';

class SelectLocationPage extends StatefulWidget {
  const SelectLocationPage({Key key}) : super(key: key);

  @override
  _SelectLocationPageState createState() => _SelectLocationPageState();
}

class _SelectLocationPageState extends State<SelectLocationPage> {
  final TextEditingController searchController = TextEditingController();
  final Completer<GoogleMapController> _googleController = Completer<GoogleMapController>();
  LatLng _lastMapPosition;

  void _onMapCreated(GoogleMapController controller) {
    _googleController.complete(controller);
  }

  void _cameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
    print('${_lastMapPosition.latitude} ${_lastMapPosition.longitude}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Select a location'),
      ),
      body: Stack(
        children: <Widget>[
          UserLocationContainer(
            builder: (BuildContext context, LocationData location) {
              final LatLng kInitialPosition = LatLng(location.latitude, location.longitude);
              _lastMapPosition = kInitialPosition;
              Marker selectLocationMarker = Marker(
                markerId: MarkerId('selectedLocation'),
                visible: true,
                position: _lastMapPosition,
              );
              return GoogleMap(
                zoomControlsEnabled: true,
                compassEnabled: true,
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: kInitialPosition,
                  zoom: 10,
                ),
                mapType: MapType.normal,
                onCameraMove: _cameraMove,
                markers: <Marker>{selectLocationMarker},
              );
            },
          ),
          Container(
            width: MediaQuery.of(context).size.width - 100,
            child: Card(
              margin: const EdgeInsets.only(left: 15, top: 15),
              elevation: 10,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  focusColor: Colors.black,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black26,
                  ),
                  hintText: 'Search a location',
                  hintStyle: TextStyle(color: Colors.black26),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
                ),
                controller: searchController,
              ),
            ),
          )
        ],
      ),
    );
  }
}
