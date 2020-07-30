// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MeasurementUnit _$metric = const MeasurementUnit._('metric');
const MeasurementUnit _$imperial = const MeasurementUnit._('imperial');

MeasurementUnit _$valueOf(String name) {
  switch (name) {
    case 'metric':
      return _$metric;
    case 'imperial':
      return _$imperial;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<MeasurementUnit> _$values =
    new BuiltSet<MeasurementUnit>(const <MeasurementUnit>[
  _$metric,
  _$imperial,
]);

Serializer<LatLng> _$latLngSerializer = new _$LatLngSerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();
Serializer<LocationWeather> _$locationWeatherSerializer =
    new _$LocationWeatherSerializer();
Serializer<WeatherPoint> _$weatherPointSerializer =
    new _$WeatherPointSerializer();
Serializer<WeatherSource> _$weatherSourceSerializer =
    new _$WeatherSourceSerializer();

class _$LatLngSerializer implements StructuredSerializer<LatLng> {
  @override
  final Iterable<Type> types = const [LatLng, _$LatLng];
  @override
  final String wireName = 'LatLng';

  @override
  Iterable<Object> serialize(Serializers serializers, LatLng object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(double)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LatLng deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LatLngBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'woeid',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'location_type',
      serializers.serialize(object.locationType,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'woeid':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location_type':
          result.locationType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationWeatherSerializer
    implements StructuredSerializer<LocationWeather> {
  @override
  final Iterable<Type> types = const [LocationWeather, _$LocationWeather];
  @override
  final String wireName = 'LocationWeather';

  @override
  Iterable<Object> serialize(Serializers serializers, LocationWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'woeid',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'location_type',
      serializers.serialize(object.locationType,
          specifiedType: const FullType(String)),
      'consolidated_weather',
      serializers.serialize(object.weather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(WeatherPoint)])),
      'time',
      serializers.serialize(object.time,
          specifiedType: const FullType(DateTime)),
      'sun_rise',
      serializers.serialize(object.sunRise,
          specifiedType: const FullType(DateTime)),
      'sun_set',
      serializers.serialize(object.sunSet,
          specifiedType: const FullType(DateTime)),
      'timezone_name',
      serializers.serialize(object.timezoneName,
          specifiedType: const FullType(String)),
      'timezone',
      serializers.serialize(object.timezone,
          specifiedType: const FullType(String)),
      'parent',
      serializers.serialize(object.parent,
          specifiedType: const FullType(Location)),
      'sources',
      serializers.serialize(object.sources,
          specifiedType:
              const FullType(BuiltList, const [const FullType(WeatherSource)])),
    ];

    return result;
  }

  @override
  LocationWeather deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'woeid':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location_type':
          result.locationType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'consolidated_weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherPoint)]))
              as BuiltList<Object>);
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'sun_rise':
          result.sunRise = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'sun_set':
          result.sunSet = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'timezone_name':
          result.timezoneName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parent':
          result.parent.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location)) as Location);
          break;
        case 'sources':
          result.sources.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherSource)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherPointSerializer implements StructuredSerializer<WeatherPoint> {
  @override
  final Iterable<Type> types = const [WeatherPoint, _$WeatherPoint];
  @override
  final String wireName = 'WeatherPoint';

  @override
  Iterable<Object> serialize(Serializers serializers, WeatherPoint object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'weather_state_name',
      serializers.serialize(object.weatherStateName,
          specifiedType: const FullType(String)),
      'weather_state_abbr',
      serializers.serialize(object.weatherStateAbbr,
          specifiedType: const FullType(String)),
      'wind_direction_compass',
      serializers.serialize(object.windDirectionCompass,
          specifiedType: const FullType(String)),
      'created',
      serializers.serialize(object.created,
          specifiedType: const FullType(DateTime)),
      'applicable_date',
      serializers.serialize(object.applicableDate,
          specifiedType: const FullType(DateTime)),
      'min_temp',
      serializers.serialize(object.minTemp,
          specifiedType: const FullType(double)),
      'max_temp',
      serializers.serialize(object.maxTemp,
          specifiedType: const FullType(double)),
      'the_temp',
      serializers.serialize(object.theTemp,
          specifiedType: const FullType(double)),
      'wind_speed',
      serializers.serialize(object.windSpeed,
          specifiedType: const FullType(double)),
      'wind_direction',
      serializers.serialize(object.windDirection,
          specifiedType: const FullType(double)),
      'air_pressure',
      serializers.serialize(object.airPressure,
          specifiedType: const FullType(num)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(int)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(double)),
      'predictability',
      serializers.serialize(object.predictability,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  WeatherPoint deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherPointBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'weather_state_name':
          result.weatherStateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'weather_state_abbr':
          result.weatherStateAbbr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wind_direction_compass':
          result.windDirectionCompass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'applicable_date':
          result.applicableDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'min_temp':
          result.minTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'max_temp':
          result.maxTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'the_temp':
          result.theTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'wind_speed':
          result.windSpeed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'wind_direction':
          result.windDirection = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'air_pressure':
          result.airPressure = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'predictability':
          result.predictability = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherSourceSerializer implements StructuredSerializer<WeatherSource> {
  @override
  final Iterable<Type> types = const [WeatherSource, _$WeatherSource];
  @override
  final String wireName = 'WeatherSource';

  @override
  Iterable<Object> serialize(Serializers serializers, WeatherSource object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'crawl_rate',
      serializers.serialize(object.crawlRate,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  WeatherSource deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherSourceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'crawl_rate':
          result.crawlRate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltMap<int, LocationWeather> weatherData;
  @override
  final BuiltMap<int, Location> locations;
  @override
  final BuiltSet<String> pendingActions;
  @override
  final BuiltList<Location> searchResult;
  @override
  final MeasurementUnit unit;
  @override
  final LatLng location;
  @override
  final int selectedLocationId;
  @override
  final String query;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.weatherData,
      this.locations,
      this.pendingActions,
      this.searchResult,
      this.unit,
      this.location,
      this.selectedLocationId,
      this.query})
      : super._() {
    if (weatherData == null) {
      throw new BuiltValueNullFieldError('AppState', 'weatherData');
    }
    if (locations == null) {
      throw new BuiltValueNullFieldError('AppState', 'locations');
    }
    if (pendingActions == null) {
      throw new BuiltValueNullFieldError('AppState', 'pendingActions');
    }
    if (searchResult == null) {
      throw new BuiltValueNullFieldError('AppState', 'searchResult');
    }
    if (unit == null) {
      throw new BuiltValueNullFieldError('AppState', 'unit');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        weatherData == other.weatherData &&
        locations == other.locations &&
        pendingActions == other.pendingActions &&
        searchResult == other.searchResult &&
        unit == other.unit &&
        location == other.location &&
        selectedLocationId == other.selectedLocationId &&
        query == other.query;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, weatherData.hashCode),
                                locations.hashCode),
                            pendingActions.hashCode),
                        searchResult.hashCode),
                    unit.hashCode),
                location.hashCode),
            selectedLocationId.hashCode),
        query.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('weatherData', weatherData)
          ..add('locations', locations)
          ..add('pendingActions', pendingActions)
          ..add('searchResult', searchResult)
          ..add('unit', unit)
          ..add('location', location)
          ..add('selectedLocationId', selectedLocationId)
          ..add('query', query))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  MapBuilder<int, LocationWeather> _weatherData;
  MapBuilder<int, LocationWeather> get weatherData =>
      _$this._weatherData ??= new MapBuilder<int, LocationWeather>();
  set weatherData(MapBuilder<int, LocationWeather> weatherData) =>
      _$this._weatherData = weatherData;

  MapBuilder<int, Location> _locations;
  MapBuilder<int, Location> get locations =>
      _$this._locations ??= new MapBuilder<int, Location>();
  set locations(MapBuilder<int, Location> locations) =>
      _$this._locations = locations;

  SetBuilder<String> _pendingActions;
  SetBuilder<String> get pendingActions =>
      _$this._pendingActions ??= new SetBuilder<String>();
  set pendingActions(SetBuilder<String> pendingActions) =>
      _$this._pendingActions = pendingActions;

  ListBuilder<Location> _searchResult;
  ListBuilder<Location> get searchResult =>
      _$this._searchResult ??= new ListBuilder<Location>();
  set searchResult(ListBuilder<Location> searchResult) =>
      _$this._searchResult = searchResult;

  MeasurementUnit _unit;
  MeasurementUnit get unit => _$this._unit;
  set unit(MeasurementUnit unit) => _$this._unit = unit;

  LatLngBuilder _location;
  LatLngBuilder get location => _$this._location ??= new LatLngBuilder();
  set location(LatLngBuilder location) => _$this._location = location;

  int _selectedLocationId;
  int get selectedLocationId => _$this._selectedLocationId;
  set selectedLocationId(int selectedLocationId) =>
      _$this._selectedLocationId = selectedLocationId;

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _weatherData = _$v.weatherData?.toBuilder();
      _locations = _$v.locations?.toBuilder();
      _pendingActions = _$v.pendingActions?.toBuilder();
      _searchResult = _$v.searchResult?.toBuilder();
      _unit = _$v.unit;
      _location = _$v.location?.toBuilder();
      _selectedLocationId = _$v.selectedLocationId;
      _query = _$v.query;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              weatherData: weatherData.build(),
              locations: locations.build(),
              pendingActions: pendingActions.build(),
              searchResult: searchResult.build(),
              unit: unit,
              location: _location?.build(),
              selectedLocationId: selectedLocationId,
              query: query);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'weatherData';
        weatherData.build();
        _$failedField = 'locations';
        locations.build();
        _$failedField = 'pendingActions';
        pendingActions.build();
        _$failedField = 'searchResult';
        searchResult.build();

        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LatLng extends LatLng {
  @override
  final double lat;
  @override
  final double lon;
  @override
  final String city;

  factory _$LatLng([void Function(LatLngBuilder) updates]) =>
      (new LatLngBuilder()..update(updates)).build();

  _$LatLng._({this.lat, this.lon, this.city}) : super._() {
    if (lat == null) {
      throw new BuiltValueNullFieldError('LatLng', 'lat');
    }
    if (lon == null) {
      throw new BuiltValueNullFieldError('LatLng', 'lon');
    }
    if (city == null) {
      throw new BuiltValueNullFieldError('LatLng', 'city');
    }
  }

  @override
  LatLng rebuild(void Function(LatLngBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LatLngBuilder toBuilder() => new LatLngBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LatLng &&
        lat == other.lat &&
        lon == other.lon &&
        city == other.city;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, lat.hashCode), lon.hashCode), city.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LatLng')
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('city', city))
        .toString();
  }
}

class LatLngBuilder implements Builder<LatLng, LatLngBuilder> {
  _$LatLng _$v;

  double _lat;
  double get lat => _$this._lat;
  set lat(double lat) => _$this._lat = lat;

  double _lon;
  double get lon => _$this._lon;
  set lon(double lon) => _$this._lon = lon;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  LatLngBuilder();

  LatLngBuilder get _$this {
    if (_$v != null) {
      _lat = _$v.lat;
      _lon = _$v.lon;
      _city = _$v.city;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LatLng other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LatLng;
  }

  @override
  void update(void Function(LatLngBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LatLng build() {
    final _$result = _$v ?? new _$LatLng._(lat: lat, lon: lon, city: city);
    replace(_$result);
    return _$result;
  }
}

class _$Location extends Location {
  @override
  final int id;
  @override
  final String title;
  @override
  final String locationType;

  factory _$Location([void Function(LocationBuilder) updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._({this.id, this.title, this.locationType}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Location', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Location', 'title');
    }
    if (locationType == null) {
      throw new BuiltValueNullFieldError('Location', 'locationType');
    }
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        id == other.id &&
        title == other.title &&
        locationType == other.locationType;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), title.hashCode), locationType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('id', id)
          ..add('title', title)
          ..add('locationType', locationType))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _locationType;
  String get locationType => _$this._locationType;
  set locationType(String locationType) => _$this._locationType = locationType;

  LocationBuilder();

  LocationBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _locationType = _$v.locationType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    final _$result = _$v ??
        new _$Location._(id: id, title: title, locationType: locationType);
    replace(_$result);
    return _$result;
  }
}

class _$LocationWeather extends LocationWeather {
  @override
  final int id;
  @override
  final String title;
  @override
  final String locationType;
  @override
  final BuiltList<WeatherPoint> weather;
  @override
  final DateTime time;
  @override
  final DateTime sunRise;
  @override
  final DateTime sunSet;
  @override
  final String timezoneName;
  @override
  final String timezone;
  @override
  final Location parent;
  @override
  final BuiltList<WeatherSource> sources;
  List<WeatherPoint> __futureWeather;

  factory _$LocationWeather([void Function(LocationWeatherBuilder) updates]) =>
      (new LocationWeatherBuilder()..update(updates)).build();

  _$LocationWeather._(
      {this.id,
      this.title,
      this.locationType,
      this.weather,
      this.time,
      this.sunRise,
      this.sunSet,
      this.timezoneName,
      this.timezone,
      this.parent,
      this.sources})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('LocationWeather', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('LocationWeather', 'title');
    }
    if (locationType == null) {
      throw new BuiltValueNullFieldError('LocationWeather', 'locationType');
    }
    if (weather == null) {
      throw new BuiltValueNullFieldError('LocationWeather', 'weather');
    }
    if (time == null) {
      throw new BuiltValueNullFieldError('LocationWeather', 'time');
    }
    if (sunRise == null) {
      throw new BuiltValueNullFieldError('LocationWeather', 'sunRise');
    }
    if (sunSet == null) {
      throw new BuiltValueNullFieldError('LocationWeather', 'sunSet');
    }
    if (timezoneName == null) {
      throw new BuiltValueNullFieldError('LocationWeather', 'timezoneName');
    }
    if (timezone == null) {
      throw new BuiltValueNullFieldError('LocationWeather', 'timezone');
    }
    if (parent == null) {
      throw new BuiltValueNullFieldError('LocationWeather', 'parent');
    }
    if (sources == null) {
      throw new BuiltValueNullFieldError('LocationWeather', 'sources');
    }
  }

  @override
  List<WeatherPoint> get futureWeather =>
      __futureWeather ??= super.futureWeather;

  @override
  LocationWeather rebuild(void Function(LocationWeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationWeatherBuilder toBuilder() =>
      new LocationWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationWeather &&
        id == other.id &&
        title == other.title &&
        locationType == other.locationType &&
        weather == other.weather &&
        time == other.time &&
        sunRise == other.sunRise &&
        sunSet == other.sunSet &&
        timezoneName == other.timezoneName &&
        timezone == other.timezone &&
        parent == other.parent &&
        sources == other.sources;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            title.hashCode),
                                        locationType.hashCode),
                                    weather.hashCode),
                                time.hashCode),
                            sunRise.hashCode),
                        sunSet.hashCode),
                    timezoneName.hashCode),
                timezone.hashCode),
            parent.hashCode),
        sources.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationWeather')
          ..add('id', id)
          ..add('title', title)
          ..add('locationType', locationType)
          ..add('weather', weather)
          ..add('time', time)
          ..add('sunRise', sunRise)
          ..add('sunSet', sunSet)
          ..add('timezoneName', timezoneName)
          ..add('timezone', timezone)
          ..add('parent', parent)
          ..add('sources', sources))
        .toString();
  }
}

class LocationWeatherBuilder
    implements Builder<LocationWeather, LocationWeatherBuilder> {
  _$LocationWeather _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _locationType;
  String get locationType => _$this._locationType;
  set locationType(String locationType) => _$this._locationType = locationType;

  ListBuilder<WeatherPoint> _weather;
  ListBuilder<WeatherPoint> get weather =>
      _$this._weather ??= new ListBuilder<WeatherPoint>();
  set weather(ListBuilder<WeatherPoint> weather) => _$this._weather = weather;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  DateTime _sunRise;
  DateTime get sunRise => _$this._sunRise;
  set sunRise(DateTime sunRise) => _$this._sunRise = sunRise;

  DateTime _sunSet;
  DateTime get sunSet => _$this._sunSet;
  set sunSet(DateTime sunSet) => _$this._sunSet = sunSet;

  String _timezoneName;
  String get timezoneName => _$this._timezoneName;
  set timezoneName(String timezoneName) => _$this._timezoneName = timezoneName;

  String _timezone;
  String get timezone => _$this._timezone;
  set timezone(String timezone) => _$this._timezone = timezone;

  LocationBuilder _parent;
  LocationBuilder get parent => _$this._parent ??= new LocationBuilder();
  set parent(LocationBuilder parent) => _$this._parent = parent;

  ListBuilder<WeatherSource> _sources;
  ListBuilder<WeatherSource> get sources =>
      _$this._sources ??= new ListBuilder<WeatherSource>();
  set sources(ListBuilder<WeatherSource> sources) => _$this._sources = sources;

  LocationWeatherBuilder();

  LocationWeatherBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _locationType = _$v.locationType;
      _weather = _$v.weather?.toBuilder();
      _time = _$v.time;
      _sunRise = _$v.sunRise;
      _sunSet = _$v.sunSet;
      _timezoneName = _$v.timezoneName;
      _timezone = _$v.timezone;
      _parent = _$v.parent?.toBuilder();
      _sources = _$v.sources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationWeather other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LocationWeather;
  }

  @override
  void update(void Function(LocationWeatherBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationWeather build() {
    _$LocationWeather _$result;
    try {
      _$result = _$v ??
          new _$LocationWeather._(
              id: id,
              title: title,
              locationType: locationType,
              weather: weather.build(),
              time: time,
              sunRise: sunRise,
              sunSet: sunSet,
              timezoneName: timezoneName,
              timezone: timezone,
              parent: parent.build(),
              sources: sources.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'weather';
        weather.build();

        _$failedField = 'parent';
        parent.build();
        _$failedField = 'sources';
        sources.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LocationWeather', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$WeatherPoint extends WeatherPoint {
  @override
  final int id;
  @override
  final String weatherStateName;
  @override
  final String weatherStateAbbr;
  @override
  final String windDirectionCompass;
  @override
  final DateTime created;
  @override
  final DateTime applicableDate;
  @override
  final double minTemp;
  @override
  final double maxTemp;
  @override
  final double theTemp;
  @override
  final double windSpeed;
  @override
  final double windDirection;
  @override
  final num airPressure;
  @override
  final int humidity;
  @override
  final double visibility;
  @override
  final int predictability;
  double __minTempFahrenheit;
  double __maxTempFahrenheit;
  double __theTempFahrenheit;

  factory _$WeatherPoint([void Function(WeatherPointBuilder) updates]) =>
      (new WeatherPointBuilder()..update(updates)).build();

  _$WeatherPoint._(
      {this.id,
      this.weatherStateName,
      this.weatherStateAbbr,
      this.windDirectionCompass,
      this.created,
      this.applicableDate,
      this.minTemp,
      this.maxTemp,
      this.theTemp,
      this.windSpeed,
      this.windDirection,
      this.airPressure,
      this.humidity,
      this.visibility,
      this.predictability})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'id');
    }
    if (weatherStateName == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'weatherStateName');
    }
    if (weatherStateAbbr == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'weatherStateAbbr');
    }
    if (windDirectionCompass == null) {
      throw new BuiltValueNullFieldError(
          'WeatherPoint', 'windDirectionCompass');
    }
    if (created == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'created');
    }
    if (applicableDate == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'applicableDate');
    }
    if (minTemp == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'minTemp');
    }
    if (maxTemp == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'maxTemp');
    }
    if (theTemp == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'theTemp');
    }
    if (windSpeed == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'windSpeed');
    }
    if (windDirection == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'windDirection');
    }
    if (airPressure == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'airPressure');
    }
    if (humidity == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'humidity');
    }
    if (visibility == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'visibility');
    }
    if (predictability == null) {
      throw new BuiltValueNullFieldError('WeatherPoint', 'predictability');
    }
  }

  @override
  double get minTempFahrenheit =>
      __minTempFahrenheit ??= super.minTempFahrenheit;

  @override
  double get maxTempFahrenheit =>
      __maxTempFahrenheit ??= super.maxTempFahrenheit;

  @override
  double get theTempFahrenheit =>
      __theTempFahrenheit ??= super.theTempFahrenheit;

  @override
  WeatherPoint rebuild(void Function(WeatherPointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherPointBuilder toBuilder() => new WeatherPointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherPoint &&
        id == other.id &&
        weatherStateName == other.weatherStateName &&
        weatherStateAbbr == other.weatherStateAbbr &&
        windDirectionCompass == other.windDirectionCompass &&
        created == other.created &&
        applicableDate == other.applicableDate &&
        minTemp == other.minTemp &&
        maxTemp == other.maxTemp &&
        theTemp == other.theTemp &&
        windSpeed == other.windSpeed &&
        windDirection == other.windDirection &&
        airPressure == other.airPressure &&
        humidity == other.humidity &&
        visibility == other.visibility &&
        predictability == other.predictability;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0, id.hashCode),
                                                            weatherStateName
                                                                .hashCode),
                                                        weatherStateAbbr
                                                            .hashCode),
                                                    windDirectionCompass
                                                        .hashCode),
                                                created.hashCode),
                                            applicableDate.hashCode),
                                        minTemp.hashCode),
                                    maxTemp.hashCode),
                                theTemp.hashCode),
                            windSpeed.hashCode),
                        windDirection.hashCode),
                    airPressure.hashCode),
                humidity.hashCode),
            visibility.hashCode),
        predictability.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherPoint')
          ..add('id', id)
          ..add('weatherStateName', weatherStateName)
          ..add('weatherStateAbbr', weatherStateAbbr)
          ..add('windDirectionCompass', windDirectionCompass)
          ..add('created', created)
          ..add('applicableDate', applicableDate)
          ..add('minTemp', minTemp)
          ..add('maxTemp', maxTemp)
          ..add('theTemp', theTemp)
          ..add('windSpeed', windSpeed)
          ..add('windDirection', windDirection)
          ..add('airPressure', airPressure)
          ..add('humidity', humidity)
          ..add('visibility', visibility)
          ..add('predictability', predictability))
        .toString();
  }
}

class WeatherPointBuilder
    implements Builder<WeatherPoint, WeatherPointBuilder> {
  _$WeatherPoint _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _weatherStateName;
  String get weatherStateName => _$this._weatherStateName;
  set weatherStateName(String weatherStateName) =>
      _$this._weatherStateName = weatherStateName;

  String _weatherStateAbbr;
  String get weatherStateAbbr => _$this._weatherStateAbbr;
  set weatherStateAbbr(String weatherStateAbbr) =>
      _$this._weatherStateAbbr = weatherStateAbbr;

  String _windDirectionCompass;
  String get windDirectionCompass => _$this._windDirectionCompass;
  set windDirectionCompass(String windDirectionCompass) =>
      _$this._windDirectionCompass = windDirectionCompass;

  DateTime _created;
  DateTime get created => _$this._created;
  set created(DateTime created) => _$this._created = created;

  DateTime _applicableDate;
  DateTime get applicableDate => _$this._applicableDate;
  set applicableDate(DateTime applicableDate) =>
      _$this._applicableDate = applicableDate;

  double _minTemp;
  double get minTemp => _$this._minTemp;
  set minTemp(double minTemp) => _$this._minTemp = minTemp;

  double _maxTemp;
  double get maxTemp => _$this._maxTemp;
  set maxTemp(double maxTemp) => _$this._maxTemp = maxTemp;

  double _theTemp;
  double get theTemp => _$this._theTemp;
  set theTemp(double theTemp) => _$this._theTemp = theTemp;

  double _windSpeed;
  double get windSpeed => _$this._windSpeed;
  set windSpeed(double windSpeed) => _$this._windSpeed = windSpeed;

  double _windDirection;
  double get windDirection => _$this._windDirection;
  set windDirection(double windDirection) =>
      _$this._windDirection = windDirection;

  num _airPressure;
  num get airPressure => _$this._airPressure;
  set airPressure(num airPressure) => _$this._airPressure = airPressure;

  int _humidity;
  int get humidity => _$this._humidity;
  set humidity(int humidity) => _$this._humidity = humidity;

  double _visibility;
  double get visibility => _$this._visibility;
  set visibility(double visibility) => _$this._visibility = visibility;

  int _predictability;
  int get predictability => _$this._predictability;
  set predictability(int predictability) =>
      _$this._predictability = predictability;

  WeatherPointBuilder();

  WeatherPointBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _weatherStateName = _$v.weatherStateName;
      _weatherStateAbbr = _$v.weatherStateAbbr;
      _windDirectionCompass = _$v.windDirectionCompass;
      _created = _$v.created;
      _applicableDate = _$v.applicableDate;
      _minTemp = _$v.minTemp;
      _maxTemp = _$v.maxTemp;
      _theTemp = _$v.theTemp;
      _windSpeed = _$v.windSpeed;
      _windDirection = _$v.windDirection;
      _airPressure = _$v.airPressure;
      _humidity = _$v.humidity;
      _visibility = _$v.visibility;
      _predictability = _$v.predictability;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherPoint other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WeatherPoint;
  }

  @override
  void update(void Function(WeatherPointBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherPoint build() {
    final _$result = _$v ??
        new _$WeatherPoint._(
            id: id,
            weatherStateName: weatherStateName,
            weatherStateAbbr: weatherStateAbbr,
            windDirectionCompass: windDirectionCompass,
            created: created,
            applicableDate: applicableDate,
            minTemp: minTemp,
            maxTemp: maxTemp,
            theTemp: theTemp,
            windSpeed: windSpeed,
            windDirection: windDirection,
            airPressure: airPressure,
            humidity: humidity,
            visibility: visibility,
            predictability: predictability);
    replace(_$result);
    return _$result;
  }
}

class _$WeatherSource extends WeatherSource {
  @override
  final String title;
  @override
  final String slug;
  @override
  final String url;
  @override
  final int crawlRate;

  factory _$WeatherSource([void Function(WeatherSourceBuilder) updates]) =>
      (new WeatherSourceBuilder()..update(updates)).build();

  _$WeatherSource._({this.title, this.slug, this.url, this.crawlRate})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('WeatherSource', 'title');
    }
    if (slug == null) {
      throw new BuiltValueNullFieldError('WeatherSource', 'slug');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('WeatherSource', 'url');
    }
    if (crawlRate == null) {
      throw new BuiltValueNullFieldError('WeatherSource', 'crawlRate');
    }
  }

  @override
  WeatherSource rebuild(void Function(WeatherSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherSourceBuilder toBuilder() => new WeatherSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherSource &&
        title == other.title &&
        slug == other.slug &&
        url == other.url &&
        crawlRate == other.crawlRate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), slug.hashCode), url.hashCode),
        crawlRate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherSource')
          ..add('title', title)
          ..add('slug', slug)
          ..add('url', url)
          ..add('crawlRate', crawlRate))
        .toString();
  }
}

class WeatherSourceBuilder
    implements Builder<WeatherSource, WeatherSourceBuilder> {
  _$WeatherSource _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _crawlRate;
  int get crawlRate => _$this._crawlRate;
  set crawlRate(int crawlRate) => _$this._crawlRate = crawlRate;

  WeatherSourceBuilder();

  WeatherSourceBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _slug = _$v.slug;
      _url = _$v.url;
      _crawlRate = _$v.crawlRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherSource other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WeatherSource;
  }

  @override
  void update(void Function(WeatherSourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherSource build() {
    final _$result = _$v ??
        new _$WeatherSource._(
            title: title, slug: slug, url: url, crawlRate: crawlRate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
