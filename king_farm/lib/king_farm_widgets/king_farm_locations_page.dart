import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

import '../a2s_widgets/locations_widget.dart';

///Change values in KingFarmLocationsModel to customize LocationsPage
class KingFarmLocationsModel implements LocationWidgetModel{
  double startingLatitude = 39.1175177;
  double startingLongitude = -77.1841829;
  double startingZoom = 15.0;

  List<MarkerOptions> markers = [
    MarkerOptions(
      position: LatLng(39.1175177, -77.1841829),
      infoWindowText: InfoWindowText("asdf", "asdfasdf asdfasdf"),
      icon: BitmapDescriptor.defaultMarker
  )];
}

//Change the code below to customize the page
class KingFarmLocationsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Container container = Container(
      child: LocationsWidget(new KingFarmLocationsModel()),
      color: Theme.of(context).accentColor,);
    return container;
  }
}

