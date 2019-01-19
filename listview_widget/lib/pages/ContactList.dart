import 'package:flutter/material.dart';
import 'package:listview_widget/model/ContractModel.dart';
import 'package:listview_widget/pages/contactitem.dart';

class ContactList extends StatelessWidget {
  final List<ContractModel> _contacts;

  ContactList(this._contacts);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: _buildContactList(),
    );
  }
  List<ContactItem> _buildContactList(){
  return _contacts
    .map((contact) => new ContactItem(contact))
    .toList();
}
}

