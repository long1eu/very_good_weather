// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

library data;

import 'package:chopper/chopper.dart';
import 'package:meta/meta.dart';
import 'package:very_good_weather/src/data/services/index.dart';
import 'package:very_good_weather/src/models/index.dart';

part 'location_api.dart';
part 'meta_weather_api.dart';

T resultOrThrow<T>(Response<T> response) {
  if (response.isSuccessful) {
    return response.body;
  } else {
    throw StateError('${response.error}');
  }
}
