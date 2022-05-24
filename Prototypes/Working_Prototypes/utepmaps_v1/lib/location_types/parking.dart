import 'location.dart';

//Represents a place to park on campus
class Parking extends Location {
  bool gateEntry;

  Parking(
      String name, String locAbbrev, this.gateEntry, double lat, double long)
      : super(name, locAbbrev, lat, long);
}
