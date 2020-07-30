// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of models;

abstract class WeatherSource implements Built<WeatherSource, WeatherSourceBuilder> {
  factory WeatherSource([void Function(WeatherSourceBuilder b) updates]) = _$WeatherSource;

  factory WeatherSource.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  WeatherSource._();

  String get title;

  String get slug;

  String get url;

  @BuiltValueField(wireName: 'crawl_rate')
  int get crawlRate;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<WeatherSource> get serializer => _$weatherSourceSerializer;
}
