import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w8_refactor/data/repositories/ride/ride_repository_mock.dart';
import 'package:w8_refactor/data/repositories/location/location_repository_mock.dart';
import 'package:w8_refactor/data/repositories/ride_preference/ride_preference_repository_mock.dart';
import 'package:w8_refactor/ui/states/ride_preference_state.dart';
import 'main_common.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (_) => RideRepositoryMock()),
        Provider(create: (_) => LocationRepositoryMock()),

        ChangeNotifierProvider(
          create: (_) {
            return RidePreferenceState(
              ridePreferenceRepositoryMock: RidePreferenceRepositoryMock(),
            );
          },
        ),
      ],
      child: const BlaBlaApp(),
    ),
  );
}
