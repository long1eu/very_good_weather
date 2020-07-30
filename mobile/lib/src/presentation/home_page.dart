// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:very_good_weather/src/actions/index.dart';
import 'package:very_good_weather/src/containers/is_getting_any_weather_data_container.dart';
import 'package:very_good_weather/src/containers/location_whether_container.dart';
import 'package:very_good_weather/src/containers/locations_container.dart';
import 'package:very_good_weather/src/containers/selected_location_container.dart';
import 'package:very_good_weather/src/containers/selected_measurement_unit_container.dart';
import 'package:very_good_weather/src/models/index.dart';
import 'package:very_good_weather/src/presentation/mixins/store_mixin.dart';
import 'package:very_good_weather/src/presentation/search_page.dart';
import 'package:very_good_weather/src/presentation/weather_page.dart';
import 'package:very_good_weather/src/presentation/widgets/loading_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with StoreMixin<HomePage> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return LocationWeatherContainer(
      builder: (BuildContext context, Map<int, LocationWeather> weatherData) {
        return SelectedLocationContainer(
          builder: (BuildContext context, Location selectedLocation) {
            return LocationsContainer(
              builder: (BuildContext context, List<Location> locations) {
                return Scaffold(
                  appBar: AppBar(
                    elevation: 0.0,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    actions: <Widget>[
                      SelectedMeasurementUnitContainer(
                        builder: (BuildContext context, MeasurementUnit unit) {
                          return IconButton(
                            icon: Text(
                              '°${unit == MeasurementUnit.metric ? 'F' : 'C'}',
                              style: const TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            onPressed: () {
                              final MeasurementUnit newUnit =
                                  unit == MeasurementUnit.metric ? MeasurementUnit.imperial : MeasurementUnit.metric;
                              StoreProvider.of<AppState>(context).dispatch(SetMeasurementUnit(newUnit));
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  body: SafeArea(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: PageView.builder(
                            controller: _controller,
                            itemCount: locations.length,
                            itemBuilder: (BuildContext context, int index) {
                              final Location location = locations[index];
                              final LocationWeather weather = weatherData[location.id];

                              if (weather == null) {
                                return Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const LoadingIndicator(),
                                      const SizedBox(height: 14),
                                      const Text('Loading data for'),
                                      const SizedBox(height: 8),
                                      Text(
                                        location.title,
                                        style: Theme.of(context).textTheme.headline2,
                                      ),
                                    ],
                                  ),
                                );
                              }

                              final WeatherPoint currentPoint = weather.weather.firstWhere(
                                  (WeatherPoint element) => isToday(element.applicableDate),
                                  orElse: () => weather.weather.first);

                              return SelectedMeasurementUnitContainer(
                                builder: (BuildContext context, MeasurementUnit unit) {
                                  return WeatherPage(
                                    location: location,
                                    currentPoint: currentPoint,
                                    weather: weather,
                                  );
                                },
                              );
                            },
                            onPageChanged: (int page) {
                              StoreProvider.of<AppState>(context).dispatch(SetSelectedLocationId(locations[page].id));
                            },
                          ),
                        ),
                        if (locations.length > 1)
                          SmoothPageIndicator(
                            count: locations.length,
                            effect: WormEffect(
                              activeDotColor: Theme.of(context).accentColor,
                              dotWidth: 8.0,
                              dotHeight: 8.0,
                            ),
                            controller: _controller,
                          ),
                      ],
                    ),
                  ),
                  floatingActionButton: IsGettingAnyWeatherDataContainer(
                    builder: (BuildContext context, bool isGettingData) {
                      return FloatingActionButton(
                        child: isGettingData ? const LoadingIndicator(color: Colors.white) : const Icon(Icons.add),
                        onPressed: () async {
                          if (isGettingData) {
                            return;
                          }

                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) {
                                return SearchPage(
                                  onSelected: (Location location) {
                                    Navigator.pop(context);
                                    StoreProvider.of<AppState>(context)
                                      ..dispatch(SetSelectedLocation(location))
                                      ..dispatch(
                                          GetWeatherData.start(location.id, GetWeatherData.getPendingKey(location.id)));

                                    _controller.animateToPage(locations.length,
                                        duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
                                  },
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

bool isToday(DateTime date) {
  final DateTime now = DateTime.now();
  return date.year == now.year && date.month == now.month && date.day == now.day;
}
