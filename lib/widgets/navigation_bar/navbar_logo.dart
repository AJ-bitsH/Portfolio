import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: 300,
        child: Text(
          "ANUJ GUGLANI",
          style: TextStyle(fontSize: 40),
        ));
  }
}
