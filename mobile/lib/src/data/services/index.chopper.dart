// GENERATED CODE - DO NOT MODIFY BY HAND

part of services;

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$LocationService extends LocationService {
  _$LocationService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = LocationService;

  @override
  Future<Response<LatLng>> getLocation([String fields = '16592']) {
    final $url = 'http://ip-api.com/json';
    final $params = <String, dynamic>{'fields': fields};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<LatLng, LatLng>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$MetaWeatherService extends MetaWeatherService {
  _$MetaWeatherService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MetaWeatherService;

  @override
  Future<Response<List<Location>>> search(String query) {
    final $url = 'https://www.metaweather.com/api/location/search';
    final $params = <String, dynamic>{'query': query};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Location>, Location>($request);
  }

  @override
  Future<Response<LocationWeather>> getLocationWeather(int id) {
    final $url = 'https://www.metaweather.com/api/location/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<LocationWeather, LocationWeather>($request);
  }
}
