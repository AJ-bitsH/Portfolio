import 'package:flutter/material.dart';
import 'package:portfolio/views/about/authors.dart';
import 'package:portfolio/views/about/domain_knowledge.dart';
import 'package:portfolio/views/about/favourite_games.dart';
import 'package:portfolio/views/about/langauges_container.dart';
import 'package:portfolio/views/about/others_area.dart';
import 'package:portfolio/views/about/technologies_area.dart';
import 'package:portfolio/widgets/bottom_bar/bottom_bar_tablet_desktop.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String descriptionHeader =
        "I’m Anuj, an Applications Developer working remotely for Apollo Tyres on their mobile application in Millenium City Gurgaon, Haryana";
    String descriptionBody =
        "I’ve spent the past 18+ months working across different areas of product development; front-end development, backend development,cloud architecture , app UI/UX, automation scripting to my current role designing applications for mobile platforms.\n\n"
        "These days my time is spent researching, designing, prototyping, and coding.\n\n"
        "Out of the office you’ll find me dreaming of computer games, reading books, and petting all the good dogs.\n\n";

    return Container(
        child: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 40,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              padding: EdgeInsets.all(10),
              height: 500,
              width: 500,
              child: Image.asset(
                "images/hello.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 500,
              width: 500,
              child: Column(children: [
                Text(
                  descriptionHeader,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  descriptionBody,
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 17),
                ),
              ]),
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              LanguagesArea(),
              SizedBox(
                height: 50,
              ),
              TechnologiesArea(),
              SizedBox(
                height: 50,
              ),
              OthersArea(),
              SizedBox(
                height: 50,
              ),
              DomainKnowledge(),
              SizedBox(
                height: 50,
              ),
              FavouriteGames(),
              SizedBox(
                height: 50,
              ),
              FavouriteAuthors(),
              SizedBox(
                height: 50,
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
      ]),
    ));
  }
}
