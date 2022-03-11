import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:siclker_admin/constant.dart';
import 'package:siclker_admin/main/components/hb_chart.dart';
import 'package:siclker_admin/main/components/search_field.dart';
import 'package:siclker_admin/main/components/water_chart.dart';
import 'water_details.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'hb_details.dart';
import 'package:siclker_admin/constant.dart';

class DashboardScreen extends StatelessWidget {
  final List<HbRequirements> info = [
    HbRequirements(
      weeek: "W1",
      blood_level: 20,
      barColor: charts.ColorUtil.fromDartColor(kFuchsia60),
    ),
    HbRequirements(
      weeek: "W2",
      blood_level: 30,
      barColor: charts.ColorUtil.fromDartColor(kFuchsia60),
    ),
    HbRequirements(
      weeek: "W3",
      blood_level: 10,
      barColor: charts.ColorUtil.fromDartColor(kFuchsia60),
    ),
    HbRequirements(
      weeek: "W4",
      blood_level: 15,
      barColor: charts.ColorUtil.fromDartColor(kFuchsia60),
    ),
  ];

  final List<WaterRequirements> data = [
    WaterRequirements(
      year: "Mon",
      developers: 40000,
      barColor: charts.ColorUtil.fromDartColor(kblue),
    ),
    WaterRequirements(
      year: "Tue",
      developers: 5000,
      barColor: charts.ColorUtil.fromDartColor(kblue),
    ),
    WaterRequirements(
      year: "Wed",
      developers: 40000,
      barColor: charts.ColorUtil.fromDartColor(kblue),
    ),
    WaterRequirements(
      year: "Thur",
      developers: 35000,
      barColor: charts.ColorUtil.fromDartColor(kblue),
    ),
    WaterRequirements(
      year: "Fri",
      developers: 45000,
      barColor: charts.ColorUtil.fromDartColor(kblue),
    ),
    WaterRequirements(
      year: "Sat",
      developers: 45000,
      barColor: charts.ColorUtil.fromDartColor(kblue),
    ),
    WaterRequirements(
      year: "Sun",
      developers: 45000,
      barColor: charts.ColorUtil.fromDartColor(kblue),
    ),
  ];

  static String tag = 'User Statistics';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 1000,
                  child: Header(),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 300,
                              width: 350,
                              padding: EdgeInsets.all(10),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text("Water Details for this week"),
                                      Expanded(child: WaterChart(data: data)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 300,
                              width: 350,
                              padding: EdgeInsets.all(10),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text("HB Details for this Month"),
                                      Expanded(child: HbChart(info: info)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ), //your 1st Row
                        Row(
                          children: [
                            Container(
                              height: 300,
                              width: 350,
                              padding: EdgeInsets.all(10),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text("Oxygen  Level for this week"),
                                      Expanded(child: WaterChart(data: data)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 300,
                              width: 350,
                              padding: EdgeInsets.all(10),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text("Water Details for this week"),
                                      Expanded(child: WaterChart(data: data)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ), //your 2nd Row
                        //your 3rd Row
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    height: 600,
                    width: 400,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 238, 238, 238),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    child: Column(children: const [
                      Text(
                        "Patient Details",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      Chart()
                    ]),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Piechart extends StatelessWidget {
  const Piechart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PieChart(PieChartData(sectionsSpace: 0, sections: [
          PieChartSectionData(
            color: Colors.red,
            value: 50,
            showTitle: false,
            radius: 25,
          ),
          PieChartSectionData(
            color: Colors.lightBlue,
            value: 25,
            showTitle: false,
            radius: 35,
          ),
          PieChartSectionData(
            color: Colors.yellow,
            value: 25,
            showTitle: false,
            radius: 30,
          ),
        ])),
        Positioned.fill(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              height: kDefaultPadding,
            ),
          ],
        ))
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Spacer(),
      Text(
        "Patient Statistics",
        style: Theme.of(context).textTheme.headline6,
      ),
      const Spacer(),
      // const Expanded(
      //   flex: 6,
      //   child: SearchField(),
      // ),
      const Profile()
    ]);
  }
}

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: kDefaultPadding),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: kRed60),
      child: Row(
        children: [
          Image.asset(
            "assets/images/profile_pic.jpg",
            height: 38,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: Text("Alouzeh Brandone"),
          ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      child: Piechart(),
    );
  }
}
