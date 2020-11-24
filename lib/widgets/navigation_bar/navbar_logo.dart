import 'package:flutter/material.dart';
import 'package:portfolio/locator.dart';
import 'package:portfolio/routing/route_names.dart';
import 'package:portfolio/services/navigation_service.dart';
import "package:portfolio/extensions/hover_extensions.dart";

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(HomeRoute);
        },
        child: SizedBox(
            height: 60,
            width: 300,
            child: Text(
              "ANUJ GUGLANI",
              style: TextStyle(fontSize: 40),
            )).showCursorOnHover.translateOnHover);
  }
}
