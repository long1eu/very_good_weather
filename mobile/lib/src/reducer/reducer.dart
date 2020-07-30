// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

import 'dart:async';
import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';
import 'package:very_good_weather/src/actions/index.dart';
import 'package:very_good_weather/src/models/index.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is ErrorAction) {
    final Object error = action.error;
    final StackTrace stackTrace = error is Error ? error.stackTrace : StackTrace.current;

    if (kReleaseMode) {
      Zone.current.handleUncaughtError(error, stackTrace);
    } else {
      log(<dynamic>[action, error, stackTrace].join('\n'));
    }
  } else if (kDebugMode) {
    log('$action');
  }

  return _reducer(state, action);
}

Reducer<AppState> _reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, InitializeAppUpdate>(_initializeAppUpdate),
  TypedReducer<AppState, GetLocationSuccessful>(_getLocationSuccessful),
  TypedReducer<AppState, SearchLocationSuccessful>(_searchLocationSuccessful),
  TypedReducer<AppState, ActionStart>(_actionStart),
  TypedReducer<AppState, ActionDone>(_actionDone),
  TypedReducer<AppState, GetWeatherDataSuccessful>(_getWeatherDataSuccessful),
  TypedReducer<AppState, SetSelectedLocation>(_setSelectedLocation),
  TypedReducer<AppState, SetSelectedLocationId>(_setSelectedLocationId),
  TypedReducer<AppState, SetMeasurementUnit>(_setMeasurementUnit),
  TypedReducer<AppState, SearchLocationQuery>(_searchLocationQuery),
]);

AppState _initializeAppUpdate(AppState state, InitializeAppUpdate action) {
  return state.rebuild((AppStateBuilder b) {
    if (action.location != null) {
      b
        ..location = action.location.toBuilder()
        ..query = action.location.city;
    }
    if (action.weatherData != null) {
      b.weatherData[action.weatherData.id] = action.weatherData;
    }
    if (action.currentLocation != null) {
      b.locations[action.currentLocation.id] = action.currentLocation;
    }
  });
}

AppState _getLocationSuccessful(AppState state, GetLocationSuccessful action) {
  return state.rebuild((AppStateBuilder b) => b.location = action.location.toBuilder());
}

AppState _searchLocationSuccessful(AppState state, SearchLocationSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.searchResult = ListBuilder<Location>(action.locations);
  });
}

AppState _actionStart(AppState state, ActionStart action) {
  return state.rebuild((AppStateBuilder b) => b.pendingActions.add(action.pendingId));
}

AppState _actionDone(AppState state, ActionDone action) {
  return state.rebuild((AppStateBuilder b) => b.pendingActions.remove(action.pendingId));
}

AppState _getWeatherDataSuccessful(AppState state, GetWeatherDataSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.weatherData[action.weather.id] = action.weather;
  });
}

AppState _setSelectedLocation(AppState state, SetSelectedLocation action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..selectedLocationId = action.location.id
      ..locations[action.location.id] = action.location;
  });
}

AppState _setSelectedLocationId(AppState state, SetSelectedLocationId action) {
  return state.rebuild((AppStateBuilder b) {
    b.selectedLocationId = action.locationId;
  });
}

AppState _setMeasurementUnit(AppState state, SetMeasurementUnit action) {
  return state.rebuild((AppStateBuilder b) {
    b.unit = action.unit;
  });
}

AppState _searchLocationQuery(AppState state, SearchLocationQuery action) {
  return state.rebuild((AppStateBuilder b) {
    b.query = action.query;
  });
}
