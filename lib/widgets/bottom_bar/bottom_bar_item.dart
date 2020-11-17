import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBarItem extends StatelessWidget {
  final String source;
  final String link;
  const BottomBarItem(this.source, this.link);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchURL(link),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          source,
          width: 50.0,
          height: 50.0,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

_launchURL(String link) async {
  String url = link;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
