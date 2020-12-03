import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Description extends StatelessWidget {
  const Description({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
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
              "Welcome to my developer portfolio. I'm am engineering student graduating in August 2021 from BITS Pilani Hyderabad Campus. Currently looking for opportunities.",
              style: TextStyle(fontSize: descriptionSize, height: 1.7),
              textAlign: textAlignment,
            ),
          ],
        ),
      );
    });
  }
}
