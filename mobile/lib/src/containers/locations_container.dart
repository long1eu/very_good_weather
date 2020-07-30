import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:very_good_weather/src/models/index.dart';

class LocationsContainer extends StatelessWidget {
  const LocationsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Location>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Location>>(
      converter: (Store<AppState> store) {
        return store.state.locations.values.toList();
      },
      builder: builder,
    );
  }
}
