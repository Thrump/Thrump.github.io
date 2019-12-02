
import 'package:flutter/material.dart';
import 'package:webpage/Views/AboutMe/about_view.dart';
import 'package:webpage/Views/ContactMe/contact_view.dart';
import 'package:webpage/Views/HomePage/home_view.dart';
import 'package:webpage/Views/Skills/skills_view.dart';

const String homeRoute = "home";
const String contactRoute = "contact";
const String aboutRoute = "about";
const String skillsRoute = "skills";

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case homeRoute:
    return _getPageRoute(HomeView());
    case contactRoute:
    return _getPageRoute(ContactView());
    case aboutRoute:
    return _getPageRoute(AboutView());
    case skillsRoute:
    return _getPageRoute(SkillsView());
    default:
    return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}