// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';
import 'package:very_good_weather/src/init/init.dart';
import 'package:very_good_weather/src/models/index.dart';

mixin InitMixin<S extends StatefulWidget> on State<S> {
  final Completer<Store<AppState>> _completer = Completer<Store<AppState>>();

  @override
  void initState() {
    super.initState();
    init().then(_completer.complete).catchError(_completer.completeError);
  }

  Future<Store<AppState>> get future => _completer.future;

  Init get init;
}
