import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

// StatelessWidget -> StatefulWidget
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Test'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

// StatefulWidget -> State()
class MyWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyWidgetState();
  }
}
// State() -> build
class _MyWidgetState extends State<MyWidget>{
  bool enabled = false;
  String stateText = "disable";

  void changeCheck(){
    setState(() {
      if(enabled){
        stateText = "disable";
        enabled = false;
      }else{
        stateText = "enable";
        enabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: changeCheck, //해당하는 함수를 실행하는 것이다.
            icon: (enabled ? Icon(Icons.check_box, size: 20,) : Icon(Icons.check_box_outline_blank, size: 20,)),
            color: Colors.red,
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            child : Text('$stateText', style : TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}