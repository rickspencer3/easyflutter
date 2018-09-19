import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class LocationWidgetModel {
  double startingLatitude;
  double startingLongitude;
  double startingZoom;
  List<MarkerOptions> markers;
}

class LocationsWidget extends StatefulWidget {
  final LocationWidgetModel locationWidgetModel;
  LocationsWidget(this.locationWidgetModel);
  
  @override
  State createState() => _LocationsWidgetState();
}

class _LocationsWidgetState extends State<LocationsWidget> {
  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      options: new GoogleMapOptions(
          cameraPosition: new CameraPosition(
              target: new LatLng(widget.locationWidgetModel.startingLatitude,
                  widget.locationWidgetModel.startingLongitude),
              zoom: widget.locationWidgetModel.startingZoom)),
      onMapCreated: _onMapCreated,
    );
  }

  void _onMapCreated(GoogleMapController controller) {
      mapController = controller;

      widget.locationWidgetModel.markers.forEach((marker) => mapController.addMarker(marker));
  }
}
