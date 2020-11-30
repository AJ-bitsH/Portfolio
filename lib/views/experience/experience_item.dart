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
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[600], width: 0.5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
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
            style: TextStyle(fontWeight: FontWeight.w200, fontSize: 28),
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
              decoration: BoxDecoration(color: Colors.grey[200])),
          SizedBox(
            height: 30,
          ),
          Text(
            position,
            style: TextStyle(fontWeight: FontWeight.w200, fontSize: 25),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            location,
            style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            description,
            style: TextStyle(fontSize: 17),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
