// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of services;

@ChopperApi(baseUrl: 'http://ip-api.com/json')
abstract class LocationService extends ChopperService {
  LocationService();

  factory LocationService.create([ChopperClient client]) = _$LocationService;

  @Get()
  Future<Response<LatLng>> getLocation([@Query() String fields = '16592']);
}
