// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PointField extends StatelessWidget {
  const PointField({
    Key key,
    @required this.label,
    @required this.value,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 10.0,
            ),
          ),
        ),
        Container(
          child: Text(
            value,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        const Divider(),
      ],
    );
  }
}
