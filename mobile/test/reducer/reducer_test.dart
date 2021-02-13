// File created by
// Lung Razvan <long1eu>
// on 13/02/2021

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:very_good_weather/src/actions/index.dart';
import 'package:very_good_weather/src/models/index.dart';
import 'package:very_good_weather/src/reducer/reducer.dart';

void main() {
  final String data = File('test/res/lat_lng.json').readAsStringSync();
  final dynamic body = jsonDecode(data);
  final LatLng latLng = LatLng.fromJson(body);

  test('getLocation', () {
    final GetLocation action = GetLocation.successful(latLng);

    final AppState initialState = AppState.initialState();
    final AppState state = reducer(initialState, action);
    expect(state.location, latLng);
  });
}
