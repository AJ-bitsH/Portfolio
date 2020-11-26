import 'package:flutter/material.dart';
import 'package:portfolio/views/projects/projects_item.dart';
import 'package:portfolio/widgets/bottom_bar/bottom_bar_tablet_desktop.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ProjectItem("Soft Dev", "intern", "kam bhar bhar ke",
                      "../../assets/apollo.png"),
                  ProjectItem("Soft Dev", "intern", "kam bhar bhar ke",
                      "../../assets/apollo.png"),
                ]),
            SizedBox(
              height: 40,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ProjectItem("Soft Dev", "intern", "kam bhar bhar ke",
                      "../../assets/apollo.png"),
                  ProjectItem("Soft Dev", "intern", "kam bhar bhar ke",
                      "../../assets/apollo.png"),
                ]),
            SizedBox(
              height: 40,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ProjectItem("Soft Dev", "intern", "kam bhar bhar ke",
                      "../../assets/apollo.png"),
                  ProjectItem("Soft Dev", "intern", "kam bhar bhar ke",
                      "../../assets/apollo.png"),
                ]),
            SizedBox(
              height: 40,
            ),
            BottomBarTabletDesktop(),
          ],
        ),
      ),
    );
  }
}
