import 'package:flutter/material.dart';
import 'package:portfolio/views/experience/experience_item.dart';
import 'package:portfolio/widgets/bottom_bar/bottom_bar_tablet_desktop.dart';

class ExperienceView extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scrollbar(
        isAlwaysShown: true,
        thickness: 10.0,
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              ExperienceItem(
                "AgroStar",
                "Software Development Engineer I",
                "PUNE,MAHARASHTRA      JULY 2021 - Present",
                "Joined as an SDE for a Fullstack Web Development role, currently learning the ropes for Python backend development",
                "images/agrostar_logo.jpg",
              ),
              SizedBox(
                height: 40,
              ),
              ExperienceItem(
                "AgroStar",
                "App Development Intern (Remote) - PS 2",
                "PUNE,MAHARASHTRA      JANUARY 2021 - JUNE 2021",
                "Worked as a fullstack web developer for the entirety of the internship. Used NestJS, NodeJS, React(Material UI), React Styled Components, Firebase and other related technologies to work on internal products of the company, contributing to fixes as well as features.",
                "images/agrostar_logo.jpg",
              ),
              SizedBox(
                height: 40,
              ),
              ExperienceItem(
                "Apollo Tyres",
                "App Development Intern (Remote) - PS 2",
                "GURGAON,HARYANA      AUGUST 2020 - DECEMBER 2020",
                "Developed a cross-platform mobile application with React Native as the frontend framework and MongoDB,Express and Node as the backend. Deployed to an AWS microservices architecture",
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
                "Responsibilities included creating written content for the website's landing pages and managing SEO for the startup's website. Helped the founder with selecting a name for the startup",
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
      ),
    );
  }
}
