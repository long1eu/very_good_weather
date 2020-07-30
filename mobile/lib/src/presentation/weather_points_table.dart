// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:very_good_weather/src/containers/selected_measurement_unit_container.dart';
import 'package:very_good_weather/src/data/index.dart';
import 'package:very_good_weather/src/models/index.dart';

final DateFormat dayFormat = DateFormat.EEEE();

class WeatherPointsTable extends StatelessWidget {
  const WeatherPointsTable({Key key, @required this.points}) : super(key: key);

  final List<WeatherPoint> points;

  @override
  Widget build(BuildContext context) {
    return SelectedMeasurementUnitContainer(
      builder: (BuildContext context, MeasurementUnit unit) {
        return Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: const <int, TableColumnWidth>{
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(5),
            2: FlexColumnWidth(1),
            3: FlexColumnWidth(1),
          },
          children: List<TableRow>.generate(
            points.length,
            (int index) {
              final WeatherPoint item = points[index];

              return TableRow(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      '${dayFormat.format(item.applicableDate).toLowerCase()}${item.applicableDate.isToday ? ' TODAY' : ''}',
                    ),
                  ),
                  SvgPicture.asset('res/svg/${item.weatherStateAbbr}.svg'),
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      item.getMaxTemp(unit),
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      item.getMinTemp(unit),
                      style: TextStyle(
                        color: Theme.of(context).disabledColor,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
