import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'water_details.dart';

class WaterChart extends StatelessWidget {
  final List<WaterRequirements> data;

  WaterChart({required this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<WaterRequirements, String>> series = [
      charts.Series(
          id: "litres",
          data: data,
          domainFn: (WaterRequirements series, _) => series.year,
          measureFn: (WaterRequirements series, _) => series.developers,
          colorFn: (WaterRequirements series, _) => series.barColor)
    ];

    return charts.BarChart(
      series,
      animate: true,
    );
  }
}
