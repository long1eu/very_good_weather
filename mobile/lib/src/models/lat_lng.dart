// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of models;

abstract class LatLng implements Built<LatLng, LatLngBuilder> {
  factory LatLng([void Function(LatLngBuilder b) updates]) = _$LatLng;

  factory LatLng.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  LatLng._();

  double get lat;

  double get lon;

  String get city;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<LatLng> get serializer => _$latLngSerializer;
}
