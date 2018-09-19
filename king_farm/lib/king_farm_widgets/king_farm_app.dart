import 'package:flutter/material.dart';

import '../a2s_widgets/app_page.dart';

import './king_farm_home_page.dart';
import './king_farm_locations_page.dart';
import './king_farm_contacts_page.dart';

class KingFarmApp {
  ///App level customizations
  static String title = "King Farm";
  static Widget appTitle = Text(KingFarmApp.title);

  static bool debugPaintSize = false;

  static ThemeData themeData = ThemeData(
    primaryColor: Color.fromARGB(255, 87, 99, 46),
    accentColor: Color.fromARGB(255, 125, 143, 67),
  );

  /// Define App pages
  static List<AppPage> pages = [
    AppPage(
        title: "Home", 
        pageWidget: KingFarmHomePage(), 
        icon: Icon(Icons.home)),
    AppPage(
        title: "Locations",
        pageWidget: KingFarmLocationsPage(),
        icon: Icon(Icons.map)),
    AppPage(
        title: "Contact Us",
        pageWidget: KingFarmContactsPage(),
        icon: Icon(Icons.contact_mail))
  ];
}
