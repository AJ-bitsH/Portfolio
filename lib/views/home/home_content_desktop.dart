import 'package:flutter/material.dart';
import 'package:portfolio/widgets/description/description.dart';
import 'package:portfolio/widgets/call_to_action/call_to_action.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Description(),
        Expanded(
          child: Center(
            child: CallToAction('Know More'),
          ),
        )
      ],
    );
  }
}
