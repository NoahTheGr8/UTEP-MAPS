import 'package:geolocator/geolocator.dart';

//This class gets the distance from the user and another location
class DistanceCalculator {
  //map containing coordinates of the buildings
  Map<String, List> locationMap = {
    "BELL": [31.76850, -106.50507],
    "CCSB": [31.76797, -106.50219]
  };

  //map that updates to values containing distance between user and location - this updates everytime the "Buildings" Screen is pushed to the screen
  Map<String, double> distFromUser = {
    "BELL": -1.0,
    "CCSB": -1.0
  }; //-1 indicates that distance between user and location has not been assigned

  //DistanceCalculator returns distance between users position and desired location
  DistanceCalculator(Position position) {
    double userLat = position.latitude; //users latitude
    double userLong = position.longitude; //users longitude

    double targetLat = 0;
    double targetLong = 0;

    double distanceInMeters = 0;
    double distanceInMiles = 0;

    for (String k in locationMap.keys) {
      targetLat = locationMap[k]![0]; //gets latitude of target location
      targetLong = locationMap[k]![1]; //gets longitude of target location

      distanceInMeters =
          Geolocator.distanceBetween(userLat, userLong, targetLat, targetLong);
      distanceInMiles = distanceInMeters / 1609.344; //meters to miles formula

      distFromUser[k] = distanceInMiles;
    }

    print("--------------- completed distFromUser");
  }
}
