// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of data;

class MetaWeatherApi {
  const MetaWeatherApi({@required MetaWeatherService service})
      : assert(service != null),
        _service = service;

  final MetaWeatherService _service;

  Future<List<Location>> search(String query) async {
    final Response<List<Location>> response = await _service.search(query);
    return resultOrThrow(response);
  }

  Future<LocationWeather> getLocationWeather(int id) async {
    final Response<LocationWeather> response = await _service.getLocationWeather(id);
    return resultOrThrow(response);
  }
}
