import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'hb_details.dart';
import 'package:siclker_admin/constant.dart';

class HbChart extends StatelessWidget {
  final List<HbRequirements> info;
  HbChart({required this.info});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<HbRequirements, String>> series = [
      charts.Series(
          id: "blood_level",
          data: info,
          domainFn: (HbRequirements series, _) => series.weeek,
          measureFn: (HbRequirements series, _) => series.blood_level,
          colorFn: (HbRequirements series, _) => series.barColor)
    ];
    return charts.BarChart(
      series,
      animate: true,
    );
  }
}
