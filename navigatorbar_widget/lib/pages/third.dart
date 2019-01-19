import 'package:flutter/material.dart';

class TrirdTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey,
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Icon( 
                Icons.airplanemode_active,
                color: Colors.green,
              ),
              new Text("Tab Tres", style: new TextStyle(color: Colors.green),)
            ],
          ),
        ),
      ),
    );
  }
}