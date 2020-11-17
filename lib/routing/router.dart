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
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case ArticlesRoute:
      return _getPageRoute(ArticlesView());
    case ProjectsRoute:
      return _getPageRoute(ProjectsView());
    case ExperienceRoute:
      return _getPageRoute(ExperienceView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => child,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                    FadeTransition(
                      opacity: animation,
                      child: child,
                    ));
}
