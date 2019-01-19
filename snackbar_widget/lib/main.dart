import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MySnackbarBar(),
  ));
}

class MySnackbarBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SnackBar Demo")
      ),
      body: new Center(
        child: new MyButton(),
      ),
      );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      child: new Text("Desplegar SnackBar"),
      onPressed: (){
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text("Hola soy un SnackBar"),
          duration: new Duration(seconds: 5),
          action: new SnackBarAction(
            label: "click Aqui",
            onPressed: (){
              Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text("Hola de nuevo"),
                ));
            },
          ),
          ));
      },
    );
  }
}