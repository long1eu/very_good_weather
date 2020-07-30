// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of data;

class LocationApi {
  const LocationApi({@required LocationService service})
      : assert(service != null),
        _service = service;

  final LocationService _service;

  Future<LatLng> getLocation() async {
    final Response<LatLng> response = await _service.getLocation();
    return resultOrThrow(response);
  }
}
