import 'package:flutter/material.dart';

import './king_farm_home_page.dart';

class SimpleAppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Theme.of(context).primaryTextTheme.title.fontFamily);
    Container pageBody = Container(
      color: Theme.of(context).accentColor,
      child: Card(
        child: Column(children: [
          KingFarmHomePage.mainWidget,
          Text(KingFarmHomePage.tagline,
              style: new TextStyle(
                color: KingFarmHomePage.taglineColor,
                fontSize: Theme.of(context).primaryTextTheme.headline.fontSize,
                fontFamily: Theme.of(context).primaryTextTheme.title.fontFamily,
              )),
        ]),
        color: Theme.of(context).accentColor,
      ),
    );
    return pageBody;
  }
}
