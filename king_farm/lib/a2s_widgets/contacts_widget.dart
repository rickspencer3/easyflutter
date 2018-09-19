import 'package:flutter/material.dart';

abstract class ContactsWidgetModel {
  List<ContactRowModel> rows;
  Color fontColor;
}

class ContactRowModel {
  String text;
  IconData iconData;
  ContactRowModel(this.text, this.iconData);
}

class ContactsWidget extends StatelessWidget {
  final ContactsWidgetModel contactsWidgetModel;

  ContactsWidget(this.contactsWidgetModel);

  @override
  Widget build(BuildContext context) {
    ListView listView = ListView(
      children: _buildContactsRows(context),
    );

    return listView;
  }

  void _onContactSelected(ContactRowModel m) {
    print(m.text);
  }

  List<Widget> _buildContactsRows(BuildContext context) {
    List<Widget> children = contactsWidgetModel.rows
        .map((e) => RaisedButton(
            color: Theme.of(context).accentColor,
            child: Row(
              children: [
                Icon(
                  e.iconData,
                  color: contactsWidgetModel.fontColor,
                ),
                Text(
                  e.text,
                  style: TextStyle(color: contactsWidgetModel.fontColor),
                )
              ],
            ),
            onPressed: () {
              _onContactSelected(e);
            }))
        .toList();

    return children;
  }
}
