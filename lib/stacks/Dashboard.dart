import 'package:flutter/material.dart';
import 'package:fluttertest/abstracts/AppTab.dart';
import 'package:fluttertest/stacks/dashboard/Home.dart';

class Dashboard extends AppTab {
  Dashboard({this.tabTitle}) : assert(tabTitle != null);
  final String tabTitle;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  BottomNavigationBarItem getBottomNavigationItem() {
    return BottomNavigationBarItem(
        icon: Icon(Icons.dashboard), title: Text(this.tabTitle));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    debugPrint(tabTitle);
    return MaterialApp(
      title: 'Dashboard Home',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Home(title: tabTitle, drawerContext: context,),

    );
  }
}
