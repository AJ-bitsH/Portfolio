import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/routing/route_names.dart';
import 'package:portfolio/views/about/about_view.dart';
import 'package:portfolio/views/articles_view/articles_view.dart';
import 'package:portfolio/views/experience/experience_view.dart';
import 'package:portfolio/views/home/home_view.dart';
import 'package:portfolio/views/projects/projects_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case AboutRoute:
      return _getPageRoute(AboutView(), settings);
    case ArticlesRoute:
      return _getPageRoute(ArticlesView(), settings);
    case ProjectsRoute:
      return _getPageRoute(ProjectsView(), settings);
    case ExperienceRoute:
      return _getPageRoute(ExperienceView(), settings);
    default:
      return _getPageRoute(HomeView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
