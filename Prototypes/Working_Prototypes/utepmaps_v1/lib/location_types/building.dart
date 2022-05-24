import 'location.dart';

//Represents a place to go
class Building extends Location {
  Building(String name, String locAbbrev, double lat, double long)
      : super(name, locAbbrev, lat, long);
}
