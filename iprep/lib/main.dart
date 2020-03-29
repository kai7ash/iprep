import 'package:flutter/material.dart';
import 'package:studyapp/View/home-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudyApp',
      theme: ThemeData(
        primaryColor: new Color(0xff072F5F),
        accentColor: new Color(0xff1261A0),
      ),
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
    );
  }
}
