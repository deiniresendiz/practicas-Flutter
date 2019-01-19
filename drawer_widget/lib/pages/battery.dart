import 'package:flutter/material.dart';

class Battery extends StatelessWidget {
static const String routeName = "/bateria";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Baterria"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Pantalla de bateria"),
        ),
      ),
    );
  }
}