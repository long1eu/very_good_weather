// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GetLocationTearOff {
  const _$GetLocationTearOff();

// ignore: unused_element
  GetLocation$ call() {
    return const GetLocation$();
  }

// ignore: unused_element
  GetLocationSuccessful successful(LatLng location) {
    return GetLocationSuccessful(
      location,
    );
  }

// ignore: unused_element
  GetLocationError error(Object error) {
    return GetLocationError(
      error,
    );
  }
}

// ignore: unused_element
const $GetLocation = _$GetLocationTearOff();

mixin _$GetLocation {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(LatLng location),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(LatLng location),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetLocation$ value), {
    @required Result successful(GetLocationSuccessful value),
    @required Result error(GetLocationError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetLocation$ value), {
    Result successful(GetLocationSuccessful value),
    Result error(GetLocationError value),
    @required Result orElse(),
  });
}

abstract class $GetLocationCopyWith<$Res> {
  factory $GetLocationCopyWith(
          GetLocation value, $Res Function(GetLocation) then) =
      _$GetLocationCopyWithImpl<$Res>;
}

class _$GetLocationCopyWithImpl<$Res> implements $GetLocationCopyWith<$Res> {
  _$GetLocationCopyWithImpl(this._value, this._then);

  final GetLocation _value;
  // ignore: unused_field
  final $Res Function(GetLocation) _then;
}

abstract class $GetLocation$CopyWith<$Res> {
  factory $GetLocation$CopyWith(
          GetLocation$ value, $Res Function(GetLocation$) then) =
      _$GetLocation$CopyWithImpl<$Res>;
}

class _$GetLocation$CopyWithImpl<$Res> extends _$GetLocationCopyWithImpl<$Res>
    implements $GetLocation$CopyWith<$Res> {
  _$GetLocation$CopyWithImpl(
      GetLocation$ _value, $Res Function(GetLocation$) _then)
      : super(_value, (v) => _then(v as GetLocation$));

  @override
  GetLocation$ get _value => super._value as GetLocation$;
}

class _$GetLocation$ implements GetLocation$ {
  const _$GetLocation$();

  @override
  String toString() {
    return 'GetLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetLocation$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(LatLng location),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(LatLng location),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetLocation$ value), {
    @required Result successful(GetLocationSuccessful value),
    @required Result error(GetLocationError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetLocation$ value), {
    Result successful(GetLocationSuccessful value),
    Result error(GetLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetLocation$ implements GetLocation {
  const factory GetLocation$() = _$GetLocation$;
}

abstract class $GetLocationSuccessfulCopyWith<$Res> {
  factory $GetLocationSuccessfulCopyWith(GetLocationSuccessful value,
          $Res Function(GetLocationSuccessful) then) =
      _$GetLocationSuccessfulCopyWithImpl<$Res>;
  $Res call({LatLng location});
}

class _$GetLocationSuccessfulCopyWithImpl<$Res>
    extends _$GetLocationCopyWithImpl<$Res>
    implements $GetLocationSuccessfulCopyWith<$Res> {
  _$GetLocationSuccessfulCopyWithImpl(
      GetLocationSuccessful _value, $Res Function(GetLocationSuccessful) _then)
      : super(_value, (v) => _then(v as GetLocationSuccessful));

  @override
  GetLocationSuccessful get _value => super._value as GetLocationSuccessful;

  @override
  $Res call({
    Object location = freezed,
  }) {
    return _then(GetLocationSuccessful(
      location == freezed ? _value.location : location as LatLng,
    ));
  }
}

class _$GetLocationSuccessful implements GetLocationSuccessful {
  const _$GetLocationSuccessful(this.location) : assert(location != null);

  @override
  final LatLng location;

  @override
  String toString() {
    return 'GetLocation.successful(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetLocationSuccessful &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @override
  $GetLocationSuccessfulCopyWith<GetLocationSuccessful> get copyWith =>
      _$GetLocationSuccessfulCopyWithImpl<GetLocationSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(LatLng location),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(location);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(LatLng location),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetLocation$ value), {
    @required Result successful(GetLocationSuccessful value),
    @required Result error(GetLocationError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetLocation$ value), {
    Result successful(GetLocationSuccessful value),
    Result error(GetLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetLocationSuccessful implements GetLocation {
  const factory GetLocationSuccessful(LatLng location) =
      _$GetLocationSuccessful;

  LatLng get location;
  $GetLocationSuccessfulCopyWith<GetLocationSuccessful> get copyWith;
}

abstract class $GetLocationErrorCopyWith<$Res> {
  factory $GetLocationErrorCopyWith(
          GetLocationError value, $Res Function(GetLocationError) then) =
      _$GetLocationErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

class _$GetLocationErrorCopyWithImpl<$Res>
    extends _$GetLocationCopyWithImpl<$Res>
    implements $GetLocationErrorCopyWith<$Res> {
  _$GetLocationErrorCopyWithImpl(
      GetLocationError _value, $Res Function(GetLocationError) _then)
      : super(_value, (v) => _then(v as GetLocationError));

  @override
  GetLocationError get _value => super._value as GetLocationError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetLocationError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)
class _$GetLocationError implements GetLocationError {
  const _$GetLocationError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetLocation.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetLocationError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetLocationErrorCopyWith<GetLocationError> get copyWith =>
      _$GetLocationErrorCopyWithImpl<GetLocationError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(LatLng location),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(LatLng location),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetLocation$ value), {
    @required Result successful(GetLocationSuccessful value),
    @required Result error(GetLocationError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetLocation$ value), {
    Result successful(GetLocationSuccessful value),
    Result error(GetLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetLocationError implements GetLocation, ErrorAction {
  const factory GetLocationError(Object error) = _$GetLocationError;

  Object get error;
  $GetLocationErrorCopyWith<GetLocationError> get copyWith;
}

class _$GetWeatherDataTearOff {
  const _$GetWeatherDataTearOff();

// ignore: unused_element
  GetWeatherData$ start(int locationId, String pendingId) {
    return GetWeatherData$(
      locationId,
      pendingId,
    );
  }

// ignore: unused_element
  GetWeatherDataSuccessful successful(
      LocationWeather weather, String pendingId) {
    return GetWeatherDataSuccessful(
      weather,
      pendingId,
    );
  }

// ignore: unused_element
  GetWeatherDataError error(Object error, String pendingId) {
    return GetWeatherDataError(
      error,
      pendingId,
    );
  }
}

// ignore: unused_element
const $GetWeatherData = _$GetWeatherDataTearOff();

mixin _$GetWeatherData {
  String get pendingId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int locationId, String pendingId),
    @required Result successful(LocationWeather weather, String pendingId),
    @required Result error(Object error, String pendingId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int locationId, String pendingId),
    Result successful(LocationWeather weather, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetWeatherData$ value),
    @required Result successful(GetWeatherDataSuccessful value),
    @required Result error(GetWeatherDataError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetWeatherData$ value),
    Result successful(GetWeatherDataSuccessful value),
    Result error(GetWeatherDataError value),
    @required Result orElse(),
  });

  $GetWeatherDataCopyWith<GetWeatherData> get copyWith;
}

abstract class $GetWeatherDataCopyWith<$Res> {
  factory $GetWeatherDataCopyWith(
          GetWeatherData value, $Res Function(GetWeatherData) then) =
      _$GetWeatherDataCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

class _$GetWeatherDataCopyWithImpl<$Res>
    implements $GetWeatherDataCopyWith<$Res> {
  _$GetWeatherDataCopyWithImpl(this._value, this._then);

  final GetWeatherData _value;
  // ignore: unused_field
  final $Res Function(GetWeatherData) _then;

  @override
  $Res call({
    Object pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

abstract class $GetWeatherData$CopyWith<$Res>
    implements $GetWeatherDataCopyWith<$Res> {
  factory $GetWeatherData$CopyWith(
          GetWeatherData$ value, $Res Function(GetWeatherData$) then) =
      _$GetWeatherData$CopyWithImpl<$Res>;
  @override
  $Res call({int locationId, String pendingId});
}

class _$GetWeatherData$CopyWithImpl<$Res>
    extends _$GetWeatherDataCopyWithImpl<$Res>
    implements $GetWeatherData$CopyWith<$Res> {
  _$GetWeatherData$CopyWithImpl(
      GetWeatherData$ _value, $Res Function(GetWeatherData$) _then)
      : super(_value, (v) => _then(v as GetWeatherData$));

  @override
  GetWeatherData$ get _value => super._value as GetWeatherData$;

  @override
  $Res call({
    Object locationId = freezed,
    Object pendingId = freezed,
  }) {
    return _then(GetWeatherData$(
      locationId == freezed ? _value.locationId : locationId as int,
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionStart)
class _$GetWeatherData$ implements GetWeatherData$ {
  const _$GetWeatherData$(this.locationId, this.pendingId)
      : assert(locationId != null),
        assert(pendingId != null);

  @override
  final int locationId;
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetWeatherData.start(locationId: $locationId, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherData$ &&
            (identical(other.locationId, locationId) ||
                const DeepCollectionEquality()
                    .equals(other.locationId, locationId)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationId) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $GetWeatherData$CopyWith<GetWeatherData$> get copyWith =>
      _$GetWeatherData$CopyWithImpl<GetWeatherData$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int locationId, String pendingId),
    @required Result successful(LocationWeather weather, String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(locationId, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int locationId, String pendingId),
    Result successful(LocationWeather weather, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(locationId, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetWeatherData$ value),
    @required Result successful(GetWeatherDataSuccessful value),
    @required Result error(GetWeatherDataError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetWeatherData$ value),
    Result successful(GetWeatherDataSuccessful value),
    Result error(GetWeatherDataError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetWeatherData$ implements GetWeatherData, ActionStart {
  const factory GetWeatherData$(int locationId, String pendingId) =
      _$GetWeatherData$;

  int get locationId;
  @override
  String get pendingId;
  @override
  $GetWeatherData$CopyWith<GetWeatherData$> get copyWith;
}

abstract class $GetWeatherDataSuccessfulCopyWith<$Res>
    implements $GetWeatherDataCopyWith<$Res> {
  factory $GetWeatherDataSuccessfulCopyWith(GetWeatherDataSuccessful value,
          $Res Function(GetWeatherDataSuccessful) then) =
      _$GetWeatherDataSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({LocationWeather weather, String pendingId});
}

class _$GetWeatherDataSuccessfulCopyWithImpl<$Res>
    extends _$GetWeatherDataCopyWithImpl<$Res>
    implements $GetWeatherDataSuccessfulCopyWith<$Res> {
  _$GetWeatherDataSuccessfulCopyWithImpl(GetWeatherDataSuccessful _value,
      $Res Function(GetWeatherDataSuccessful) _then)
      : super(_value, (v) => _then(v as GetWeatherDataSuccessful));

  @override
  GetWeatherDataSuccessful get _value =>
      super._value as GetWeatherDataSuccessful;

  @override
  $Res call({
    Object weather = freezed,
    Object pendingId = freezed,
  }) {
    return _then(GetWeatherDataSuccessful(
      weather == freezed ? _value.weather : weather as LocationWeather,
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)
class _$GetWeatherDataSuccessful implements GetWeatherDataSuccessful {
  const _$GetWeatherDataSuccessful(this.weather, this.pendingId)
      : assert(weather != null),
        assert(pendingId != null);

  @override
  final LocationWeather weather;
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetWeatherData.successful(weather: $weather, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherDataSuccessful &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality()
                    .equals(other.weather, weather)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weather) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $GetWeatherDataSuccessfulCopyWith<GetWeatherDataSuccessful> get copyWith =>
      _$GetWeatherDataSuccessfulCopyWithImpl<GetWeatherDataSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int locationId, String pendingId),
    @required Result successful(LocationWeather weather, String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(weather, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int locationId, String pendingId),
    Result successful(LocationWeather weather, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(weather, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetWeatherData$ value),
    @required Result successful(GetWeatherDataSuccessful value),
    @required Result error(GetWeatherDataError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetWeatherData$ value),
    Result successful(GetWeatherDataSuccessful value),
    Result error(GetWeatherDataError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetWeatherDataSuccessful implements GetWeatherData, ActionDone {
  const factory GetWeatherDataSuccessful(
      LocationWeather weather, String pendingId) = _$GetWeatherDataSuccessful;

  LocationWeather get weather;
  @override
  String get pendingId;
  @override
  $GetWeatherDataSuccessfulCopyWith<GetWeatherDataSuccessful> get copyWith;
}

abstract class $GetWeatherDataErrorCopyWith<$Res>
    implements $GetWeatherDataCopyWith<$Res> {
  factory $GetWeatherDataErrorCopyWith(
          GetWeatherDataError value, $Res Function(GetWeatherDataError) then) =
      _$GetWeatherDataErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, String pendingId});
}

class _$GetWeatherDataErrorCopyWithImpl<$Res>
    extends _$GetWeatherDataCopyWithImpl<$Res>
    implements $GetWeatherDataErrorCopyWith<$Res> {
  _$GetWeatherDataErrorCopyWithImpl(
      GetWeatherDataError _value, $Res Function(GetWeatherDataError) _then)
      : super(_value, (v) => _then(v as GetWeatherDataError));

  @override
  GetWeatherDataError get _value => super._value as GetWeatherDataError;

  @override
  $Res call({
    Object error = freezed,
    Object pendingId = freezed,
  }) {
    return _then(GetWeatherDataError(
      error == freezed ? _value.error : error,
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)
@Implements(ErrorAction)
class _$GetWeatherDataError implements GetWeatherDataError {
  const _$GetWeatherDataError(this.error, this.pendingId)
      : assert(error != null),
        assert(pendingId != null);

  @override
  final Object error;
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetWeatherData.error(error: $error, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherDataError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $GetWeatherDataErrorCopyWith<GetWeatherDataError> get copyWith =>
      _$GetWeatherDataErrorCopyWithImpl<GetWeatherDataError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int locationId, String pendingId),
    @required Result successful(LocationWeather weather, String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int locationId, String pendingId),
    Result successful(LocationWeather weather, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetWeatherData$ value),
    @required Result successful(GetWeatherDataSuccessful value),
    @required Result error(GetWeatherDataError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetWeatherData$ value),
    Result successful(GetWeatherDataSuccessful value),
    Result error(GetWeatherDataError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetWeatherDataError
    implements GetWeatherData, ActionDone, ErrorAction {
  const factory GetWeatherDataError(Object error, String pendingId) =
      _$GetWeatherDataError;

  Object get error;
  @override
  String get pendingId;
  @override
  $GetWeatherDataErrorCopyWith<GetWeatherDataError> get copyWith;
}

class _$InitializeAppTearOff {
  const _$InitializeAppTearOff();

// ignore: unused_element
  InitializeAppStart start(void Function(AppAction) result,
      {String pendingId = _kInitializeAppPendingId}) {
    return InitializeAppStart(
      result,
      pendingId: pendingId,
    );
  }

// ignore: unused_element
  InitializeAppUpdate update(
      {LatLng location,
      Location currentLocation,
      LocationWeather weatherData}) {
    return InitializeAppUpdate(
      location: location,
      currentLocation: currentLocation,
      weatherData: weatherData,
    );
  }

// ignore: unused_element
  InitializeAppSuccessful successful(
      {String pendingId = _kInitializeAppPendingId}) {
    return InitializeAppSuccessful(
      pendingId: pendingId,
    );
  }

// ignore: unused_element
  InitializeAppError error(Object error,
      [String pendingId = _kInitializeAppPendingId]) {
    return InitializeAppError(
      error,
      pendingId,
    );
  }
}

// ignore: unused_element
const $InitializeApp = _$InitializeAppTearOff();

mixin _$InitializeApp {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(void Function(AppAction) result, String pendingId),
    @required
        Result update(LatLng location, Location currentLocation,
            LocationWeather weatherData),
    @required Result successful(String pendingId),
    @required Result error(Object error, String pendingId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(void Function(AppAction) result, String pendingId),
    Result update(
        LatLng location, Location currentLocation, LocationWeather weatherData),
    Result successful(String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(InitializeAppStart value),
    @required Result update(InitializeAppUpdate value),
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(InitializeAppStart value),
    Result update(InitializeAppUpdate value),
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  });
}

abstract class $InitializeAppCopyWith<$Res> {
  factory $InitializeAppCopyWith(
          InitializeApp value, $Res Function(InitializeApp) then) =
      _$InitializeAppCopyWithImpl<$Res>;
}

class _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppCopyWith<$Res> {
  _$InitializeAppCopyWithImpl(this._value, this._then);

  final InitializeApp _value;
  // ignore: unused_field
  final $Res Function(InitializeApp) _then;
}

abstract class $InitializeAppStartCopyWith<$Res> {
  factory $InitializeAppStartCopyWith(
          InitializeAppStart value, $Res Function(InitializeAppStart) then) =
      _$InitializeAppStartCopyWithImpl<$Res>;
  $Res call({void Function(AppAction) result, String pendingId});
}

class _$InitializeAppStartCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppStartCopyWith<$Res> {
  _$InitializeAppStartCopyWithImpl(
      InitializeAppStart _value, $Res Function(InitializeAppStart) _then)
      : super(_value, (v) => _then(v as InitializeAppStart));

  @override
  InitializeAppStart get _value => super._value as InitializeAppStart;

  @override
  $Res call({
    Object result = freezed,
    Object pendingId = freezed,
  }) {
    return _then(InitializeAppStart(
      result == freezed ? _value.result : result as void Function(AppAction),
      pendingId: pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionStart)
class _$InitializeAppStart implements InitializeAppStart {
  const _$InitializeAppStart(this.result,
      {this.pendingId = _kInitializeAppPendingId})
      : assert(result != null),
        assert(pendingId != null);

  @override
  final void Function(AppAction) result;
  @JsonKey(defaultValue: _kInitializeAppPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'InitializeApp.start(result: $result, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppStart &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $InitializeAppStartCopyWith<InitializeAppStart> get copyWith =>
      _$InitializeAppStartCopyWithImpl<InitializeAppStart>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(void Function(AppAction) result, String pendingId),
    @required
        Result update(LatLng location, Location currentLocation,
            LocationWeather weatherData),
    @required Result successful(String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(update != null);
    assert(successful != null);
    assert(error != null);
    return start(result, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(void Function(AppAction) result, String pendingId),
    Result update(
        LatLng location, Location currentLocation, LocationWeather weatherData),
    Result successful(String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(result, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(InitializeAppStart value),
    @required Result update(InitializeAppUpdate value),
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert(start != null);
    assert(update != null);
    assert(successful != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(InitializeAppStart value),
    Result update(InitializeAppUpdate value),
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class InitializeAppStart implements InitializeApp, ActionStart {
  const factory InitializeAppStart(void Function(AppAction) result,
      {String pendingId}) = _$InitializeAppStart;

  void Function(AppAction) get result;
  String get pendingId;
  $InitializeAppStartCopyWith<InitializeAppStart> get copyWith;
}

abstract class $InitializeAppUpdateCopyWith<$Res> {
  factory $InitializeAppUpdateCopyWith(
          InitializeAppUpdate value, $Res Function(InitializeAppUpdate) then) =
      _$InitializeAppUpdateCopyWithImpl<$Res>;
  $Res call(
      {LatLng location, Location currentLocation, LocationWeather weatherData});
}

class _$InitializeAppUpdateCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppUpdateCopyWith<$Res> {
  _$InitializeAppUpdateCopyWithImpl(
      InitializeAppUpdate _value, $Res Function(InitializeAppUpdate) _then)
      : super(_value, (v) => _then(v as InitializeAppUpdate));

  @override
  InitializeAppUpdate get _value => super._value as InitializeAppUpdate;

  @override
  $Res call({
    Object location = freezed,
    Object currentLocation = freezed,
    Object weatherData = freezed,
  }) {
    return _then(InitializeAppUpdate(
      location: location == freezed ? _value.location : location as LatLng,
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation as Location,
      weatherData: weatherData == freezed
          ? _value.weatherData
          : weatherData as LocationWeather,
    ));
  }
}

class _$InitializeAppUpdate implements InitializeAppUpdate {
  const _$InitializeAppUpdate(
      {this.location, this.currentLocation, this.weatherData});

  @override
  final LatLng location;
  @override
  final Location currentLocation;
  @override
  final LocationWeather weatherData;

  @override
  String toString() {
    return 'InitializeApp.update(location: $location, currentLocation: $currentLocation, weatherData: $weatherData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppUpdate &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.currentLocation, currentLocation) ||
                const DeepCollectionEquality()
                    .equals(other.currentLocation, currentLocation)) &&
            (identical(other.weatherData, weatherData) ||
                const DeepCollectionEquality()
                    .equals(other.weatherData, weatherData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(currentLocation) ^
      const DeepCollectionEquality().hash(weatherData);

  @override
  $InitializeAppUpdateCopyWith<InitializeAppUpdate> get copyWith =>
      _$InitializeAppUpdateCopyWithImpl<InitializeAppUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(void Function(AppAction) result, String pendingId),
    @required
        Result update(LatLng location, Location currentLocation,
            LocationWeather weatherData),
    @required Result successful(String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(update != null);
    assert(successful != null);
    assert(error != null);
    return update(location, currentLocation, weatherData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(void Function(AppAction) result, String pendingId),
    Result update(
        LatLng location, Location currentLocation, LocationWeather weatherData),
    Result successful(String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(location, currentLocation, weatherData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(InitializeAppStart value),
    @required Result update(InitializeAppUpdate value),
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert(start != null);
    assert(update != null);
    assert(successful != null);
    assert(error != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(InitializeAppStart value),
    Result update(InitializeAppUpdate value),
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class InitializeAppUpdate implements InitializeApp {
  const factory InitializeAppUpdate(
      {LatLng location,
      Location currentLocation,
      LocationWeather weatherData}) = _$InitializeAppUpdate;

  LatLng get location;
  Location get currentLocation;
  LocationWeather get weatherData;
  $InitializeAppUpdateCopyWith<InitializeAppUpdate> get copyWith;
}

abstract class $InitializeAppSuccessfulCopyWith<$Res> {
  factory $InitializeAppSuccessfulCopyWith(InitializeAppSuccessful value,
          $Res Function(InitializeAppSuccessful) then) =
      _$InitializeAppSuccessfulCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

class _$InitializeAppSuccessfulCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppSuccessfulCopyWith<$Res> {
  _$InitializeAppSuccessfulCopyWithImpl(InitializeAppSuccessful _value,
      $Res Function(InitializeAppSuccessful) _then)
      : super(_value, (v) => _then(v as InitializeAppSuccessful));

  @override
  InitializeAppSuccessful get _value => super._value as InitializeAppSuccessful;

  @override
  $Res call({
    Object pendingId = freezed,
  }) {
    return _then(InitializeAppSuccessful(
      pendingId: pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)
class _$InitializeAppSuccessful implements InitializeAppSuccessful {
  const _$InitializeAppSuccessful({this.pendingId = _kInitializeAppPendingId})
      : assert(pendingId != null);

  @JsonKey(defaultValue: _kInitializeAppPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'InitializeApp.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppSuccessful &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pendingId);

  @override
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith =>
      _$InitializeAppSuccessfulCopyWithImpl<InitializeAppSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(void Function(AppAction) result, String pendingId),
    @required
        Result update(LatLng location, Location currentLocation,
            LocationWeather weatherData),
    @required Result successful(String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(update != null);
    assert(successful != null);
    assert(error != null);
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(void Function(AppAction) result, String pendingId),
    Result update(
        LatLng location, Location currentLocation, LocationWeather weatherData),
    Result successful(String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(InitializeAppStart value),
    @required Result update(InitializeAppUpdate value),
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert(start != null);
    assert(update != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(InitializeAppStart value),
    Result update(InitializeAppUpdate value),
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeAppSuccessful implements InitializeApp, ActionDone {
  const factory InitializeAppSuccessful({String pendingId}) =
      _$InitializeAppSuccessful;

  String get pendingId;
  $InitializeAppSuccessfulCopyWith<InitializeAppSuccessful> get copyWith;
}

abstract class $InitializeAppErrorCopyWith<$Res> {
  factory $InitializeAppErrorCopyWith(
          InitializeAppError value, $Res Function(InitializeAppError) then) =
      _$InitializeAppErrorCopyWithImpl<$Res>;
  $Res call({Object error, String pendingId});
}

class _$InitializeAppErrorCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res>
    implements $InitializeAppErrorCopyWith<$Res> {
  _$InitializeAppErrorCopyWithImpl(
      InitializeAppError _value, $Res Function(InitializeAppError) _then)
      : super(_value, (v) => _then(v as InitializeAppError));

  @override
  InitializeAppError get _value => super._value as InitializeAppError;

  @override
  $Res call({
    Object error = freezed,
    Object pendingId = freezed,
  }) {
    return _then(InitializeAppError(
      error == freezed ? _value.error : error,
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)
@Implements(ErrorAction)
class _$InitializeAppError implements InitializeAppError {
  const _$InitializeAppError(this.error,
      [this.pendingId = _kInitializeAppPendingId])
      : assert(error != null),
        assert(pendingId != null);

  @override
  final Object error;
  @JsonKey(defaultValue: _kInitializeAppPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'InitializeApp.error(error: $error, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeAppError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith =>
      _$InitializeAppErrorCopyWithImpl<InitializeAppError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(void Function(AppAction) result, String pendingId),
    @required
        Result update(LatLng location, Location currentLocation,
            LocationWeather weatherData),
    @required Result successful(String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(start != null);
    assert(update != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(void Function(AppAction) result, String pendingId),
    Result update(
        LatLng location, Location currentLocation, LocationWeather weatherData),
    Result successful(String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(InitializeAppStart value),
    @required Result update(InitializeAppUpdate value),
    @required Result successful(InitializeAppSuccessful value),
    @required Result error(InitializeAppError value),
  }) {
    assert(start != null);
    assert(update != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(InitializeAppStart value),
    Result update(InitializeAppUpdate value),
    Result successful(InitializeAppSuccessful value),
    Result error(InitializeAppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeAppError
    implements InitializeApp, ActionDone, ErrorAction {
  const factory InitializeAppError(Object error, [String pendingId]) =
      _$InitializeAppError;

  Object get error;
  String get pendingId;
  $InitializeAppErrorCopyWith<InitializeAppError> get copyWith;
}

class _$SearchLocationTearOff {
  const _$SearchLocationTearOff();

// ignore: unused_element
  SearchLocationQuery query(String query,
      {String pendingId = _kSearchLocationPendingId}) {
    return SearchLocationQuery(
      query,
      pendingId: pendingId,
    );
  }

// ignore: unused_element
  SearchLocationSuccessful successful(List<Location> locations,
      [String pendingId = _kSearchLocationPendingId]) {
    return SearchLocationSuccessful(
      locations,
      pendingId,
    );
  }

// ignore: unused_element
  SearchLocationError error(Object error,
      [String pendingId = _kSearchLocationPendingId]) {
    return SearchLocationError(
      error,
      pendingId,
    );
  }
}

// ignore: unused_element
const $SearchLocation = _$SearchLocationTearOff();

mixin _$SearchLocation {
  String get pendingId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result query(String query, String pendingId),
    @required Result successful(List<Location> locations, String pendingId),
    @required Result error(Object error, String pendingId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result query(String query, String pendingId),
    Result successful(List<Location> locations, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result query(SearchLocationQuery value),
    @required Result successful(SearchLocationSuccessful value),
    @required Result error(SearchLocationError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result query(SearchLocationQuery value),
    Result successful(SearchLocationSuccessful value),
    Result error(SearchLocationError value),
    @required Result orElse(),
  });

  $SearchLocationCopyWith<SearchLocation> get copyWith;
}

abstract class $SearchLocationCopyWith<$Res> {
  factory $SearchLocationCopyWith(
          SearchLocation value, $Res Function(SearchLocation) then) =
      _$SearchLocationCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

class _$SearchLocationCopyWithImpl<$Res>
    implements $SearchLocationCopyWith<$Res> {
  _$SearchLocationCopyWithImpl(this._value, this._then);

  final SearchLocation _value;
  // ignore: unused_field
  final $Res Function(SearchLocation) _then;

  @override
  $Res call({
    Object pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

abstract class $SearchLocationQueryCopyWith<$Res>
    implements $SearchLocationCopyWith<$Res> {
  factory $SearchLocationQueryCopyWith(
          SearchLocationQuery value, $Res Function(SearchLocationQuery) then) =
      _$SearchLocationQueryCopyWithImpl<$Res>;
  @override
  $Res call({String query, String pendingId});
}

class _$SearchLocationQueryCopyWithImpl<$Res>
    extends _$SearchLocationCopyWithImpl<$Res>
    implements $SearchLocationQueryCopyWith<$Res> {
  _$SearchLocationQueryCopyWithImpl(
      SearchLocationQuery _value, $Res Function(SearchLocationQuery) _then)
      : super(_value, (v) => _then(v as SearchLocationQuery));

  @override
  SearchLocationQuery get _value => super._value as SearchLocationQuery;

  @override
  $Res call({
    Object query = freezed,
    Object pendingId = freezed,
  }) {
    return _then(SearchLocationQuery(
      query == freezed ? _value.query : query as String,
      pendingId: pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionStart)
class _$SearchLocationQuery implements SearchLocationQuery {
  const _$SearchLocationQuery(this.query,
      {this.pendingId = _kSearchLocationPendingId})
      : assert(query != null),
        assert(pendingId != null);

  @override
  final String query;
  @JsonKey(defaultValue: _kSearchLocationPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SearchLocation.query(query: $query, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchLocationQuery &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $SearchLocationQueryCopyWith<SearchLocationQuery> get copyWith =>
      _$SearchLocationQueryCopyWithImpl<SearchLocationQuery>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result query(String query, String pendingId),
    @required Result successful(List<Location> locations, String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(query != null);
    assert(successful != null);
    assert(error != null);
    return query(this.query, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result query(String query, String pendingId),
    Result successful(List<Location> locations, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (query != null) {
      return query(this.query, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result query(SearchLocationQuery value),
    @required Result successful(SearchLocationSuccessful value),
    @required Result error(SearchLocationError value),
  }) {
    assert(query != null);
    assert(successful != null);
    assert(error != null);
    return query(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result query(SearchLocationQuery value),
    Result successful(SearchLocationSuccessful value),
    Result error(SearchLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (query != null) {
      return query(this);
    }
    return orElse();
  }
}

abstract class SearchLocationQuery implements SearchLocation, ActionStart {
  const factory SearchLocationQuery(String query, {String pendingId}) =
      _$SearchLocationQuery;

  String get query;
  @override
  String get pendingId;
  @override
  $SearchLocationQueryCopyWith<SearchLocationQuery> get copyWith;
}

abstract class $SearchLocationSuccessfulCopyWith<$Res>
    implements $SearchLocationCopyWith<$Res> {
  factory $SearchLocationSuccessfulCopyWith(SearchLocationSuccessful value,
          $Res Function(SearchLocationSuccessful) then) =
      _$SearchLocationSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({List<Location> locations, String pendingId});
}

class _$SearchLocationSuccessfulCopyWithImpl<$Res>
    extends _$SearchLocationCopyWithImpl<$Res>
    implements $SearchLocationSuccessfulCopyWith<$Res> {
  _$SearchLocationSuccessfulCopyWithImpl(SearchLocationSuccessful _value,
      $Res Function(SearchLocationSuccessful) _then)
      : super(_value, (v) => _then(v as SearchLocationSuccessful));

  @override
  SearchLocationSuccessful get _value =>
      super._value as SearchLocationSuccessful;

  @override
  $Res call({
    Object locations = freezed,
    Object pendingId = freezed,
  }) {
    return _then(SearchLocationSuccessful(
      locations == freezed ? _value.locations : locations as List<Location>,
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)
class _$SearchLocationSuccessful implements SearchLocationSuccessful {
  const _$SearchLocationSuccessful(this.locations,
      [this.pendingId = _kSearchLocationPendingId])
      : assert(locations != null),
        assert(pendingId != null);

  @override
  final List<Location> locations;
  @JsonKey(defaultValue: _kSearchLocationPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SearchLocation.successful(locations: $locations, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchLocationSuccessful &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locations) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $SearchLocationSuccessfulCopyWith<SearchLocationSuccessful> get copyWith =>
      _$SearchLocationSuccessfulCopyWithImpl<SearchLocationSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result query(String query, String pendingId),
    @required Result successful(List<Location> locations, String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(query != null);
    assert(successful != null);
    assert(error != null);
    return successful(locations, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result query(String query, String pendingId),
    Result successful(List<Location> locations, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(locations, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result query(SearchLocationQuery value),
    @required Result successful(SearchLocationSuccessful value),
    @required Result error(SearchLocationError value),
  }) {
    assert(query != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result query(SearchLocationQuery value),
    Result successful(SearchLocationSuccessful value),
    Result error(SearchLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SearchLocationSuccessful implements SearchLocation, ActionDone {
  const factory SearchLocationSuccessful(List<Location> locations,
      [String pendingId]) = _$SearchLocationSuccessful;

  List<Location> get locations;
  @override
  String get pendingId;
  @override
  $SearchLocationSuccessfulCopyWith<SearchLocationSuccessful> get copyWith;
}

abstract class $SearchLocationErrorCopyWith<$Res>
    implements $SearchLocationCopyWith<$Res> {
  factory $SearchLocationErrorCopyWith(
          SearchLocationError value, $Res Function(SearchLocationError) then) =
      _$SearchLocationErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, String pendingId});
}

class _$SearchLocationErrorCopyWithImpl<$Res>
    extends _$SearchLocationCopyWithImpl<$Res>
    implements $SearchLocationErrorCopyWith<$Res> {
  _$SearchLocationErrorCopyWithImpl(
      SearchLocationError _value, $Res Function(SearchLocationError) _then)
      : super(_value, (v) => _then(v as SearchLocationError));

  @override
  SearchLocationError get _value => super._value as SearchLocationError;

  @override
  $Res call({
    Object error = freezed,
    Object pendingId = freezed,
  }) {
    return _then(SearchLocationError(
      error == freezed ? _value.error : error,
      pendingId == freezed ? _value.pendingId : pendingId as String,
    ));
  }
}

@Implements(ActionDone)
@Implements(ErrorAction)
class _$SearchLocationError implements SearchLocationError {
  const _$SearchLocationError(this.error,
      [this.pendingId = _kSearchLocationPendingId])
      : assert(error != null),
        assert(pendingId != null);

  @override
  final Object error;
  @JsonKey(defaultValue: _kSearchLocationPendingId)
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SearchLocation.error(error: $error, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchLocationError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.pendingId, pendingId) ||
                const DeepCollectionEquality()
                    .equals(other.pendingId, pendingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(pendingId);

  @override
  $SearchLocationErrorCopyWith<SearchLocationError> get copyWith =>
      _$SearchLocationErrorCopyWithImpl<SearchLocationError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result query(String query, String pendingId),
    @required Result successful(List<Location> locations, String pendingId),
    @required Result error(Object error, String pendingId),
  }) {
    assert(query != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error, pendingId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result query(String query, String pendingId),
    Result successful(List<Location> locations, String pendingId),
    Result error(Object error, String pendingId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result query(SearchLocationQuery value),
    @required Result successful(SearchLocationSuccessful value),
    @required Result error(SearchLocationError value),
  }) {
    assert(query != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result query(SearchLocationQuery value),
    Result successful(SearchLocationSuccessful value),
    Result error(SearchLocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchLocationError
    implements SearchLocation, ActionDone, ErrorAction {
  const factory SearchLocationError(Object error, [String pendingId]) =
      _$SearchLocationError;

  Object get error;
  @override
  String get pendingId;
  @override
  $SearchLocationErrorCopyWith<SearchLocationError> get copyWith;
}

class _$SetSelectedLocationTearOff {
  const _$SetSelectedLocationTearOff();

// ignore: unused_element
  SetSelectedLocation$ call(Location location) {
    return SetSelectedLocation$(
      location,
    );
  }
}

// ignore: unused_element
const $SetSelectedLocation = _$SetSelectedLocationTearOff();

mixin _$SetSelectedLocation {
  Location get location;

  $SetSelectedLocationCopyWith<SetSelectedLocation> get copyWith;
}

abstract class $SetSelectedLocationCopyWith<$Res> {
  factory $SetSelectedLocationCopyWith(
          SetSelectedLocation value, $Res Function(SetSelectedLocation) then) =
      _$SetSelectedLocationCopyWithImpl<$Res>;
  $Res call({Location location});
}

class _$SetSelectedLocationCopyWithImpl<$Res>
    implements $SetSelectedLocationCopyWith<$Res> {
  _$SetSelectedLocationCopyWithImpl(this._value, this._then);

  final SetSelectedLocation _value;
  // ignore: unused_field
  final $Res Function(SetSelectedLocation) _then;

  @override
  $Res call({
    Object location = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed ? _value.location : location as Location,
    ));
  }
}

abstract class $SetSelectedLocation$CopyWith<$Res>
    implements $SetSelectedLocationCopyWith<$Res> {
  factory $SetSelectedLocation$CopyWith(SetSelectedLocation$ value,
          $Res Function(SetSelectedLocation$) then) =
      _$SetSelectedLocation$CopyWithImpl<$Res>;
  @override
  $Res call({Location location});
}

class _$SetSelectedLocation$CopyWithImpl<$Res>
    extends _$SetSelectedLocationCopyWithImpl<$Res>
    implements $SetSelectedLocation$CopyWith<$Res> {
  _$SetSelectedLocation$CopyWithImpl(
      SetSelectedLocation$ _value, $Res Function(SetSelectedLocation$) _then)
      : super(_value, (v) => _then(v as SetSelectedLocation$));

  @override
  SetSelectedLocation$ get _value => super._value as SetSelectedLocation$;

  @override
  $Res call({
    Object location = freezed,
  }) {
    return _then(SetSelectedLocation$(
      location == freezed ? _value.location : location as Location,
    ));
  }
}

class _$SetSelectedLocation$ implements SetSelectedLocation$ {
  const _$SetSelectedLocation$(this.location) : assert(location != null);

  @override
  final Location location;

  @override
  String toString() {
    return 'SetSelectedLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetSelectedLocation$ &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @override
  $SetSelectedLocation$CopyWith<SetSelectedLocation$> get copyWith =>
      _$SetSelectedLocation$CopyWithImpl<SetSelectedLocation$>(
          this, _$identity);
}

abstract class SetSelectedLocation$ implements SetSelectedLocation {
  const factory SetSelectedLocation$(Location location) =
      _$SetSelectedLocation$;

  @override
  Location get location;
  @override
  $SetSelectedLocation$CopyWith<SetSelectedLocation$> get copyWith;
}

class _$SetSelectedLocationIdTearOff {
  const _$SetSelectedLocationIdTearOff();

// ignore: unused_element
  SetSelectedLocationId$ call(int locationId) {
    return SetSelectedLocationId$(
      locationId,
    );
  }
}

// ignore: unused_element
const $SetSelectedLocationId = _$SetSelectedLocationIdTearOff();

mixin _$SetSelectedLocationId {
  int get locationId;

  $SetSelectedLocationIdCopyWith<SetSelectedLocationId> get copyWith;
}

abstract class $SetSelectedLocationIdCopyWith<$Res> {
  factory $SetSelectedLocationIdCopyWith(SetSelectedLocationId value,
          $Res Function(SetSelectedLocationId) then) =
      _$SetSelectedLocationIdCopyWithImpl<$Res>;
  $Res call({int locationId});
}

class _$SetSelectedLocationIdCopyWithImpl<$Res>
    implements $SetSelectedLocationIdCopyWith<$Res> {
  _$SetSelectedLocationIdCopyWithImpl(this._value, this._then);

  final SetSelectedLocationId _value;
  // ignore: unused_field
  final $Res Function(SetSelectedLocationId) _then;

  @override
  $Res call({
    Object locationId = freezed,
  }) {
    return _then(_value.copyWith(
      locationId: locationId == freezed ? _value.locationId : locationId as int,
    ));
  }
}

abstract class $SetSelectedLocationId$CopyWith<$Res>
    implements $SetSelectedLocationIdCopyWith<$Res> {
  factory $SetSelectedLocationId$CopyWith(SetSelectedLocationId$ value,
          $Res Function(SetSelectedLocationId$) then) =
      _$SetSelectedLocationId$CopyWithImpl<$Res>;
  @override
  $Res call({int locationId});
}

class _$SetSelectedLocationId$CopyWithImpl<$Res>
    extends _$SetSelectedLocationIdCopyWithImpl<$Res>
    implements $SetSelectedLocationId$CopyWith<$Res> {
  _$SetSelectedLocationId$CopyWithImpl(SetSelectedLocationId$ _value,
      $Res Function(SetSelectedLocationId$) _then)
      : super(_value, (v) => _then(v as SetSelectedLocationId$));

  @override
  SetSelectedLocationId$ get _value => super._value as SetSelectedLocationId$;

  @override
  $Res call({
    Object locationId = freezed,
  }) {
    return _then(SetSelectedLocationId$(
      locationId == freezed ? _value.locationId : locationId as int,
    ));
  }
}

class _$SetSelectedLocationId$ implements SetSelectedLocationId$ {
  const _$SetSelectedLocationId$(this.locationId) : assert(locationId != null);

  @override
  final int locationId;

  @override
  String toString() {
    return 'SetSelectedLocationId(locationId: $locationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetSelectedLocationId$ &&
            (identical(other.locationId, locationId) ||
                const DeepCollectionEquality()
                    .equals(other.locationId, locationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationId);

  @override
  $SetSelectedLocationId$CopyWith<SetSelectedLocationId$> get copyWith =>
      _$SetSelectedLocationId$CopyWithImpl<SetSelectedLocationId$>(
          this, _$identity);
}

abstract class SetSelectedLocationId$ implements SetSelectedLocationId {
  const factory SetSelectedLocationId$(int locationId) =
      _$SetSelectedLocationId$;

  @override
  int get locationId;
  @override
  $SetSelectedLocationId$CopyWith<SetSelectedLocationId$> get copyWith;
}

class _$SetMeasurementUnitTearOff {
  const _$SetMeasurementUnitTearOff();

// ignore: unused_element
  SetMeasurementUnit$ call(MeasurementUnit unit) {
    return SetMeasurementUnit$(
      unit,
    );
  }
}

// ignore: unused_element
const $SetMeasurementUnit = _$SetMeasurementUnitTearOff();

mixin _$SetMeasurementUnit {
  MeasurementUnit get unit;

  $SetMeasurementUnitCopyWith<SetMeasurementUnit> get copyWith;
}

abstract class $SetMeasurementUnitCopyWith<$Res> {
  factory $SetMeasurementUnitCopyWith(
          SetMeasurementUnit value, $Res Function(SetMeasurementUnit) then) =
      _$SetMeasurementUnitCopyWithImpl<$Res>;
  $Res call({MeasurementUnit unit});
}

class _$SetMeasurementUnitCopyWithImpl<$Res>
    implements $SetMeasurementUnitCopyWith<$Res> {
  _$SetMeasurementUnitCopyWithImpl(this._value, this._then);

  final SetMeasurementUnit _value;
  // ignore: unused_field
  final $Res Function(SetMeasurementUnit) _then;

  @override
  $Res call({
    Object unit = freezed,
  }) {
    return _then(_value.copyWith(
      unit: unit == freezed ? _value.unit : unit as MeasurementUnit,
    ));
  }
}

abstract class $SetMeasurementUnit$CopyWith<$Res>
    implements $SetMeasurementUnitCopyWith<$Res> {
  factory $SetMeasurementUnit$CopyWith(
          SetMeasurementUnit$ value, $Res Function(SetMeasurementUnit$) then) =
      _$SetMeasurementUnit$CopyWithImpl<$Res>;
  @override
  $Res call({MeasurementUnit unit});
}

class _$SetMeasurementUnit$CopyWithImpl<$Res>
    extends _$SetMeasurementUnitCopyWithImpl<$Res>
    implements $SetMeasurementUnit$CopyWith<$Res> {
  _$SetMeasurementUnit$CopyWithImpl(
      SetMeasurementUnit$ _value, $Res Function(SetMeasurementUnit$) _then)
      : super(_value, (v) => _then(v as SetMeasurementUnit$));

  @override
  SetMeasurementUnit$ get _value => super._value as SetMeasurementUnit$;

  @override
  $Res call({
    Object unit = freezed,
  }) {
    return _then(SetMeasurementUnit$(
      unit == freezed ? _value.unit : unit as MeasurementUnit,
    ));
  }
}

class _$SetMeasurementUnit$ implements SetMeasurementUnit$ {
  const _$SetMeasurementUnit$(this.unit) : assert(unit != null);

  @override
  final MeasurementUnit unit;

  @override
  String toString() {
    return 'SetMeasurementUnit(unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetMeasurementUnit$ &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(unit);

  @override
  $SetMeasurementUnit$CopyWith<SetMeasurementUnit$> get copyWith =>
      _$SetMeasurementUnit$CopyWithImpl<SetMeasurementUnit$>(this, _$identity);
}

abstract class SetMeasurementUnit$ implements SetMeasurementUnit {
  const factory SetMeasurementUnit$(MeasurementUnit unit) =
      _$SetMeasurementUnit$;

  @override
  MeasurementUnit get unit;
  @override
  $SetMeasurementUnit$CopyWith<SetMeasurementUnit$> get copyWith;
}
