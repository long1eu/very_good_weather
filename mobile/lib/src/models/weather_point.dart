// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of models;

abstract class WeatherPoint implements Built<WeatherPoint, WeatherPointBuilder> {
  factory WeatherPoint([void Function(WeatherPointBuilder b) updates]) = _$WeatherPoint;

  factory WeatherPoint.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  WeatherPoint._();

  int get id;

  @BuiltValueField(wireName: 'weather_state_name')
  String get weatherStateName;

  @BuiltValueField(wireName: 'weather_state_abbr')
  String get weatherStateAbbr;

  @BuiltValueField(wireName: 'wind_direction_compass')
  String get windDirectionCompass;

  DateTime get created;

  @BuiltValueField(wireName: 'applicable_date')
  DateTime get applicableDate;

  @BuiltValueField(wireName: 'min_temp')
  double get minTemp;

  @BuiltValueField(wireName: 'max_temp')
  double get maxTemp;

  @BuiltValueField(wireName: 'the_temp')
  double get theTemp;

  @BuiltValueField(wireName: 'wind_speed')
  double get windSpeed;

  @BuiltValueField(wireName: 'wind_direction')
  double get windDirection;

  @BuiltValueField(wireName: 'air_pressure')
  num get airPressure;

  int get humidity;

  // in miles
  double get visibility;

  int get predictability;

  String getVisibility(MeasurementUnit unit) {
    if (unit == MeasurementUnit.metric) {
      return '${(visibility * 1.609).toStringAsFixed(0)} km';
    } else {
      return '${visibility.toStringAsFixed(0)} miles';
    }
  }

  String getTemp(MeasurementUnit unit) {
    if (unit == MeasurementUnit.metric) {
      return minTemp.toStringAsFixed(0);
    } else {
      return theTempFahrenheit.toStringAsFixed(0);
    }
  }

  String getMinTemp(MeasurementUnit unit) {
    if (unit == MeasurementUnit.metric) {
      return maxTemp.toStringAsFixed(0);
    } else {
      return theTempFahrenheit.toStringAsFixed(0);
    }
  }

  String getMaxTemp(MeasurementUnit unit) {
    if (unit == MeasurementUnit.metric) {
      return theTemp.toStringAsFixed(0);
    } else {
      return theTempFahrenheit.toStringAsFixed(0);
    }
  }

  @memoized
  double get minTempFahrenheit {
    return minTemp * 9 / 5 + 32;
  }

  @memoized
  double get maxTempFahrenheit {
    return maxTemp * 9 / 5 + 32;
  }

  @memoized
  double get theTempFahrenheit {
    return theTemp * 9 / 5 + 32;
  }

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<WeatherPoint> get serializer => _$weatherPointSerializer;
}
