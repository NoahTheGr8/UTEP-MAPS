import 'package:utepmaps_v1/location_types/shuttle_stop.dart';

import 'location_types/building.dart';
import 'location_types/eatery.dart';
import 'location_types/shuttle_stop.dart';
import 'location_types/parking.dart';

//This is the class containing ALL of the locations. Any location can be accessed from this class
class Locations {
  List<Building> buildings = [];
  List<Eatery> eateries = [];
  List<ShuttleStop> shuttleStops = [];
  List<Parking> parking = [];
}
