// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of data;

class MetaWeatherApi {
  const MetaWeatherApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;

  Future<List<Location>> search(String query) async {
    final Response response = await _client.get('https://www.metaweather.com/api/location/search?query=$query');

    return List<dynamic>.from(jsonDecode(response.body) as List<dynamic>) //
        .map((dynamic item) => Location.fromJson(item))
        .toList();
  }

  Future<LocationWeather> getLocationWeather(int id) async {
    final Response response = await _client.get('https://www.metaweather.com/api/location/$id');

    return LocationWeather.fromJson(jsonDecode(response.body));
  }
}
