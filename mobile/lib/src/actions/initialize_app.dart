// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of actions;

const String _kInitializeAppPendingId = 'InitializeApp';

@freezed
abstract class InitializeApp with _$InitializeApp implements AppAction {
  @Implements(ActionStart)
  const factory InitializeApp.start(
    ActionResult result, {
    @Default(_kInitializeAppPendingId) String pendingId,
  }) = InitializeAppStart;

  const factory InitializeApp.update({
    LatLng location,
    Location currentLocation,
    LocationWeather weatherData,
  }) = InitializeAppUpdate;

  @Implements(ActionDone)
  const factory InitializeApp.successful({
    @Default(_kInitializeAppPendingId) String pendingId,
  }) = InitializeAppSuccessful;

  @Implements(ActionDone)
  @Implements(ErrorAction)
  const factory InitializeApp.error(
    Object error, [
    @Default(_kInitializeAppPendingId) String pendingId,
  ]) = InitializeAppError;

  static String get pendingKey => _kInitializeAppPendingId;
}
