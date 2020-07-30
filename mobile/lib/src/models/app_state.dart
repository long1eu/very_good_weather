// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState.initialState() {
    return _$AppState((AppStateBuilder b) {
      b.unit = MeasurementUnit.metric;
    });
  }

  AppState._();

  BuiltMap<int, LocationWeather> get weatherData;

  BuiltMap<int, Location> get locations;

  BuiltSet<String> get pendingActions;

  BuiltList<Location> get searchResult;

  MeasurementUnit get unit;

  @nullable
  LatLng get location;

  @nullable
  int get selectedLocationId;

  @nullable
  String get query;
}
