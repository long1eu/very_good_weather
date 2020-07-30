// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of models;

class MeasurementUnit extends EnumClass {
  const MeasurementUnit._(String name) : super(name);

  static const MeasurementUnit metric = _$metric;
  static const MeasurementUnit imperial = _$imperial;

  static BuiltSet<MeasurementUnit> get values => _$values;

  static MeasurementUnit valueOf(String name) => _$valueOf(name);
}
