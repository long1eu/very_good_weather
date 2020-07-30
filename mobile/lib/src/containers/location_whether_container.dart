import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:very_good_weather/src/models/index.dart';

class LocationWeatherContainer extends StatelessWidget {
  const LocationWeatherContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Map<int, LocationWeather>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<int, LocationWeather>>(
      converter: (Store<AppState> store) {
        return store.state.weatherData.asMap();
      },
      builder: builder,
    );
  }
}
