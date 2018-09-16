import 'package:flutter/material.dart';

import './king_farm_app.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: KingFarmApp.themeData,
        home: new DefaultTabController(
            length: KingFarmApp.pages.length,
            child: new Scaffold(
                appBar: new AppBar(
                    title: new Text(KingFarmApp.title),
                    bottom: new TabBar(
                        tabs: KingFarmApp.pages
                            .map((tab) =>
                                new Tab(text: tab.title, icon: tab.icon))
                            .toList())),
                body: new TabBarView(
                    children: KingFarmApp.pages
                        .map((page) => page.pageWidget)
                        .toList()))));
  }
}
