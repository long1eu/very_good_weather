// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of data;

class LocationApi {
  const LocationApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;

  Future<LatLng> getLocation() async {
    final Response response = await _client.get('http://ip-api.com/json?fields=16592');
    return LatLng.fromJson(jsonDecode(response.body));
  }
}
