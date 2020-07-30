import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:very_good_weather/src/models/index.dart';

class SearchResultContainer extends StatelessWidget {
  const SearchResultContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Location>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Location>>(
      converter: (Store<AppState> store) => store.state.searchResult.toList(),
      builder: builder,
    );
  }
}
