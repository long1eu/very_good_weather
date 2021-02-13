// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

import 'package:chopper/chopper.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:very_good_weather/src/data/index.dart';
import 'package:very_good_weather/src/data/services/index.dart';
import 'package:very_good_weather/src/epics/app_epics.dart';
import 'package:very_good_weather/src/models/index.dart';
import 'package:very_good_weather/src/models/serializers.dart';
import 'package:very_good_weather/src/reducer/reducer.dart';
import 'package:http/http.dart';

typedef Init = Future<Store<AppState>> Function();

Future<Store<AppState>> init() async {
  final Client client = Client();

  final MetaWeatherApi metaWeatherApi = MetaWeatherApi(client: client);
  final LocationApi locationApi = LocationApi(client: client);
  final AppEpics appEpics = AppEpics(metaWeatherApi: metaWeatherApi, locationApi: locationApi);

  return Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.epics),
    ],
  );
}
