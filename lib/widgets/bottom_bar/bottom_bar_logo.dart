import 'package:flutter/material.dart';

class BottomBarLogo extends StatelessWidget {
  const BottomBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 60,
        width: 300,
        child: Center(
          child: Text(
            "© ANUJ GUGLANI 2020",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
