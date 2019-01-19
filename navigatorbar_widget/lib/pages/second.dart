import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red,
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Icon(
                Icons.watch_later,
                color: Colors.yellowAccent,
              ),
              new Text("Segunda tab", style: new TextStyle(color: Colors.yellowAccent),)
            ],
          ),
        ),
      ),
    );
  }
}