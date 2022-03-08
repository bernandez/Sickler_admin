import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class HbRequirements {
  final String weeek;
  final int blood_level;
  final charts.Color barColor;

  HbRequirements(
      {required this.weeek, required this.barColor, required this.blood_level});
}
