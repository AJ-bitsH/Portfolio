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
                  ProjectItem(
                      "Apollo BRB",
                      "Project Type - Software Development",
                      "Created a cross platform mobile application for the firm using MERN stack",
                      "images/Capture.PNG"),
                  ProjectItem(
                      "Steam Inventory Script",
                      "Project Type - Personal Project",
                      "Created a script in python using Selenium for automating a task",
                      "images/script_code.png"),
                ]),
            SizedBox(
              height: 40,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ProjectItem(
                      "Frequency with Pressure",
                      "Project Type - Research Project",
                      "Data analysis matlab",
                      "images/physics.PNG"),
                  ProjectItem(
                      "Portfolio Website",
                      "Project Type - Personal Project",
                      "Created a personal website using flutter to showcase my portfolio",
                      "images/website.png"),
                ]),
            SizedBox(
              height: 40,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ProjectItem(
                      "Hosted Hadoop Cluster on AWS",
                      "Project Type - Personal Project",
                      "Created a cluster of Hadoop instances using Amazon EC2",
                      "images/aws.png"),
                ]),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: double.infinity,
                color: Colors.black,
              ),
            ),
            BottomBarTabletDesktop()
          ],
        ),
      ),
    );
  }
}
