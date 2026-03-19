import 'package:w8_refactor/data/dummy_data.dart';
import 'package:w8_refactor/data/repositories/location/location_repository.dart';
import 'package:w8_refactor/model/ride/locations.dart';

class LocationRepositoryMock implements LocationRepository {
  List<Location> locations = [];

  @override
  List<Location> getAllLocations()  {
    locations = fakeLocations;
    if (locations.isEmpty) {
      throw Exception("Location is Empty");
    }
    return locations;
  }

  @override
  Future<Location> getLocationByName(String name) async {
    List<Location> locations = await getAllLocations();
    return locations.firstWhere((location) {
      return location.name == name;
    });
  }
}
