import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:responsive_builder/responsive_builder.dart';
import "package:portfolio/extensions/hover_extensions.dart";
import 'package:url_launcher/url_launcher.dart';

class Description extends StatelessWidget {
  const Description({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      String url =
          "https://drive.google.com/file/d/1pznQ1aVhhk1jHgeCLBI-Tc6619TaR-aO/view?usp=sharing";

      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;

      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 80;

      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;

      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Hi, I'm Anuj",
              style:
                  TextStyle(fontWeight: FontWeight.w800, fontSize: titleSize),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome to my developer portfolio. I'm am engineering student graduating in August 2021 from BITS Pilani Hyderabad Campus. Currently looking for fresh opportunities.\n\n",
              style: TextStyle(fontSize: descriptionSize, height: 1.7),
              textAlign: textAlignment,
            ),
            GestureDetector(
              onTap: () => _launchURL(url),
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text("Looking for a resume instead?",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.white)),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  )).showCursorOnHover,
            )
          ],
        ),
      );
    });
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
