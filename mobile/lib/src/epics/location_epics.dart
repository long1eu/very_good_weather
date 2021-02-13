// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:very_good_weather/src/actions/index.dart';
import 'package:very_good_weather/src/data/index.dart';
import 'package:very_good_weather/src/models/index.dart';

class LocationEpics {
  const LocationEpics({@required LocationApi api})
      : assert(api != null),
        _api = api;

  final LocationApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetLocation$>(_getLocation),
    ]);
  }

  Stream<AppAction> _getLocation(Stream<GetLocation$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetLocation$ action) => Stream<void>.value(null)
            .asyncMap((_) => _api.getLocation())
            .expand((LatLng location) => <AppAction>[
                  GetLocation.successful(location),
                  SearchLocation.query(location.city),
                ])
            .onErrorReturnWith((dynamic error) => GetLocation.error(error)));
  }
}
