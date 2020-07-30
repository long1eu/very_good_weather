// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of actions;

@freezed
abstract class SetSelectedLocation with _$SetSelectedLocation implements AppAction {
  const factory SetSelectedLocation(Location location) = SetSelectedLocation$;
}

@freezed
abstract class SetSelectedLocationId with _$SetSelectedLocationId implements AppAction {
  const factory SetSelectedLocationId(int locationId) = SetSelectedLocationId$;
}

@freezed
abstract class SetMeasurementUnit with _$SetMeasurementUnit implements AppAction {
  const factory SetMeasurementUnit(MeasurementUnit unit) = SetMeasurementUnit$;
}
