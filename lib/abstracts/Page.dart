import 'package:flutter/material.dart';

abstract class Page extends StatelessWidget {
  Page({this.drawerContext}): assert(drawerContext != null);
  final BuildContext drawerContext;
}