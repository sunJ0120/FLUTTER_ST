import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  bool enabled = false;
  String stateText = "disable";

  void changeCheck(){
    if(enabled){
      stateText = "disable";
      enabled = false;
    }else{
      stateText = "enable";
      enabled = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless Test'),
        ),
        body: Center(
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
        ),
      ),
    );
  }
}