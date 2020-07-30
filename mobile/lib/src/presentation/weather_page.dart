// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:very_good_weather/src/actions/index.dart';
import 'package:very_good_weather/src/containers/is_getting_weather_data_container.dart';
import 'package:very_good_weather/src/containers/selected_measurement_unit_container.dart';
import 'package:very_good_weather/src/models/index.dart';
import 'package:very_good_weather/src/presentation/point_field.dart';
import 'package:very_good_weather/src/presentation/weather_points_table.dart';
import 'package:very_good_weather/src/presentation/widgets/loading_indicator.dart';

final DateFormat hourFormat = DateFormat.Hm();

class WeatherPage extends StatelessWidget {
  const WeatherPage({
    Key key,
    @required this.location,
    @required this.weather,
    @required this.currentPoint,
  }) : super(key: key);

  final Location location;
  final LocationWeather weather;
  final WeatherPoint currentPoint;

  @override
  Widget build(BuildContext context) {
    final String pendingId = GetWeatherData.getPendingKey(location.id);

    return SelectedMeasurementUnitContainer(
      builder: (BuildContext context, MeasurementUnit unit) {
        return ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(24.0),
              alignment: AlignmentDirectional.center,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Spacer(),
                      Text(
                        location.title,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      IsGettingWeatherDataContainer(
                        locationId: location.id,
                        builder: (BuildContext context, bool isLoading) {
                          return Expanded(
                            child: Container(
                              alignment: AlignmentDirectional.centerStart,
                              width: 64.0,
                              height: 64.0,
                              child: isLoading
                                  ? Container(
                                      margin: const EdgeInsetsDirectional.only(start: 16.0),
                                      child: const LoadingIndicator(),
                                    )
                                  : IconButton(
                                      icon: const Icon(Icons.refresh),
                                      onPressed: () {
                                        StoreProvider.of<AppState>(context)
                                            .dispatch(GetWeatherData.start(location.id, pendingId));
                                      },
                                    ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SvgPicture.asset('res/svg/${currentPoint.weatherStateAbbr}.svg'),
                      const SizedBox(width: 8.0),
                      Text(
                        currentPoint.weatherStateName,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(width: 8.0),
                      SvgPicture.asset('res/svg/${currentPoint.weatherStateAbbr}.svg'),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    currentPoint.getTemp(unit),
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
            ),
            WeatherPointsTable(points: <WeatherPoint>[currentPoint]),
            const Divider(height: 64.0),
            WeatherPointsTable(points: weather.futureWeather),
            const Divider(height: 64.0),
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    PointField(
                      label: 'SUN RISE',
                      value: hourFormat.format(weather.sunRise),
                    ),
                    PointField(
                      label: 'SUN SET',
                      value: hourFormat.format(weather.sunSet),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    PointField(
                      label: 'HUMIDITY',
                      value: '${currentPoint.humidity} %',
                    ),
                    PointField(
                      label: 'VISIBILITY',
                      value: currentPoint.getVisibility(unit),
                    ),
                  ],
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
