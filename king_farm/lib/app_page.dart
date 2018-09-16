import 'package:flutter/material.dart';

class AppPage {
  String title;
  Widget pageWidget;
  Icon icon;

  AppPage({String title, Widget pageWidget, Icon icon}) {
    this.title = title;
    this.pageWidget = pageWidget;
    this.icon = icon;
  }

}