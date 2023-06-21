import 'dart:ffi';

class Weather {
  final String date;
  final String title;
  final double maxtemp_c;
  final double avgtemp_c;
  final String icon;

  Weather({
    required this.date,
    required this.title,
    required this.maxtemp_c,
    required this.avgtemp_c,
    required this.icon,
  });
}
