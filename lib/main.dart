
import 'package:flutter/material.dart';
import 'package:webpage/Widgets/LayoutTemplate/layout_template.dart';
import 'package:webpage/Services/locator_service.dart';
import 'package:webpage/Widgets/centered_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Von\'s Web Page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CenteredView(child: LayoutTemplate(),),
      ),
    );
  }
}
