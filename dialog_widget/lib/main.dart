import 'package:flutter/material.dart';
void main() {
  runApp(new MaterialApp(
    home: MyDialog(),
  ));
}
class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

enum DialogAction{
  yes,
  no
}

class _MyDialogState extends State<MyDialog> {
String _inputValue = "";
  void _alertResult(DialogAction action){
    print("la selecion fue $action");
  }

  void _showAlert(String value){
    
    AlertDialog dialog = new AlertDialog(
      content: new Text(value),
      actions: <Widget>[
        new FlatButton(
          onPressed: (){_alertResult(DialogAction.yes);},
          child: new Text("si"),
        ),
        new FlatButton(
          onPressed: (){_alertResult(DialogAction.no);},
          child: new Text("no"),
        )
      ],
    );

    showDialog(context: context, child: dialog);
  }

  void _onChanged(String value){
    setState(() {
          _inputValue = value;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Alert Dialog"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Ingrese el texto"
                ),
                onChanged: (String value) {_onChanged(value);},
              ),
              new RaisedButton(
                child: new Text("Ver Alert"),
                onPressed: (){_showAlert(_inputValue);},
              )
            ],
          ),
        ),
      ),
    );
  }
}