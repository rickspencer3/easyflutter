import 'package:flutter/material.dart';

import './app_page.dart';
import './simple_app_home_page.dart';

class KingFarmApp {
  /// A class for defining the structure of your application.
  ///
  /// It is here that you customize your app's title, theme data, and
  /// the included pages.

  /// The name of your application. This appears in your app title page, and elsewhere.
  static String title = "King Farm";

  static Widget appTitle = Text(KingFarmApp.title);

  // enable or disable debug visualizations about your widgets
  static bool debugPaintSize = false;

  /// The theme data that will be used throughout the application.
  static ThemeData themeData = ThemeData(
      primaryColor: Color.fromARGB(255, 87, 99, 46),
      accentColor: Color.fromARGB(255, 125, 143, 67),
      );

  /// Provide a title, icon, and the actual page widget for each page
  /// of your application. They will be automatically rendered.
  static List<AppPage> pages = [
    new AppPage(
        title: "Home",
        pageWidget: SimpleAppHomePage(),
        icon: new Icon(Icons.home)),
    new AppPage(
        title: "Maps",
        pageWidget: new Icon(Icons.map),
        icon: new Icon(Icons.map)),
    new AppPage(
        title: "Contact",
        pageWidget: new Icon(Icons.contact_mail),
        icon: new Icon(Icons.contact_mail))
  ];
}
