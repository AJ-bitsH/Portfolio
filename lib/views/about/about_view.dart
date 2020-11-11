import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _launchURL,
            child: Text('Open My Github'),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: ElevatedButton(
            onPressed: _launchURL,
            child: Text('Open My Github'),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: ElevatedButton(
            onPressed: _launchURL,
            child: Text('Open My Github'),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: ElevatedButton(
            onPressed: _launchURL,
            child: Text('Open My Github'),
          ),
        )
      ],
    );
  }
}

_launchURL() async {
  const url = 'https://github.com/AJ-bitsH';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
