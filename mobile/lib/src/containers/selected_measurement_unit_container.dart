import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:very_good_weather/src/models/index.dart';

class SelectedMeasurementUnitContainer extends StatelessWidget {
  const SelectedMeasurementUnitContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<MeasurementUnit> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MeasurementUnit>(
      converter: (Store<AppState> store) => store.state.unit,
      builder: builder,
    );
  }
}
