// File created by
// Lung Razvan <long1eu>
// on 13/02/2021

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:very_good_weather/src/actions/index.dart';
import 'package:very_good_weather/src/data/index.dart';
import 'package:very_good_weather/src/epics/location_epics.dart';
import 'package:mockito/mockito.dart';
import 'package:very_good_weather/src/models/index.dart';
import '../mock_models.dart';

void main() {
  final LocationApi locationApi = MockLocationApi();
  final LocationEpics epics = LocationEpics(api: locationApi);
  final String data = File('test/res/lat_lng.json').readAsStringSync();
  final dynamic body = jsonDecode(data);
  final LatLng latLng = LatLng.fromJson(body);

  group('getLocation', () {
    test('getLocation - successful', () async {
      when(locationApi.getLocation()).thenAnswer((_) async => latLng);
      const GetLocation action = GetLocation();

      await expectLater(
        epics.epics(Stream<dynamic>.value(action).asBroadcastStream(), null),
        emitsInOrder(<dynamic>[
          GetLocation.successful(latLng),
          SearchLocation.query(latLng.city),
          emitsDone,
        ]),
      );
    });

    test('getLocation - error ', () async {
      final StateError error = StateError('message');
      when(locationApi.getLocation()).thenThrow(error);
      const GetLocation action = GetLocation();

      await expectLater(
        epics.epics(Stream<dynamic>.value(action).asBroadcastStream(), null),
        emitsInOrder(<dynamic>[
          GetLocation.error(error),
          emitsDone,
        ]),
      );
    });
  });
}
