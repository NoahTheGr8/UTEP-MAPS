import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../location_types/building.dart';
import '../distance_calculator.dart';
import '../location_types/locations.dart';

class BuildingList extends StatefulWidget {
  static const String route = 'BuildingList';

  const BuildingList({Key? key}) : super(key: key);

  @override
  BuildingListState createState() => BuildingListState();
}

class BuildingListState extends State<BuildingList> {
  late Locations locations = Locations();

  @override
  void initState() {
    super.initState();
    initializeSelection();
  }

  void initializeSelection() async {
    // ignore: todo
    //TODO - QUERY ALL LOCATIONS FROM DB IN HERE

    // LocationPermission permission = await Geolocator.requestPermission();
    // Position position = await Geolocator.getCurrentPosition(
    //     desiredAccuracy: LocationAccuracy.high);
    // var distCalc = DistanceCalculator(
    //     position); //calculates all distances of all buildings relative to user before showing a list of them

    Building ccsb = Building(
        "Chemistry and Computer Science", "CCSB", 31.76797, -106.50219, 0);
    Building bell = Building("Bell Hall", "BELL", 31.76850, -106.50507, 0);

    // Building ccsb = Building("Chemistry and Computer Science", "CCSB", 31.76797,
    //     -106.50219, distCalc.distFromUser["CCSB"]!);
    //
    // Building bell = Building("Bell Hall", "BELL", 31.76850, -106.50507,
    //     distCalc.distFromUser["BELL"]!);

    locations.buildings.add(ccsb);
    locations.buildings.add(bell);
    // ignore: avoid_print
    print("done creating buildings");
    // ignore: avoid_print
    print(" dist from user >>>> ${ccsb.distFromUser}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Buildings',
            style: TextStyle(fontFamily: 'Montserrat'),
          ),
        ),
        body: ListBuilder(
          buildingList: locations.buildings,
        ));
  }
}

class ListBuilder extends StatefulWidget {
  const ListBuilder({Key? key, required this.buildingList}) : super(key: key);

  final List<Building> buildingList;

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  //Start navigation here if they toggle this tile
  void _toggle(int index) {}

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.buildingList.length,
        itemBuilder: (context, int index) {
          return ListTile(
              leading: const Icon(Icons.apartment_sharp),
              onTap: () => _toggle(
                  // ignore: todo
                  index), //TODO update this to navigate to desired location
              trailing: Text(
                  '${widget.buildingList.elementAt(index).distFromUser.toStringAsFixed(2)} miles away'),
              title: Text(widget.buildingList.elementAt(index).name),
              subtitle: Text(widget.buildingList.elementAt(index).locAbbrev));
        });
  }
}
