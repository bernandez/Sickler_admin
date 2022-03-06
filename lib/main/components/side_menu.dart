import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:siclker_admin/main/components/navigate_to-dashboard.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/log.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () => selectedItem(context, 0),
          ),
          DrawerListTile(
            title: "profile",
            svgSrc: "assets/icons/menu_task.svg",
            press: () => selectedItem(context, 1),
          ),
          DrawerListTile(
            title: "users",
            svgSrc: "assets/icons/menu_task.svg",
            press: () => selectedItem(context, 2),
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_task.svg",
            press: () => selectedItem(context, 3),
          ),
        ],
      ),
    );
  }
}

void selectedItem(BuildContext context, int i) {
  switch (i) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => NavigateToDashboard(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => NavigateToDashboard(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => NavigateToDashboard(),
      ));
  }
}

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("field");
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Color.fromARGB(137, 17, 6, 6)),
      ),
    );
  }
}
