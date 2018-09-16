import 'package:flutter/material.dart';

import './app_page.dart';

class KingFarmApp {
  static String title = "King Farm";

  static ThemeData themeData = ThemeData(primaryColor: Color.fromARGB(255, 87, 99, 46));

  static List<AppPage> pages = [
    new AppPage(
        title: "Home",
        pageWidget: new Icon(Icons.home),
        icon: new Icon(Icons.home)),
    new AppPage(
        title: "Map",
        pageWidget: new Icon(Icons.map),
        icon: new Icon(Icons.map)),
    new AppPage(
        title: "Contact",
        pageWidget: new Icon(Icons.contact_mail),
        icon: new Icon(Icons.contact_mail))
  ];
}
