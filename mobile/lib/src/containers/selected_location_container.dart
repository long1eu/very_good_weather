import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:very_good_weather/src/models/index.dart';

class SelectedLocationContainer extends StatelessWidget {
  const SelectedLocationContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Location> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Location>(
      converter: (Store<AppState> store) => store.state.locations[store.state.selectedLocationId],
      builder: builder,
    );
  }
}
