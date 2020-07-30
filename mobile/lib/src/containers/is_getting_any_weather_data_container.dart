import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:very_good_weather/src/actions/index.dart';
import 'package:very_good_weather/src/models/index.dart';

class IsGettingAnyWeatherDataContainer extends StatelessWidget {
  const IsGettingAnyWeatherDataContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) {
        return GetWeatherData.hasGetWeatherData(store.state.pendingActions);
      },
      builder: builder,
    );
  }
}
