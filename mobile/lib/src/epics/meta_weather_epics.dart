// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:very_good_weather/src/actions/index.dart';
import 'package:very_good_weather/src/data/index.dart';
import 'package:very_good_weather/src/models/index.dart';

class MetaWeatherEpics {
  const MetaWeatherEpics({@required MetaWeatherApi api})
      : assert(api != null),
        _api = api;

  final MetaWeatherApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, SearchLocationQuery>(_searchLocationQuery),
      TypedEpic<AppState, GetWeatherData$>(_getWeatherData),
    ]);
  }

  Stream<AppAction> _searchLocationQuery(Stream<SearchLocationQuery> actions, EpicStore<AppState> store) {
    return actions //
        .distinct()
        .debounceTime(const Duration(milliseconds: 500))
        .switchMap((SearchLocationQuery action) => Stream<void>.value(null)
            .asyncMap((_) => _api.search(action.query))
            .map((List<Location> locations) => SearchLocation.successful(locations))
            .onErrorReturnWith((dynamic error) => SearchLocation.error(error)));
  }

  Stream<AppAction> _getWeatherData(Stream<GetWeatherData$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetWeatherData$ action) => Stream<void>.value(null)
            .asyncMap((_) => _api.getLocationWeather(action.locationId))
            .map((LocationWeather data) => GetWeatherData.successful(data, action.pendingId))
            .onErrorReturnWith((dynamic error) => GetWeatherData.error(error, action.pendingId)));
  }
}
