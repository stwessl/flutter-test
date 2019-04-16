import 'package:flutter/material.dart';
import 'package:fluttertest/abstracts/AppTab.dart';
import 'package:fluttertest/stacks/Dashboard.dart';
class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState(tabs: [
    Dashboard(tabTitle: "Test"),
    Dashboard(tabTitle: "Test Tab 2"),
    Dashboard(tabTitle: "Test Tab 3")
  ]);
}

class AppState extends State<App> {
  AppState({
    this.tabs
  });
  final List<AppTab> tabs;
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _buildBody(),
      ),
      bottomNavigationBar: _buildNavigation(),
    );
  }
  
  Widget _buildBody() {
    debugPrint("Re Rendering");
    return tabs[currentTab];
  }

  void selectTab(index) {
    debugPrint(index.toString());
    setState(() {
      currentTab = index;
    });
  }

  BottomNavigationBar _buildNavigation() {
    return BottomNavigationBar(
      items: _navigationItems(),
      onTap: selectTab,
      currentIndex: currentTab,
    );
  }

  List<BottomNavigationBarItem> _navigationItems() {
    return tabs.map((AppTab item) { return item.getBottomNavigationItem();}).toList(); 
  }
}