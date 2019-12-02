import 'package:flutter/material.dart';
import 'package:webpage/Services/locator_service.dart';
import 'package:webpage/Services/navigation_service.dart';
import 'package:webpage/Services/routes.dart';

class NagivationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 200,
            child: Text('Von\'s Home Page', style: TextStyle(fontSize: 20),),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavItem('Home', homeRoute),
              SizedBox(width: 20),
              _NavItem('About Me', aboutRoute),
              SizedBox(width: 20),
              _NavItem('Skills', skillsRoute),
              SizedBox(width: 20),
              _NavItem('Contact Me', contactRoute),
              SizedBox(width: 20),
            ],
          )
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const _NavItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child: Text(title, style: TextStyle(fontSize: 17)));
  }
}
