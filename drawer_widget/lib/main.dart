import 'package:flutter/material.dart';
import 'package:drawer_widget/pages/home.dart';
import 'package:drawer_widget/pages/battery.dart';
import 'package:drawer_widget/pages/setting.dart';

void main(){
  runApp(
    new MaterialApp(
      home: new Home(),
      routes: <String, WidgetBuilder>{
        Setting.routeName: (BuildContext context) => new Setting(),
        Battery.routeName: (BuildContext context) => new Battery(),
      },
    ),
  );
}

