import 'package:utepmaps_v1/location_types/shuttle_stop.dart';

import 'building.dart';
import 'eatery.dart';
import 'shuttle_stop.dart';
import 'parking.dart';

//This is the class that's responsible for storing all the locations. This will be replaced with a sqflite db soon.
class Locations {
  List<Building> buildings = [];
  List<Eatery> eateries = [];
  List<ShuttleStop> shuttleStops = [];
  List<Parking> parking = [];
}
