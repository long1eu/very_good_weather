// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of actions;

const String _kGetWeatherDataPendingId = 'GetWeatherData';

@freezed
abstract class GetWeatherData with _$GetWeatherData implements AppAction {
  @Implements(ActionStart)
  const factory GetWeatherData.start(int locationId, String pendingId) = GetWeatherData$;

  @Implements(ActionDone)
  const factory GetWeatherData.successful(LocationWeather weather, String pendingId) = GetWeatherDataSuccessful;

  @Implements(ActionDone)
  @Implements(ErrorAction)
  const factory GetWeatherData.error(Object error, String pendingId) = GetWeatherDataError;

  static String getPendingKey(int id) {
    return '$_kGetWeatherDataPendingId-$id';
  }

  static bool hasGetWeatherData(Iterable<String> pendingIds) {
    return pendingIds.any((String pendingId) => pendingId.startsWith(_kGetWeatherDataPendingId));
  }
}
