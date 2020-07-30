// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:very_good_weather/src/actions/index.dart';
import 'package:very_good_weather/src/models/index.dart';

mixin StoreMixin<S extends StatefulWidget> on State<S> {
  Store<AppState> _store;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _store = StoreProvider.of(context);
      onStoreReady();
    });
  }

  AppState get state => _store.state;

  void dispatch(AppAction action) {
    _store.dispatch(action);
  }

  void onStoreReady() {}
}
