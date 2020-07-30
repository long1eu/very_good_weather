// File created by
// Lung Razvan <long1eu>
// on 30/07/2020

part of data;

extension ExtendedDateTime on DateTime {
  bool get isToday {
    final DateTime now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }
}
