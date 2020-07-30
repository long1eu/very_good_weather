// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of services;

@ChopperApi(baseUrl: 'https://www.metaweather.com/api/location')
abstract class MetaWeatherService extends ChopperService {
  MetaWeatherService();

  factory MetaWeatherService.create([ChopperClient client]) = _$MetaWeatherService;

  @Get(path: '/search')
  Future<Response<List<Location>>> search(@Query() String query);

  @Get(path: '/{id}')
  Future<Response<LocationWeather>> getLocationWeather(@Path() int id);
}
