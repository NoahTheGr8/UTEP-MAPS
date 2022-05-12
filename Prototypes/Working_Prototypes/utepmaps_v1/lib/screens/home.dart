// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:utepmaps_v1/constants/Theme.dart';
import 'package:flutter_map/flutter_map.dart';
import 'buildings_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final String title = "UTEP MAPS";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),

      //this is where the OSM would be!
      body: const Center(
        child: Text('Insert OSM here'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          itemExtent: 100.0,
          shrinkWrap: false,

          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: UtepMapsColors.utepBlue_1,
                  image: DecorationImage(
                      image: AssetImage("assets/imgs/utep.png"),
                      fit: BoxFit.fitHeight)),
              child: Text(''),
            ),
            ListTile(
              title: Center(
                child: const Text(
                  'Buildings',
                  style: TextStyle(
                    fontFamily: 'Montserrat-Bold',
                    fontSize: 36.0,
                    color: UtepMapsColors.utepBlue_1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => buildingsList()));
              },
            ),
            ListTile(
              tileColor: UtepMapsColors.utepSilver_2,
              title: Center(
                child: const Text(
                  'Eateries',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 36.0,
                    color: UtepMapsColors.utepOrange_1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Center(
                child: const Text(
                  'Shuttle Stops',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 36.0,
                    color: UtepMapsColors.utepBlue_1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              tileColor: UtepMapsColors.utepSilver_2,
              title: Center(
                child: const Text(
                  'Parking',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 36.0,
                    color: UtepMapsColors.utepOrange_1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
