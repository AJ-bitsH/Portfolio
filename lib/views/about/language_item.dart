import 'package:flutter/material.dart';

class LanguageItem extends StatelessWidget {
  final String name;
  final String message;
  const LanguageItem(this.name, this.message);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      showDuration: Duration(seconds: 2),
      child: Container(
          padding: EdgeInsets.all(20),
          height: 150,
          width: 150,
          child: Image.asset(
            "images/skills/" + name,
          ),
          decoration: BoxDecoration(color: Colors.grey[100])),
    );
  }
}
