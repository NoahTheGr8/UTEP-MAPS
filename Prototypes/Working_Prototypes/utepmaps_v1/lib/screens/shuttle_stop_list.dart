import 'package:flutter/material.dart';
import 'package:utepmaps_v1/location_types/building.dart';
import 'package:utepmaps_v1/location_types/shuttle_stop.dart';
import '../location_types/locations.dart';

class ShuttleStopList extends StatefulWidget {
  static const String route = 'ShuttleStopList';

  const ShuttleStopList({Key? key}) : super(key: key);

  @override
  ShuttleStopListState createState() => ShuttleStopListState();
}

class ShuttleStopListState extends State<ShuttleStopList> {
  late Locations locations = Locations();

  @override
  void initState() {
    super.initState();
    initializeSelection();
  }

  void initializeSelection() {
    //TODO - QUERY ALL LOCATIONS FROM DB IN HERE

    ShuttleStop west =
        ShuttleStop("West Shuttle", "MINALL", "Active", 31.77055, -106.50740);
    ShuttleStop camp = ShuttleStop(
        "Campbell Shuttle", "MLOYA", "Inactive", 31.76652, -106.50194);
    locations.shuttleStops.add(west);
    locations.shuttleStops.add(camp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Shuttle Stops',
            style: const TextStyle(fontFamily: 'Montserrat'),
          ),
        ),
        body: ListBuilder(
          shuttleStopList: locations.shuttleStops,
        ));
  }
}

class ListBuilder extends StatefulWidget {
  const ListBuilder({Key? key, required this.shuttleStopList})
      : super(key: key);

  final List<ShuttleStop> shuttleStopList;

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  //Start navigation here if they toggle this tile
  void _toggle(int index) {}

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.shuttleStopList.length,
        itemBuilder: (context, int index) {
          return ListTile(
              leading: Icon(Icons.bus_alert_sharp),
              onTap: () => _toggle(
                  index), //TODO update this to navigate to desired location
              trailing: const Text('dist from user'),
              title: Text('${widget.shuttleStopList.elementAt(index).name}'),
              subtitle: Text(
                  '${widget.shuttleStopList.elementAt(index).locAbbrev} - ${widget.shuttleStopList.elementAt(index).status}'));
        });
  }
}
