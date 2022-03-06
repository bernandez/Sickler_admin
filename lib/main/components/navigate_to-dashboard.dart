import 'package:flutter/material.dart';
import 'package:siclker_admin/main/components/dashboard_screen.dart';

import 'package:siclker_admin/main/components/side_menu.dart';

class NavigateToDashboard extends StatefulWidget {
  NavigateToDashboard({Key? key}) : super(key: key);

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
