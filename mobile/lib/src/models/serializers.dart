// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:chopper/chopper.dart';
import 'package:very_good_weather/src/models/index.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  LatLng,
  Location,
  LocationWeather,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..add(Iso8601DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();

const _BuiltValueConverter builtValueConverter = _BuiltValueConverter();

class _BuiltValueConverter extends JsonConverter {
  const _BuiltValueConverter();

  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response<dynamic> response) {
    final Response<dynamic> jsonRes = super.convertResponse<dynamic, dynamic>(response);
    final ResultType body = _decode<Item>(jsonRes.body) as ResultType;
    return jsonRes.copyWith<ResultType>(body: body);
  }

  @override
  Request convertRequest(Request request) {
    return super.convertRequest(request.copyWith(body: serializers.serialize(request.body)));
  }

  dynamic /* BuiltList<T> | T */ _decode<T>(dynamic entity) {
    if (entity is T) {
      return entity;
    } else if (entity is List) {
      return _deserializeListOf<T>(entity);
    } else {
      return _deserialize<T>(entity);
    }
  }

  T _deserialize<T>(dynamic value) {
    final Serializer<T> serializer = serializers.serializerForType(T) as Serializer<T>;
    return serializers.deserializeWith<T>(serializer, value);
  }

  List<T> _deserializeListOf<T>(Iterable<dynamic> value) {
    if (value.isEmpty) {
      return <T>[];
    }

    return value.map<T>(_deserialize).toList();
  }
}

class DoubleSerializer implements PrimitiveSerializer<double> {
  static const String nan = 'NaN';
  static const String infinity = 'INF';
  static const String negativeInfinity = '-INF';

  final bool structured = false;
  @override
  final Iterable<Type> types = <Type>[double];
  @override
  final String wireName = 'double';

  @override
  Object serialize(Serializers serializers, double aDouble, {FullType specifiedType = FullType.unspecified}) {
    if (aDouble.isNaN) {
      return nan;
    } else if (aDouble.isInfinite) {
      return aDouble.isNegative ? negativeInfinity : infinity;
    } else {
      return aDouble;
    }
  }

  @override
  double deserialize(Serializers serializers, Object serialized, {FullType specifiedType = FullType.unspecified}) {
    if (serialized == nan) {
      return double.nan;
    } else if (serialized == negativeInfinity) {
      return double.negativeInfinity;
    } else if (serialized == infinity) {
      return double.infinity;
    } else {
      return (serialized as num).toDouble();
    }
  }
}
