// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of actions;

const String _kSearchLocationPendingId = 'SearchLocation';

@freezed
abstract class SearchLocation with _$SearchLocation implements AppAction {
  @Implements(ActionStart)
  const factory SearchLocation.query(
    String query, {
    @Default(_kSearchLocationPendingId) String pendingId,
  }) = SearchLocationQuery;

  @Implements(ActionDone)
  const factory SearchLocation.successful(
    List<Location> locations, [
    @Default(_kSearchLocationPendingId) String pendingId,
  ]) = SearchLocationSuccessful;

  @Implements(ActionDone)
  @Implements(ErrorAction)
  const factory SearchLocation.error(
    Object error, [
    @Default(_kSearchLocationPendingId) String pendingId,
  ]) = SearchLocationError;

  static String get pendingKey => _kSearchLocationPendingId;
}
