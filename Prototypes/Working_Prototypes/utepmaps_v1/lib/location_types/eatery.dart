import 'location.dart';

//Represents a place to eat on campus
class Eatery extends Location {
  String hours;

  Eatery(String name, String locAbbrev, this.hours, double lat, double long)
      : super(name, locAbbrev, lat, long);
}
