import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyStepper(),
  ));
}

class MyStepper extends StatefulWidget {
  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;
  List<Step> mySteps = [
    new Step(
      title: new Text("Paso 1"),
      content: new Text("Aprender Flutter")
    ),
    new Step(
      title: new Text("Paso 2"),
      content: new Text("Desarrollar App")
    ),
    new Step(
      title: new Text("Paso 3"),
      content: new Text("Publicar la App")
    )
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Demo Stepper"),
        ),
        body: new Container(
          child: new Stepper(
            // nos indica el paso actual del stepper
            currentStep: this._currentStep,
            steps: mySteps,
            onStepContinue: (){
              setState(() {
                _currentStep = (_currentStep < mySteps.length -1 ? _currentStep +=1 : _currentStep = 0);
              });
            },
            onStepCancel: (){
              setState(() {
                _currentStep = ( _currentStep > 0 ? _currentStep -=1 : _currentStep = 0 );                
              });
            },
            onStepTapped: (step){
              setState(() {
                _currentStep = step;                
              });
            },
          ),
        ),
    );
  }
}