import 'package:flutter/material.dart';
import 'package:portfolio/views/about/language_item.dart';

class OthersArea extends StatelessWidget {
  const OthersArea({Key key}) : super(key: key);

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
              width: 200,
              child: Text(
                "OTHERS",
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
                LanguageItem("github_logo.png", "GitHub"),
                LanguageItem("aws_logo.png", "Amazon Web Services"),
                LanguageItem("postman.png", "Postman"),
                LanguageItem("balsamiq.png", "Balsamiq"),
                LanguageItem("firebase.png", "Firebase"),
              ],
            ),
          ],
        ));
  }
}
