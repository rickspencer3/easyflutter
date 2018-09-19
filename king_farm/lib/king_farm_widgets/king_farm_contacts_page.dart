import 'package:flutter/material.dart';
import '../a2s_widgets/contacts_widget.dart';

class KingFarmContactsModel implements ContactsWidgetModel {
  Color fontColor = Colors.white;
  List<ContactRowModel> rows = [
    ContactRowModel("Email Us", Icons.email)
  ];
}

class KingFarmContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container container = Container(
      child: ContactsWidget(KingFarmContactsModel()),
      color: Theme.of(context).accentColor,);
    return container;
  }
}