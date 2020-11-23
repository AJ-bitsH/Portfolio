import 'package:flutter/material.dart';
import 'package:portfolio/locator.dart';
import 'package:portfolio/routing/router.dart';
import 'package:portfolio/views/layout_template/layout_template.dart';
import 'package:portfolio/routing/route_names.dart';
import 'package:portfolio/services/navigation_service.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Developer Portfolio',
      theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Open Sans')),
      builder: (context, child) => LayoutTemplate(
        child: child,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
