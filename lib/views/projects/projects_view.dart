import 'package:flutter/material.dart';
import 'package:portfolio/widgets/bottom_bar/bottom_bar_tablet_desktop.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            BottomBarTabletDesktop()
          ],
        ),
      ),
    );
  }
}
