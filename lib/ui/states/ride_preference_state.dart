import 'package:flutter/material.dart';
import 'package:w8_refactor/data/repositories/ride_preference/ride_preference_repository_mock.dart';
import 'package:w8_refactor/model/ride_pref/ride_pref.dart';

class RidePreferenceState extends ChangeNotifier {
  final RidePreferenceRepositoryMock ridePreferenceRepositoryMock;
  RidePreference? _currentPreference;
  List<RidePreference> _history = [];

  RidePreferenceState({required this.ridePreferenceRepositoryMock}) {
    _currentPreference = ridePreferenceRepositoryMock.currentPreference!;
    _history = ridePreferenceRepositoryMock.getHistory();
  }

  RidePreference? get currentPreference => _currentPreference;
  List<RidePreference> get history => _history;

  void setRidePreference(RidePreference ridePreference) {
    ridePreferenceRepositoryMock.setPreference(ridePreference);
    _currentPreference = ridePreferenceRepositoryMock.currentPreference!;

    notifyListeners();
  }
}
