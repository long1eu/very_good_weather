// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:very_good_weather/src/models/index.dart';

part 'get_location.dart';
part 'get_wether_data.dart';
part 'index.freezed.dart';
part 'initialize_app.dart';
part 'search_location.dart';
part 'set.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;
}

typedef ActionResult = void Function(AppAction action);

abstract class ActionStart extends PendingAction {}

abstract class ActionDone extends PendingAction {}

abstract class PendingAction extends AppAction {
  String get pendingId;
}
