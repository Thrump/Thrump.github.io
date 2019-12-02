
import 'package:flutter/material.dart';
import 'package:webpage/Services/locator_service.dart';
import 'package:webpage/Widgets/NavigationBar/navigation_bar.dart';
import 'package:webpage/Services/navigation_service.dart';
import 'package:webpage/Services/routes.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Column(
      children: <Widget>[
        NagivationBar(),
        Expanded(
          child: Navigator(
            key: locator<NavigationService>().navigatorKey,
            initialRoute: homeRoute,
            onGenerateRoute: generateRoute,
          ),
        )
      ],
    ),
    );
  }
}
