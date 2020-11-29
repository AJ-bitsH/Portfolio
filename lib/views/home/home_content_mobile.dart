import 'package:flutter/material.dart';
import 'package:portfolio/widgets/call_to_action/call_to_action.dart';
import 'package:portfolio/widgets/description/description.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Description(),
        SizedBox(
          height: 100,
        ),
        CallToAction('GET IN TOUCH'),
      ],
    );
  }
}
