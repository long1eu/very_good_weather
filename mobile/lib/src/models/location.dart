// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of models;

abstract class Location implements Built<Location, LocationBuilder> {
  factory Location([void Function(LocationBuilder b) updates]) = _$Location;

  factory Location.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Location._();

  @BuiltValueField(wireName: 'woeid')
  int get id;

  String get title;

  @BuiltValueField(wireName: 'location_type')
  String get locationType;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Location> get serializer => _$locationSerializer;
}
