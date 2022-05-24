/*
This is the superclass for all locations which includes their attributes 
*/

class Location {
  String
      name; //full location name like 'Chemisty and Computer Science Building'
  String locAbbrev; //abbrevieation of location like 'EPNG', 'LIB', or 'MINALL'
  double lat; //latitude of location
  double long; //longitude of location

  Location(this.name, this.locAbbrev, this.lat, this.long);
}
