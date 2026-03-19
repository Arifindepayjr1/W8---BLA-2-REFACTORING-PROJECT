import 'package:w8_refactor/data/dummy_data.dart';
import 'package:w8_refactor/model/ride/locations.dart';
import 'package:w8_refactor/model/ride_pref/ride_pref.dart';

class RidePreferenceRepositoryMock implements RidePreference {
  RidePreference? _currentPreference;

  RidePreference? get currentPreference => _currentPreference;

  @override
  void setPreference(RidePreference preference) {
    _currentPreference = preference;
  }

  @override
  Future<List<RidePreference>> getHistory() async{
    List<RidePreference> ridePref =  fakeRidePrefs;
    return ridePref;
  }

  @override
  Location get arrival => _currentPreference!.arrival;
  
  @override
  Location get departure => _currentPreference!.departure;

  @override
  DateTime get departureDate => _currentPreference!.departureDate;

  @override
  int get requestedSeats => _currentPreference!.requestedSeats;
}
