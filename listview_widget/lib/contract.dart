import 'package:flutter/material.dart';
import 'package:listview_widget/model/ContractModel.dart';
import 'package:listview_widget/pages/ContactList.dart';

class Contract extends StatelessWidget {

  _buildList(){
    return<ContractModel>[
        const ContractModel(name: "juan lopez", email: "juan@correo.com"),
        const ContractModel(name: "lupe lopez", email: "lupe@correo.com"),
        const ContractModel(name: "sonia lopez", email: "sonia@correo.com"),
        const ContractModel(name: "maria lopez", email: "maria@correo.com"),
        const ContractModel(name: "juan lopez", email: "juan@correo.com"),
        const ContractModel(name: "lupe lopez", email: "lupe@correo.com"),
        const ContractModel(name: "sonia lopez", email: "sonia@correo.com"),
        const ContractModel(name: "maria lopez", email: "maria@correo.com"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ContactList(_buildList()),
    );
  }
}