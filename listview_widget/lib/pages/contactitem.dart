import 'package:flutter/material.dart';
import 'package:listview_widget/model/ContractModel.dart';

class ContactItem extends StatelessWidget {
  final ContractModel _contact;
  ContactItem(this._contact);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new CircleAvatar(
        child: new Text(_contact.name[0]),
      ),
      title: new Text(_contact.name),
      subtitle: new Text(_contact.email),
    );
  }
}