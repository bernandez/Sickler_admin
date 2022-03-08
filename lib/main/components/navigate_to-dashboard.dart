import 'package:flutter/material.dart';
import 'package:siclker_admin/main/components/dashboard_screen.dart';
import 'water_details.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:siclker_admin/main/components/side_menu.dart';

class NavigateToDashboard extends StatefulWidget {
  final List<WaterRequirements> data = [
    WaterRequirements(
      year: "2017",
      developers: 40000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    WaterRequirements(
      year: "2018",
      developers: 5000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    WaterRequirements(
      year: "2019",
      developers: 40000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    WaterRequirements(
      year: "2020",
      developers: 35000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    WaterRequirements(
      year: "2021",
      developers: 45000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
  ];

  @override
  _NavigateToDashboardState createState() => _NavigateToDashboardState();
}

class _NavigateToDashboardState extends State<NavigateToDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: SideMenu()),
          Expanded(flex: 5, child: DashboardScreen())
        ],
      )),
    );
  }
}
