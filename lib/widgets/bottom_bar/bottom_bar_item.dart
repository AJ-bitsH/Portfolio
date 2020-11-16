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
      child: Container(
        child: Image.asset(source),
        height: 80,
        width: 80,
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
