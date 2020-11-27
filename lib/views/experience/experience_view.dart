import 'package:flutter/material.dart';
import 'package:portfolio/views/experience/experience_item.dart';
import 'package:portfolio/widgets/bottom_bar/bottom_bar_tablet_desktop.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            ExperienceItem(
              "Apollo Tyres",
              "App Development Intern (Remote) - PS 2",
              "GURGAON,HARYANA      AUGUST 2020 - DECEMBER 2020",
              "Developed a cross-platform application with React Native as frontend and MongoDB Express and Node as the backend. Deployed to AWS microservices architecture",
              "images/apollo.png",
            ),
            SizedBox(
              height: 40,
            ),
            ExperienceItem(
              "Escorts Group - AgriMachinery Division",
              "Engineering Intern - Practice School 1",
              "FARIDABAD,HARYANA      MAY 2018 - JULY 2018",
              "Establishing and rectifying the cause of high shim and low shim between retainer and rear plate of transmission in Cage Transmision of Escorts Farmtrac tractors",
              "images/escorts_logo.png",
            ),
            SizedBox(
              height: 40,
            ),
            ExperienceItem(
              "IndiaBuys",
              "Content Writer (Remote) - Summer Intern",
              "HYDERABAD,TELANGANA      MAY 2017 - JULY 2017",
              "Creating written content for the website's landing pages and managing SEO for the website",
              "images/indiabuys.jpg",
            ),
            SizedBox(
              height: 40,
            ),
            ExperienceItem(
              "BITS Pilani Hyderabad Campus",
              "Joint Secretary of Spectrum",
              "HYDERABAD,TELANGANA      AUGUST 2017 - AUGUST 2018",
              "As post holder for Spectrum(Physics Assocation), was responsible for planning and conducting events like workshops,competitions,quizzes,and talks related to the domain of Physics",
              "images/bphc.png",
            ),
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
