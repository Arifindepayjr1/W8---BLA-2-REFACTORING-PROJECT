import 'package:w8_refactor/model/ride/locations.dart';
import 'package:w8_refactor/model/ride/ride.dart';

abstract class RideRepository {
  Future<List<Ride>> getAllRides();
  Future<Location> getDepartureLocation(Location location);
  Future<Location> getArriveLocation(Location location);
}
