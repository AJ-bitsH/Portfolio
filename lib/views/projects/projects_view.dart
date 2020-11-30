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
                      "Project Type - Software Development".toUpperCase(),
                      "Interned at the firm for a period of 5 months as part of the BITS Pilani Practice School 2 program.\n\n"
                          "Worked with two other interns to create a cross platform mobile application for the firm's 'Bad Road Buddies' project. My team went through the whole process of mobile application development with phases including: understanding the need, target base outreach, user flows, wireframing, prototyping, technology stack decisions and finally UI development using React Native. \n\n"
                          "My responsibilities and deliverables included a login system implemented with MongoDB and NodeJS, and a User Feed system implemented using NodeJS, Redis and MongoDB.\n\n",
                      "images/Capture.PNG"),
                  ProjectItem(
                      "Portfolio Website",
                      "Project Type - Personal Project".toUpperCase(),
                      "Created this developer portfolio using Flutter for Web. Responsive UI and mobile support to be added shortly.\n\n"
                          "Website hosted on a Firebase free plan account. Domain name of '.me' bought from NameCheap.com with additional redirection from www.\n\n"
                          "Learning outcomes include an overall understanding of web development and web hosting along with best practices for maintaining a fairly large code base.",
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
                      "Frequency with Pressure",
                      "Project Type - Research Project".toUpperCase(),
                      "The relationship between the frequency of change in pressure and the frequency of change in refractive index of air is studied with the help of Michelson Interferometer. It is found that the dominant frequency of refractive index change is the same as the dominant frequency of pressure change.\n\n"
                          "Get in touch to get a copy of the project article",
                      "images/physics.PNG"),
                  ProjectItem(
                      "Steam Inventory Script",
                      "Project Type - Personal Project".toUpperCase(),
                      "Most users for Steam(a video game digital distribution service by Valve Corporation) use their community marketplace on a frequent basis.\n\n"
                          "Users get tonnes of drops on this marketplace as part of the games they play. These items cannot be sold all at once and require a painstaking amount of time to sell."
                          "This python script helps you automate the process using Selenium with the Google Chrome webdriver.",
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
                      "Hadoop Cluster on AWS",
                      "Project Type - Personal Project".toUpperCase(),
                      "Am online course I was pursuing at the time required me to have a Hadoop instance installed on my 8GB ram laptop, which for decent Virtual Machines is not sufficient.\n\n"
                          "Rather than spend on another memory stick, I used the AWS one hundred dollars of free credit my university email entails me to each year, to setup a Hadoop cluster on Amazon Web Services.\n\n"
                          "A single EC2 instance as the master and three more EC2 instances as slaves were used to create a Hadoop Cluster costing siginificantly less than a memory stick.",
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
