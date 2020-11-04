import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/locator.dart';
import 'package:portfolio/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(5),
          )),
    );
  }
}
