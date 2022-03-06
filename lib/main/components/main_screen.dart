import 'package:flutter/material.dart';
import 'package:siclker_admin/main/components/navigate_to-dashboard.dart';

import 'loginscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavigateToDashboard(),
    );
  }
}
