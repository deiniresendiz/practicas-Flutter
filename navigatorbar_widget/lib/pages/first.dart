import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.redAccent,
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(
                Icons.alarm,
                color: Colors.white,
              ),
              new Text(
                "Alarma",
                style: new TextStyle(color: Colors.white),
                )
            ],
          ),
        ),
      ),
    );
  }
}