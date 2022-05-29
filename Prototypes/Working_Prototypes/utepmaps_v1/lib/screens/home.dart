//Flutter Imports
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

//Flutter-Map imports
import 'package:flutter_map/flutter_map.dart';

//Imports I created
import 'package:utepmaps_v1/widgets/drawer.dart';

class Home extends StatelessWidget {
  static const String route = 'Home';

  const Home({Key? key}) : super(key: key);

  final String title = "UTEP MAPS";

  @override
  Widget build(BuildContext context) {
    var markers = <Marker>[
      Marker(
        width: 80.0,
        height: 80.0,
        point:
            LatLng(31.770581, -106.3504163), //TODO - get location in real time
        builder: (ctx) => const Icon(
          Icons.location_pin,
          color: Colors.red,
          size: 20.0,
        ),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(fontFamily: 'Montserrat'),
        ),
      ),
      drawer: buildDrawer(context),
      body: Column(
        children: [
          Flexible(
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(31.76977,
                    -106.50493), //this needs to be the users location since they will be the center point
                zoom: 17.0,
              ),
              layers: [
                TileLayerOptions(
                  urlTemplate:
                      'https://api.mapbox.com/styles/v1/nvelasco/cl3qcenj7002d14plbxkmqjv9/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibnZlbGFzY28iLCJhIjoiY2wzbm91empnMGdtbDNldXYxYWZkeW42aiJ9.rlfOrauv0mzx8ta0QYT7Ig',
                  //urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  // additionalOptions: {
                  //   'accessToken': '', //insert access token here
                  //   'id': 'mapbox.mapbox-streets-v8'
                  // },
                  // For example purposes. It is recommended to use
                  // TileProvider with a caching and retry strategy, like
                  // NetworkTileProvider or CachedNetworkTileProvider
                  tileProvider: const NonCachingNetworkTileProvider(),
                ),
                MarkerLayerOptions(markers: markers)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
