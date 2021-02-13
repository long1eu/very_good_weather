// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:very_good_weather/src/actions/index.dart';
import 'package:very_good_weather/src/data/index.dart';
import 'package:very_good_weather/src/epics/location_epics.dart';
import 'package:very_good_weather/src/epics/meta_weather_epics.dart';
import 'package:very_good_weather/src/models/index.dart';

class AppEpics {
  const AppEpics({
    @required MetaWeatherApi metaWeatherApi,
    @required LocationApi locationApi,
  })  : assert(metaWeatherApi != null),
        assert(locationApi != null),
        _metaWeatherApi = metaWeatherApi,
        _locationApi = locationApi;

  final MetaWeatherApi _metaWeatherApi;
  final LocationApi _locationApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      LocationEpics(api: _locationApi).epics,
      MetaWeatherEpics(api: _metaWeatherApi).epics,
      TypedEpic<AppState, InitializeAppStart>(_initializeAppStart),
    ]);
  }

  Stream<AppAction> _initializeAppStart(Stream<InitializeAppStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeAppStart action) => Stream<void>.value(null)
            .asyncMap((_) => _locationApi.getLocation())
            .flatMap((LatLng location) async* {
              yield InitializeApp.update(location: location);

              final List<Location> locationResult = await _metaWeatherApi.search(location.city);
              if (locationResult.isEmpty) {
                yield const InitializeApp.successful();
                return;
              }
              final Location currentLocation = locationResult.first;
              yield InitializeApp.update(currentLocation: currentLocation);

              final LocationWeather weather = await _metaWeatherApi.getLocationWeather(currentLocation.id);
              yield InitializeApp.update(weatherData: weather);
              yield const InitializeApp.successful();
            })
            .onErrorReturnWith((dynamic error) => InitializeApp.error(error))
            .doOnData(action.result));
  }
}
