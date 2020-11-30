import 'package:flutter/material.dart';

class DomainKnowledge extends StatelessWidget {
  const DomainKnowledge({Key key}) : super(key: key);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              child: Text(
                "DOMAIN KNOWLEDGE",
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: double.infinity,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                DomainItem("Data Structures and Algorithms"),
                DomainItem("Object Oriented Programming"),
                DomainItem("Database Management Systems"),
                DomainItem("Operating Systems"),
              ],
            ),
          ],
        ));
  }
}

class DomainItem extends StatelessWidget {
  final String title;
  const DomainItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(width: 0.1, color: Colors.black),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
