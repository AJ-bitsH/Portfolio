import 'package:flutter/material.dart';
import 'package:portfolio/routing/route_names.dart';
import 'package:portfolio/widgets/navigation_bar/navbar_logo.dart';
import 'package:portfolio/widgets/navigation_bar/navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Experience', ProjectsRoute),
              SizedBox(
                width: 50,
              ),
              NavBarItem('Projects', ExperienceRoute),
              SizedBox(
                width: 50,
              ),
              NavBarItem('Articles', ArticlesRoute),
              SizedBox(
                width: 50,
              ),
              NavBarItem('About', AboutRoute),
              SizedBox(
                width: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
