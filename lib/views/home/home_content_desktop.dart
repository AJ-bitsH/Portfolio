import 'package:flutter/material.dart';
import 'package:portfolio/widgets/description/description.dart';
import 'package:portfolio/widgets/call_to_action/call_to_action.dart';
import 'package:portfolio/widgets/bottom_bar/bottom_bar_tablet_desktop.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Description(),
              Expanded(
                child: Center(
                  child: CallToAction('GET IN TOUCH'),
                ),
              )
            ],
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
            ),
          )
        ]));
  }
}
