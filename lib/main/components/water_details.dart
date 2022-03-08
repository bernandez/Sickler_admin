import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class WaterRequirements {
  final String year;
  final int developers;
  final charts.Color barColor;

  WaterRequirements(
      {required this.year, required this.developers, required this.barColor});
}
