import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Drawer getDrawer(BuildContext context){
    var header = new DrawerHeader(
      child: new Text("Ajustes"),
    );

    var info = new AboutListTile(
      child: new Text("Informacion"),
      applicationVersion: "v1.0.0",
      applicationName: "Demo Drawer",
      applicationIcon: new Icon(Icons.info),
      icon: new Icon(Icons.info),
    );
     ListView listView = new ListView(
    children: <Widget>[
      header,
      _getItem(new Icon(Icons.settings), "Configuracion", "/configuracion"),
      _getItem(new Icon(Icons.home), "Pagina Principal", "/"),
      _getItem(new Icon(Icons.battery_charging_full), "Bateria", "/bateria"),
      info,
      
    ]);
    return new Drawer(
      child: listView,
    );
  }

  ListTile _getItem(Icon icon, String descripcion, String route){
    return new  ListTile(
        leading: icon,
        title: new Text(descripcion),
        onTap: (){
          setState(() {
              Navigator.of(context).pushNamed(route);
          });
        },
    );
  }

 

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Menu"),
      ),
      drawer: getDrawer(context),

    );
  }
}