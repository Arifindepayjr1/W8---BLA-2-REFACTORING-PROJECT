import 'package:flutter/material.dart';
import 'package:w8_refactor/model/ride/locations.dart';

abstract class LocationRepository {
  List<Location> getAllLocations();
  Future<Location> getLocationByName(String name);
}



