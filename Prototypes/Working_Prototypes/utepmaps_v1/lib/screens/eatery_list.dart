import 'package:flutter/material.dart';
import 'package:utepmaps_v1/location_types/eatery.dart';
import '../location_types/locations.dart';

class EateryList extends StatefulWidget {
  static const String route = 'EateryList';

  const EateryList({Key? key}) : super(key: key);

  @override
  EateryListState createState() => EateryListState();
}

class EateryListState extends State<EateryList> {
  late Locations locations = Locations();

  @override
  void initState() {
    super.initState();
    initializeSelection();
  }

  void initializeSelection() async {
    // Eatery pns =
    //     Eatery("Pick 'N' Shovel", "Union East", "Open", 31.77154, -106.50354);
    // Eatery cfa = Eatery("Chick-Fil-A", "EPNG", "Closed", 31.76784, -106.50575);
    // locations.eateries.add(pns);
    // locations.eateries.add(cfa);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Eateries',
            style: const TextStyle(fontFamily: 'Montserrat'),
          ),
        ),
        body: ListBuilder(
          eateryList: locations.eateries,
        ));
  }
}

class ListBuilder extends StatefulWidget {
  const ListBuilder({Key? key, required this.eateryList}) : super(key: key);

  final List<Eatery> eateryList;

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  //Start navigation here if they toggle this tile
  void _toggle(int index) {}

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.eateryList.length,
        itemBuilder: (context, int index) {
          return ListTile(
              leading: Icon(Icons.fastfood_sharp),
              onTap: () => _toggle(
                  index), //TODO update this to navigate to desired location
              trailing: const Text('dist from user'),
              title: Text('${widget.eateryList.elementAt(index).name}'),
              subtitle: Text(
                  '${widget.eateryList.elementAt(index).locAbbrev} - ${widget.eateryList.elementAt(index).hours}'));
        });
  }
}
