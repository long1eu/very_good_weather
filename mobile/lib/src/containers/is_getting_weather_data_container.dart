import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:very_good_weather/src/actions/index.dart';
import 'package:very_good_weather/src/models/index.dart';

class IsGettingWeatherDataContainer extends StatelessWidget {
  const IsGettingWeatherDataContainer({Key key, @required this.builder, @required this.locationId})
      : assert(locationId != null),
        super(key: key);

  final ViewModelBuilder<bool> builder;
  final int locationId;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) {
        return store.state.pendingActions.contains(GetWeatherData.getPendingKey(locationId));
      },
      builder: builder,
    );
  }
}
