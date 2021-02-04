import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_colors.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  final String title;
  const CallToActionTabletDesktop(this.title);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Email : f20160465@hyderabad.bits-pilani.ac.in",
      showDuration: Duration(seconds: 2),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(5),
          )),
    );
  }
}
