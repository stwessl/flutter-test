import 'package:flutter/material.dart';
import 'package:fluttertest/states/global.dart';
import './App.dart';
import './screens/Teaser.dart';
import './screens/TeaserCalculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: parentNavigator,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),  
      home: Teaser(),
      routes: {
        '/app' : (context) => App(),
        '/teaserCalculator': (context) => TeaserCalculator()
      },
    );
  }
}
