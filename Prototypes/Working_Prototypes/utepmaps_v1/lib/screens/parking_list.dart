import 'package:flutter/material.dart';
import 'package:utepmaps_v1/location_types/parking.dart';
import 'package:utepmaps_v1/location_types/shuttle_stop.dart';
import '../location_types/locations.dart';

class ParkingList extends StatefulWidget {
  static const String route = 'ParkingList';

  const ParkingList({Key? key}) : super(key: key);

  @override
  ParkingListState createState() => ParkingListState();
}

class ParkingListState extends State<ParkingList> {
  late Locations locations = Locations();

  @override
  void initState() {
    super.initState();
    initializeSelection();
  }

  void initializeSelection() {
    Parking p1 = Parking("Schuster 4", "SC4", false);
    Parking p2 = Parking("Schuster 3", "SC3", false);
    Parking p3 = Parking("Glory Road 1", "GR1", false);
    Parking p4 = Parking("Oregon 2", "OR2", true);

    locations.parking.add(p1);
    locations.parking.add(p2);
    locations.parking.add(p3);
    locations.parking.add(p4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Parking',
            style: const TextStyle(fontFamily: 'Montserrat'),
          ),
        ),
        body: ListBuilder(
          parkingList: locations.parking,
        ));
  }
}

class ListBuilder extends StatefulWidget {
  const ListBuilder({Key? key, required this.parkingList}) : super(key: key);

  final List<Parking> parkingList;

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  //Start navigation here if they toggle this tile
  void _toggle(int index) {}

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.parkingList.length,
        itemBuilder: (context, int index) {
          return ListTile(
              leading: Icon(Icons.local_parking_outlined),
              onTap: () => _toggle(
                  index), //TODO update this to navigate to desired location
              trailing: const Text('dist from user'),
              title: Text('${widget.parkingList.elementAt(index).name}'),
              subtitle: Text(
                  '${widget.parkingList.elementAt(index).parkingAbbrev} - Entry Gate: ${widget.parkingList.elementAt(index).gateEntry}')); //"Gate entry NOT required"
        });
  }
}
