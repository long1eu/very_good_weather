// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:very_good_weather/src/actions/index.dart';
import 'package:very_good_weather/src/containers/is_initializing_container.dart';
import 'package:very_good_weather/src/containers/location_whether_container.dart';
import 'package:very_good_weather/src/containers/query_container.dart';
import 'package:very_good_weather/src/models/index.dart';
import 'package:very_good_weather/src/presentation/home_page.dart';
import 'package:very_good_weather/src/presentation/mixins/store_mixin.dart';
import 'package:very_good_weather/src/presentation/search_page.dart';
import 'package:very_good_weather/src/presentation/widgets/loading_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with StoreMixin<Home> {
  @override
  void onStoreReady() {
    super.onStoreReady();

    dispatch(InitializeApp.start(_onResult));
  }

  void _onResult(AppAction action) {
    // todo: show error dialog
  }

  @override
  Widget build(BuildContext context) {
    return IsInitializingContainer(
      builder: (BuildContext context, bool isInitializing) {
        if (isInitializing) {
          return QueryContainer(
            builder: (BuildContext context, String query) {
              return Scaffold(
                body: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const LoadingIndicator(),
                      const SizedBox(height: 14),
                      Text('Loading data${query == null ? '' : ' for'}'),
                      const SizedBox(height: 8),
                      if (query != null)
                        Text(
                          query,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          return LocationWeatherContainer(
            builder: (BuildContext context, Map<int, LocationWeather> weatherData) {
              if (weatherData.isEmpty) {
                return SearchPage(
                  onSelected: (Location location) {
                    StoreProvider.of<AppState>(context)
                      ..dispatch(SetSelectedLocation(location))
                      ..dispatch(GetWeatherData.start(location.id, GetWeatherData.getPendingKey(location.id)));
                  },
                );
              } else {
                return const HomePage();
              }
            },
          );
        }
      },
    );
  }
}
