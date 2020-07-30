// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of actions;

@freezed
abstract class GetLocation with _$GetLocation implements AppAction {
  const factory GetLocation() = GetLocation$;

  const factory GetLocation.successful(LatLng location) = GetLocationSuccessful;

  @Implements(ErrorAction)
  const factory GetLocation.error(Object error) = GetLocationError;
}
