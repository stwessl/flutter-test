import 'package:flutter/material.dart';
import './AnotherPage.dart';
import 'package:fluttertest/states/global.dart';
import 'package:fluttertest/abstracts/Page.dart';
class Home extends Page {
  Home({this.title = 'test', BuildContext drawerContext}) : super(drawerContext: drawerContext);
  String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
        child: Text('To Next page'),
        onPressed: () => {Navigator.of(drawerContext).push(MaterialPageRoute(
          builder: (context) => AnotherPage(),
        ))},
      ),
    );
  }
}