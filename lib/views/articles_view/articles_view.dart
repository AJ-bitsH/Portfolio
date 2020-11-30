import 'package:flutter/material.dart';
import 'package:portfolio/widgets/bottom_bar/bottom_bar_tablet_desktop.dart';

class ArticlesView extends StatelessWidget {
  const ArticlesView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Text(
            "Watch this space for updates",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 40,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: double.infinity,
                      color: Colors.black,
                    ),
                  ),
                  BottomBarTabletDesktop()
                ],
              ))
        ],
      ),
    );
  }
}
