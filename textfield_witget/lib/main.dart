import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MYTexField(),
  ));
}

class MYTexField extends StatefulWidget {
  @override
  _MYTexFieldState createState() => _MYTexFieldState();
}

class _MYTexFieldState extends State<MYTexField> {
String inputValue = "";

final TextEditingController controller = new TextEditingController();

void onSubmitted(String value){
  setState(() {
      inputValue += "\n" + value;
      controller.text = "";
    });
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('EditText widget'),
        backgroundColor: Colors.redAccent,
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(hintText: "ingrese el texto aqui"),
                onSubmitted: (String value){onSubmitted(value);},
                controller: controller,

              ),
              new Text(inputValue),
            ],
          )
        ),
      ),
    );
  }
}