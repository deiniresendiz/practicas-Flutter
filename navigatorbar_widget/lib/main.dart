import 'package:flutter/material.dart';
import 'package:navigatorbar_widget/pages/first.dart';
import 'package:navigatorbar_widget/pages/second.dart';
import 'package:navigatorbar_widget/pages/third.dart';

void main(){
  runApp(new MaterialApp(
    home: MtNavigator(),
  ));
}
class MtNavigator extends StatefulWidget {
  @override
  _MtNavigatorState createState() => _MtNavigatorState();
}

class _MtNavigatorState extends State<MtNavigator> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
      // TODO: implement initState
      super.initState();
      controller = new TabController(length: 3, vsync: this);
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Bottom Navigator Bar"),
      ),
      body: new TabBarView(
        children: <Widget>[
          new FirstTab(),
          new SecondTab(),
          new TrirdTab(),
        ],
        controller: controller,
      ),

      bottomNavigationBar: new Material(
        color: Colors.blueAccent,
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
            icon: new Icon(Icons.alarm),
            ),
            new Tab(
              icon: new Icon(Icons.watch_later),
            ),
            new Tab(
              icon: new Icon(Icons.airplanemode_active),
            )
          ],
          controller: controller,
        ),
      ),
    );
  }
}