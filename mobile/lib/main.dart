import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:very_good_weather/src/init/init.dart';
import 'package:very_good_weather/src/init/init_mixin.dart';
import 'package:very_good_weather/src/models/index.dart';
import 'package:very_good_weather/src/presentation/home.dart';

void main() => runApp(const VeryGoodWeatherApp(init: init));

class VeryGoodWeatherApp extends StatefulWidget {
  const VeryGoodWeatherApp({Key key, @required this.init}) : super(key: key);

  final Init init;

  @override
  _VeryGoodWeatherAppState createState() => _VeryGoodWeatherAppState();
}

class _VeryGoodWeatherAppState extends State<VeryGoodWeatherApp> with InitMixin<VeryGoodWeatherApp> {
  @override
  Init get init => widget.init;

  @override
  Widget build(BuildContext context) {
    const String title = 'Very Good Weather';
    final ThemeData theme = ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

    return FutureBuilder<Store<AppState>>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          return StoreProvider<AppState>(
            store: snapshot.data,
            child: MaterialApp(
              title: title,
              theme: theme,
              home: const Home(),
            ),
          );
        } else {
          return MaterialApp(
            title: title,
            theme: theme,
            home: const Scaffold(),
          );
        }
      },
    );
  }
}
