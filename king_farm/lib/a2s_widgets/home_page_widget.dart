import 'package:flutter/material.dart';

abstract class HomePageCardModel {
  Widget mainWidget;
  String tagline;
  Color taglineColor;
}

class HomePageCard extends StatelessWidget {
  final HomePageCardModel cardModel;

  HomePageCard(this.cardModel);

  @override
  Widget build(BuildContext context) {
    Card card = Card(
        child: Column(children: [
          cardModel.mainWidget,
          Text(cardModel.tagline,
              style: new TextStyle(
                color: cardModel.taglineColor,
                fontSize: Theme.of(context).primaryTextTheme.headline.fontSize,
                fontFamily: Theme.of(context).primaryTextTheme.title.fontFamily,
              )),
        ]),
        color: Theme.of(context).accentColor,
      );
    return card;
  }
}
