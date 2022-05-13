import 'package:flutter/material.dart';
import 'package:utepmaps_v1/constants/Theme.dart';

import 'package:utepmaps_v1/screens/home.dart';
import 'package:utepmaps_v1/screens/buildings_list.dart';
import 'package:utepmaps_v1/screens/eatery_list.dart';
import 'package:utepmaps_v1/screens/shuttle_stop_list.dart';
import 'package:utepmaps_v1/screens/parking_list.dart';

Drawer buildDrawer(BuildContext context) {
  return Drawer(
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
          title: const Center(
            child: Text(
              'Buildings',
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
            //Navigator.pop(context);

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const BuildingList()));
          },
        ),
        ListTile(
          tileColor: UtepMapsColors.utepSilver_2,
          title: const Center(
            child: Text(
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const EateryList()));
          },
        ),
        ListTile(
          title: const Center(
            child: Text(
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
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ShuttleStopList()));
          },
        ),
        ListTile(
          tileColor: UtepMapsColors.utepSilver_2,
          title: const Center(
            child: Text(
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ParkingList()));
          },
        ),
      ],
    ),
  );
}
