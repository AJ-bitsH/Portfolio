import 'package:flutter/material.dart';
import 'package:portfolio/widgets/bottom_bar/bottom_bar_item.dart';
import 'package:portfolio/widgets/navigation_bar/navbar_logo.dart';

class BottomBarTabletDesktop extends StatelessWidget {
  const BottomBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              BottomBarItem(
                  "../../assets/git.png", "https://github.com/AJ-bitsH"),
              SizedBox(
                width: 50,
              ),
              BottomBarItem("../../assets/fb.png",
                  "https://www.facebook.com/anuj.guglani.7/"),
              SizedBox(
                width: 50,
              ),
              BottomBarItem("../../assets/linkedin.png",
                  "https://www.linkedin.com/in/anuj-guglani-ab9b69141/"),
              SizedBox(
                width: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
