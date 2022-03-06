import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import '../../constant.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("Water Details"),
          color: kFuchsia20,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Hb Level'),
          color: kFuchsia20,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Oxygen Level'),
          color: kFuchsia20,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('User Details'),
          color: kFuchsia20,
        ),
      ],
    );
  }
}
