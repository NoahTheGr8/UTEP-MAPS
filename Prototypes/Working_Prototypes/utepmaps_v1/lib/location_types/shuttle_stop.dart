import 'package:utepmaps_v1/location_types/location.dart';

class ShuttleStop extends Location {
  String status;

  ShuttleStop(String name, String locAbbrev, this.status, double lat,
      double long, double distFromUser)
      : super(name, locAbbrev, lat, long, distFromUser);
}
