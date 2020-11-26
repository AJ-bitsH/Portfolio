import 'package:flutter/material.dart';
import 'package:portfolio/locator.dart';
import 'package:portfolio/services/navigation_service.dart';
import "package:portfolio/extensions/hover_extensions.dart";

class NavBarItem extends StatefulWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);
  @override
  _NavBarItemState createState() => _NavBarItemState(title, navigationPath);
}

class _NavBarItemState extends State<NavBarItem> {
  final String title;
  final String navigationPath;
  _NavBarItemState(this.title, this.navigationPath);

  double _fontsize = 20;
  Color _color = Colors.black;
  TextDecoration _underline = TextDecoration.none;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(widget.navigationPath);
      },
      child: MouseRegion(
        onEnter: (e) => _mouseEnter(20, Colors.green, TextDecoration.underline),
        onExit: (e) => _mouseEnter(20, Colors.black, TextDecoration.none),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 100),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            widget.title,
            style: TextStyle(
                fontSize: _fontsize, color: _color, decoration: _underline),
          ),
        ),
      ),
    ).showCursorOnHover.translateOnHover;
  }

  void _mouseEnter(double size, Color colorNew, TextDecoration newDeco) {
    setState(() {
      _fontsize = size;
      _color = colorNew;
      _underline = newDeco;
    });
  }
}
