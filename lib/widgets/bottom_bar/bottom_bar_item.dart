import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import "package:portfolio/extensions/hover_extensions.dart";

class BottomBarItem extends StatelessWidget {
  final String source;
  final String link;
  final String message;
  const BottomBarItem(this.source, this.link, this.message);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: GestureDetector(
        onTap: () => _launchURL(link),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            source,
            width: 40.0,
            height: 40.0,
            fit: BoxFit.fill,
          ),
        ),
      ).showCursorOnHover,
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
