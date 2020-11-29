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
                  "images/git.png", "https://github.com/AJ-bitsH", "GitHub"),
              SizedBox(
                width: 50,
              ),
              BottomBarItem("images/fb.png",
                  "https://www.facebook.com/anuj.guglani.7/", "Facebook"),
              SizedBox(
                width: 50,
              ),
              BottomBarItem(
                  "images/linkedin.png",
                  "https://www.linkedin.com/in/anuj-guglani-ab9b69141/",
                  "LinkedIn"),
              SizedBox(
                width: 50,
              ),
              BottomBarItem("images/leetcode.png",
                  "https://leetcode.com/DelhiBoy/", "LeetCode"),
              SizedBox(
                width: 50,
              ),
              BottomBarItem(
                  "images/discord.webp",
                  "https://discordapp.com/users/717318794837753886/",
                  "Discord"),
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
