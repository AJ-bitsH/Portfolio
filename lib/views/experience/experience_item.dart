import 'package:flutter/material.dart';

class ExperienceItem extends StatelessWidget {
  final String companyName;
  final String position;
  final String location;
  final String description;
  final String iconSource;
  const ExperienceItem(this.companyName, this.position, this.location,
      this.description, this.iconSource);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 700,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Text(
              companyName,
              style: TextStyle(
                  fontWeight: FontWeight.w200, height: 1.0, fontSize: 28),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                padding: EdgeInsets.all(20),
                height: 110,
                width: 110,
                child: Image.asset(
                  iconSource,
                ),
                decoration: BoxDecoration(color: Colors.white)),
            SizedBox(
              height: 30,
            ),
            Text(
              position,
              style: TextStyle(
                  fontWeight: FontWeight.w200, height: 0.9, fontSize: 25),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              location,
              style: TextStyle(
                  fontWeight: FontWeight.w200, height: 0.9, fontSize: 20),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              description,
              style: TextStyle(fontSize: 17, height: 1.7),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.blue[50],
            border: Border.all(color: Colors.blueGrey[100])));
  }
}
