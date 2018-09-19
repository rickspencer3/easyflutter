import 'package:flutter/material.dart';
import '../a2s_widgets/home_page_widget.dart';

class KingFarmHomePageModel implements HomePageCardModel{
  Widget mainWidget = Image.asset("images/main_logo.jpg");
  String tagline = "A New Way of Living";
  Color taglineColor = Colors.white;
}

class KingFarmHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Container container = Container(
      child: HomePageCard(new KingFarmHomePageModel()),
      color: Theme.of(context).accentColor,);
    return container;
  }
}