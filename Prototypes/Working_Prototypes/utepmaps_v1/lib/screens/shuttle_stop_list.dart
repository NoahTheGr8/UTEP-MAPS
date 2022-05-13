import 'package:flutter/material.dart';
import 'package:utepmaps_v1/location_types/building.dart';
import 'package:utepmaps_v1/location_types/shuttle_stop.dart';
import '../locations.dart';

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
    ShuttleStop west =
        ShuttleStop("West Shuttle", "Miner-Alley/SunBowl", "Active");
    ShuttleStop camp = ShuttleStop("Campbell Shuttle", "Mike Loya", "Inactive");
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
                  '${widget.shuttleStopList.elementAt(index).shuttleStopAbbrev} - ${widget.shuttleStopList.elementAt(index).status}'));
        });
  }
}
