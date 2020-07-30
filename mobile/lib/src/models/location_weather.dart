// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of models;

abstract class LocationWeather implements Built<LocationWeather, LocationWeatherBuilder> {
  factory LocationWeather([void Function(LocationWeatherBuilder b) updates]) = _$LocationWeather;

  factory LocationWeather.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  LocationWeather._();

  @BuiltValueField(wireName: 'woeid')
  int get id;

  @BuiltValueField(wireName: 'consolidated_weather')
  BuiltList<WeatherPoint> get weather;

  @BuiltValueField(wireName: 'sun_rise')
  DateTime get sunRise;

  @BuiltValueField(wireName: 'sun_set')
  DateTime get sunSet;

  @memoized
  List<WeatherPoint> get futureWeather {
    final DateTime tomorrow = DateTime.now().add(const Duration(days: 1));
    return weather //
        .where((WeatherPoint point) => point.applicableDate.isAfter(tomorrow))
        .toList();
  }

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<LocationWeather> get serializer => _$locationWeatherSerializer;
}
