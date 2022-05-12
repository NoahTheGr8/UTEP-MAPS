import 'package:flutter/material.dart';
import 'package:utepmaps_v1/location_types/building.dart';
import '../locations.dart';

class buildingsList extends StatefulWidget {
  const buildingsList({Key? key}) : super(key: key);

  @override
  buildingsListState createState() => buildingsListState();
}

class buildingsListState extends State<buildingsList> {
  late Locations locations = Locations();

  @override
  void initState() {
    super.initState();
    initializeSelection();
  }

  void initializeSelection() {
    Building ccsb = Building("Chemistry and Computer Science", "CCSB");
    Building bell = Building("Bell Hall", "Bell");
    locations.buildings.add(ccsb);
    locations.buildings.add(bell);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Buildings',
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
              leading: Icon(Icons.apartment_sharp),
              onTap: () => _toggle(
                  index), //TODO update this to navigate to desired location
              trailing: const Text('dist from user'),
              title: Text('${widget.buildingList.elementAt(index).name}'),
              subtitle: Text(
                  '${widget.buildingList.elementAt(index).buildingAbbrev}'));
        });
  }
}
